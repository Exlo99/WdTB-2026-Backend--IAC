-- Dane startowe aplikacji. Tabele tworzy Hibernate z encji, a ten plik Spring Boot uruchamia zaraz potem.
-- LAB 01: dopiszcie tu konta wszystkich osób z zespołu (reguła R1.03).
-- LAB 02: dopiszcie dane do swoich tabel (kolejność: najpierw tabele, na które wskazują klucze obce).
insert into user_account (email, display_name, role, created_at) values
    ('adrian.korycinski@student.wroclaw.merito.pl',       'Adrian', 'USER', current_timestamp),
    ('kontotest@student.wroclaw.merito.pl',       'Konto', 'USER', current_timestamp),
    ('ariel.jarosz@student.merito.wroclaw.pl',       'Ariel', 'USER',   current_timestamp);

-- LAB 01: Wasze konta (zmieńcie na swoje dane, rola USER).
-- insert into user_account (email, display_name, role, created_at) values
--     ('imie.nazwisko@student.merito.pl', 'Imię', 'USER', current_timestamp);

-- ===== LAB 02 · user_profile =====
insert into user_profile
(username, display_name, email, bio, created_at,
 active, street, city, postal_code)
values
    ('alex_dev', 'Alex Johnson', 'alex@example.com',
     'Software development enthusiast',
     '2026-10-20 10:00:00', true,
     'Ruska 12', 'Wroclaw', '50-079'),

    ('maria_codes', 'Maria Smith', 'maria@example.com',
     'Sharing my daily life',
     '2026-10-21 12:30:00', true,
     'Swidnicka 3', 'Wroclaw', '50-066'),

    ('tom_travels', 'Tom Brown', 'tom@example.com',
     'Travel and photography',
     '2026-10-22 15:00:00', true,
     null, null, null);


-- ===== LAB 02 · social_post =====
insert into social_post
(content, status, created_at, likes_count, comment_count)
values
    ('Hello SocialAPI! My first post.',
     'PUBLISHED', '2026-10-22 09:00:00', 12, 3),

    ('Working on a new project today.',
     'PUBLISHED', '2026-10-23 11:30:00', 7, 2),

    ('My draft post for later.',
     'DRAFT', '2026-10-24 08:00:00', 0, 0);


-- ===== LAB 02 · reaction =====
insert into reaction
(username, post_id, type, created_at, active)
values
    ('maria_codes', 1, 'LIKE',
     '2026-10-22 09:15:00', true),

    ('tom_travels', 1, 'LOVE',
     '2026-10-22 09:20:00', true),

    ('alex_dev', 2, 'LAUGH',
     '2026-10-23 12:00:00', true);