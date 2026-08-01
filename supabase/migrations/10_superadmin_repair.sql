-- ============================================================
-- MR.RIDER · Migration 10 · SUPERADMIN REPAIR
-- Depends on: 07, 08
--
-- Fixes the "Members door — not the club admin" case: if the
-- admin@mrrider.lk auth user was created BEFORE migrations 07/08
-- ran, it has no profiles row (the auto-profile trigger didn't
-- exist yet), so migration 08's UPDATE-only backfill couldn't
-- promote it. This creates the profile row if missing and
-- promotes it either way. Also backfills profile rows for any
-- other users created before the trigger existed.
-- ============================================================

-- Backfill profile rows for ALL auth users that predate the trigger.
insert into public.profiles (id, full_name, email, is_admin, status)
select
  u.id,
  coalesce(u.raw_user_meta_data ->> 'full_name', ''),
  coalesce(u.email, ''),
  coalesce(u.email, '') = 'admin@mrrider.lk',
  case when coalesce(u.email, '') = 'admin@mrrider.lk'
       then 'active'::public.membership_status
       else 'pending'::public.membership_status end
from auth.users u
on conflict (id) do nothing;

-- Promote the superadmin regardless of when the row was created.
update public.profiles p
set is_admin = true,
    status   = 'active',
    email    = u.email
from auth.users u
where p.id = u.id
  and u.email = 'admin@mrrider.lk';
