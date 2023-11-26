-- Seed users
-- User 1: Khatnaa, 99094365, Password1
-- User 2: Batjin, 99104703, Password2
INSERT INTO auth.users VALUES ('00000000-0000-0000-0000-000000000000', '3ff9c5f8-dbeb-488e-8b23-d97384a20118', 'authenticated', 'authenticated', NULL, '$2a$10$MAXunvnEi3GedD9amsAN6en9QyDRfjOfwS2r48ExN7divOqxYCrJO', NULL, NULL, '', NULL, '', NULL, '', '', NULL, '2023-11-15 05:04:59.486288+00', '{"provider": "phone", "providers": ["phone"]}', '{"full_name": "Khatnaa", "phone_number": "99094365"}', NULL, '2023-11-15 05:04:59.470834+00', '2023-11-15 05:04:59.490245+00', '99094365', '2023-11-15 05:04:59.484827+00', '', '', NULL, DEFAULT, '', 0, NULL, '', NULL, false, NULL);
INSERT INTO auth.users VALUES ('00000000-0000-0000-0000-000000000000', '8c03f4d5-2ce9-4d34-bb73-26a55da6889e', 'authenticated', 'authenticated', NULL, '$2a$10$jthKSkvdmLK74AR00RR8b.V6au1UXh8/XxKKhlS4VT7lWLVL5KPMm', NULL, NULL, '', NULL, '', NULL, '', '', NULL, '2023-11-15 05:06:19.10494+00', '{"provider": "phone", "providers": ["phone"]}', '{"full_name": "Batjin", "phone_number": "99104703"}', NULL, '2023-11-15 05:06:19.096401+00', '2023-11-15 05:06:19.106587+00', '99104703', '2023-11-15 05:06:19.103141+00', '', '', NULL, DEFAULT, '', 0, NULL, '', NULL, false, NULL);
INSERT INTO auth.identities VALUES ('3ff9c5f8-dbeb-488e-8b23-d97384a20118', '3ff9c5f8-dbeb-488e-8b23-d97384a20118', '{"sub": "3ff9c5f8-dbeb-488e-8b23-d97384a20118"}', 'phone', '2023-11-15 05:04:59.482791+00', '2023-11-15 05:04:59.482807+00', '2023-11-15 05:04:59.482807+00', DEFAULT);
INSERT INTO auth.identities VALUES ('8c03f4d5-2ce9-4d34-bb73-26a55da6889e', '8c03f4d5-2ce9-4d34-bb73-26a55da6889e', '{"sub": "8c03f4d5-2ce9-4d34-bb73-26a55da6889e"}', 'phone', '2023-11-15 05:06:19.101905+00', '2023-11-15 05:06:19.101936+00', '2023-11-15 05:06:19.101936+00', DEFAULT);

-- Seed locations
INSERT INTO public.locations VALUES ('1e8622c9-3eca-4dcd-88c5-9d558e28973e', 'Дархан');
INSERT INTO public.locations VALUES ('d38f40ba-9061-4da6-8db0-5324c6bef0ec', 'Улаанбаатар');

-- Vehicles
INSERT INTO public.vehicles VALUES ('42fde39b-f0fa-4599-8d47-9f2922214476', '3ff9c5f8-dbeb-488e-8b23-d97384a20118', '6321УАС', 'Toyota Camry');
INSERT INTO public.vehicles VALUES ('5a1282af-f3ab-41c0-b13c-a9a8a372a3ed', '3ff9c5f8-dbeb-488e-8b23-d97384a20118', '1111УБА', 'Lamborghini Aventador');
INSERT INTO public.vehicles VALUES ('cc72ab21-b9c2-4441-ad23-199f71b184c8', '8c03f4d5-2ce9-4d34-bb73-26a55da6889e', '2222УБӨ', 'Lexus LX600');


-- Posts
INSERT INTO public.driver_posts VALUES ('7e9134bb-3326-4256-95b7-0ee4a89c9d12', '3ff9c5f8-dbeb-488e-8b23-d97384a20118', '1e8622c9-3eca-4dcd-88c5-9d558e28973e', 'd38f40ba-9061-4da6-8db0-5324c6bef0ec', 4, '2023-11-30', '12:00:00', 20000, '42fde39b-f0fa-4599-8d47-9f2922214476', 'Tsagtaa hudulnu', '2023-11-26 15:54:37.353959+00');
INSERT INTO public.driver_posts VALUES ('cae8a725-16cb-4d20-a6e7-514b81046428', '8c03f4d5-2ce9-4d34-bb73-26a55da6889e', 'd38f40ba-9061-4da6-8db0-5324c6bef0ec', '1e8622c9-3eca-4dcd-88c5-9d558e28973e', 5, '2023-12-04', '20:00:00', 40000, 'cc72ab21-b9c2-4441-ad23-199f71b184c8', NULL, '2023-11-26 15:55:01.85933+00');
