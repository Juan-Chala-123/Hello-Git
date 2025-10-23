use Consultas_DDL_feria;

insert into feria (ciudad, name, fecha_inicio, fecha_fin) values
('Neiva', 'Feria Internacionalde Tecnología', '2025-01-01', '2025-02-01');

insert into pabellon (feria_id, name, stand_limit, tematica) values
(1, 'Norte', 30, 'Machine Learning'),
(1, 'Sur', 30, 'Deep Learning'),
(1, 'Occidental', 30, 'Hardware'),
(1, 'Oriental', 30, 'Software'),
(1, 'Norte', 30, 'Informatica'),
(1, 'Sur', 30, 'Seguridad'),
(1, 'Norte', 30, 'Ciberseguridad'),
(1, 'Occidental', 30, 'Inteligencia Artificial'),
(1, 'Oriental', 30, 'Mecanografia'),
(1, 'Norte', 30, 'Deep Learning');

insert into empresa (name) values
('Punto Net'),
('Microsoft'),
('Apple'),
('Amazon'),
('Android'),
('Google'),
('Meta'),
('Oracle'),
('Adobe'),
('Internetsss');

insert into stand (empresa_id, pabellon_id) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

insert into producto (name, stand_id, empresa_id) values
('Celular Anti-Agua', 1, 1),
('Antivirus', 2, 2),
('Servicios Nube', 4, 4),
('Android 16', 5, 5),
('Iphone 18 Pro Max', 3, 3),
('Meta AI', 7, 7),
('Gemini AI', 6, 6),
('Oracle Cloud', 8, 8),
('Adobe Photoshop', 9, 9),
('PC Todo en uno', 10, 10);

insert into responsable (name, producto_id) values
('Juan', 1),
('Diego', 2),
('Pedro', 3),
('Alfredo', 4),
('Yina', 5),
('Fernando', 6),
('Kelly', 7),
('Cristian', 8),
('Mina', 9),
('Ana', 10);

insert into visitante (name, email, tipo_registro, tipo_entrada) values
('Juan', 'juan@gmail.com', 'En Linea', 'VIP'),
('Fernando', 'Fernando@hotmail.com', 'Presencial', 'Estudiante'),
('kate', 'kate@gmail.com', 'En Linea', 'General'),
('Sanchez', 'sanches@gmail.com', 'En Linea', 'VIP'),
('Juan Cortez', 'cortez@hotmail.com', 'Presencial', 'VIP'),
('Brayan', 'Brayan@gmail.com', 'En Linea', 'General'),
('Lupe', 'Lupe@hotmail.com', 'Presencial', 'Estudiante'),
('Naoriby', 'nairoby@gmail.com', 'En Linea', 'VIP'),
('Isabella', 'bella@gmail.com', 'Presencial', 'General'),
('Luciana', 'luciana@gmail.com', 'Presencial', 'Estudiante');

insert into charla (name, nombre_ponente, empresa_id, visitante_id) values
('AI', 'Carlos', 1, 1),
('Automatizacion', 'Ceballos', 2, 2),
('Ciberseguriddad', 'Daniel', 3, 3),
('Machine Learning', 'Jhonatan', 4, 2),
('Deep Learning', 'Luis', null, 4),
('Google Dorking', 'Laura', 6, 7),
('OSINT', 'Sofia', null, 8),
('Cloud', 'Mendi', 8, 7),
('Seguridad', 'Karol', null, 8),
('Hardware', 'Jairo', 10, 10);