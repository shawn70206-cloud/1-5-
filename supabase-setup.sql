create table if not exists public.life_tree_state (
    id text primary key check (id = 'main'),
    tree_html text not null,
    updated_at timestamptz not null default now()
);

alter table public.life_tree_state enable row level security;

revoke all on public.life_tree_state from anon, public;
grant select, insert, update on public.life_tree_state to authenticated;

drop policy if exists "Authenticated users can read life tree" on public.life_tree_state;
create policy "Authenticated users can read life tree"
    on public.life_tree_state for select to authenticated
    using (true);

drop policy if exists "Authenticated users can create life tree" on public.life_tree_state;
create policy "Authenticated users can create life tree"
    on public.life_tree_state for insert to authenticated
    with check (true);

drop policy if exists "Authenticated users can update life tree" on public.life_tree_state;
create policy "Authenticated users can update life tree"
    on public.life_tree_state for update to authenticated
    using (true)
    with check (true);
