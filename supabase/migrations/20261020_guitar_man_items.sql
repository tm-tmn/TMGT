create table if not exists public.gm_items (
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  id text not null,
  kind text not null check (kind in ('song','playlist','guitar','device','tsl')),
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, id)
);
alter table public.gm_items enable row level security;
create policy "gm_items select own" on public.gm_items for select to authenticated using ((select auth.uid()) = user_id);
create policy "gm_items insert own" on public.gm_items for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "gm_items update own" on public.gm_items for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "gm_items delete own" on public.gm_items for delete to authenticated using ((select auth.uid()) = user_id);
create index if not exists gm_items_kind_idx on public.gm_items (user_id, kind);
alter publication supabase_realtime add table public.gm_items;
