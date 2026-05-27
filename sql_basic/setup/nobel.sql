drop table if exists nobel;
create table nobel (
    yr int,
    subject text,
    winner text);

-- data for this table are from chatgpt

INSERT INTO nobel (yr, subject, winner)
VALUES
(1901, 'Physics', 'Wilhelm Conrad Röntgen'),
(1901, 'Chemistry', 'Jacobus Henricus van ''t Hoff'),
(1901, 'Medicine', 'Emil Adolf von Behring'),
(1901, 'Literature', 'Sully Prudhomme'),
(1901, 'Peace', 'Henry Dunant'),

(1902, 'Physics', 'Hendrik Lorentz'),
(1902, 'Chemistry', 'Emil Fischer'),
(1902, 'Medicine', 'Ronald Ross'),
(1902, 'Literature', 'Theodor Mommsen'),
(1902, 'Peace', 'Élie Ducommun'),

(1903, 'Physics', 'Pierre Curie'),
(1903, 'Chemistry', 'Svante Arrhenius'),
(1903, 'Medicine', 'Niels Ryberg Finsen'),
(1903, 'Literature', 'Bjørnstjerne Bjørnson'),
(1903, 'Peace', 'Randal Cremer'),

(1908, 'Medicine', 'Ilya Mechnikov'),
(1909, 'Medicine', 'Emil Theodor Kocher'),

(2004, 'Literature', 'Elfriede Jelinek'),
(2005, 'Literature', 'Harold Pinter'),
(2006, 'Literature', 'Orhan Pamuk'),
(2007, 'Literature', 'Doris Lessing'); 
