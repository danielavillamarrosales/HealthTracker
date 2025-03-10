SELECT * FROM information_schema.tables WHERE table_schema = 'public'

SELECT * FROM usuarios;
SELECT * FROM historial_medico;

DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS historial_medico;
DROP TABLE IF EXISTS medicos;

CREATE TABLE medicos(
	id_medico SERIAL NOT NULL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	correo VARCHAR(50) NOT NULL,
	contrasena VARCHAR NOT NULL,
	telefono VARCHAR(50)
);

CREATE TABLE historial_medico(
	id_historial SERIAL NOT NULL PRIMARY KEY,
	tipo_de_sangre VARCHAR(50) NOT NULL,
	padecimientos VARCHAR(50),
	cirugias VARCHAR(50),
	enfermedades_hereditarias VARCHAR(50)
);

CREATE TABLE usuarios(
	id_usuario SERIAL NOT NULL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	correo VARCHAR(50) NOT NULL,
	contrasena VARCHAR NOT NULL,
	telefono VARCHAR(50),
	estado VARCHAR(50),
	foto VARCHAR(250),
	medico INT NOT NULL REFERENCES medicos(id_medico),
	historial_medico INT NOT NULL REFERENCES historial_medico(id_historial)
);

INSERT INTO medicos VALUES
	(default, 'Dr. Simi', 'simi@gmail.com', crypt('123', gen_salt('bf')), '+502 8934-7225'),
	(default, 'Dr. House', 'house@gmail.com', crypt('321', gen_salt('bf')), '+502 2547-9413');

INSERT INTO historial_medico VALUES 
	(default, 'A+', 'Padecimeintos random', 'Apendicectomía', 'Alguna que otra'),
	(default, 'B+', 'Padecimeintos...', 'N/A', 'N/A'), 
	(default, 'A-', 'N/A', '', ''),
	(default, 'O+', 'Alergias a la kriptonita', 'Cirugías random', 'No se'), 
	(default, 'AB+', 'Ejemplo de padecimientos', 'N/A', 'Puede ser');

INSERT INTO usuarios VALUES 
	(default, 'Luisa Hernandez', 'luisa@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://farm4.static.flickr.com/3424/3729244504_07ae21e6a9_o.png', 1,1),
	(default, 'Fiona de Shrek', 'fiona@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://img.women.com/images/images/000/027/550/large/Shrek_Fiona_Hero_Image.png.jpg?1470702831', 1,2),
	(default, 'Patricia Estrella', 'paty@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/736x/17/91/b5/1791b5696a8a7dace26ad529d5244c92.jpg', 1, 3),
	(default, 'Otra Paciente', 'otra@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://i.pinimg.com/originals/57/2b/9d/572b9d13ec085687b53b7daec5b82996.jpg', 1,4),
	(default, 'Paciente Random', 'random@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://i.ytimg.com/vi/-GVDwdR8jSI/maxresdefault.jpg', 1,5),
	(default, 'Ejemplo Paciente', 'ejemplo@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/originals/1d/dd/04/1ddd0455e8e059c2f1081730baabf799.png', 1, 1),
	(default, 'Luisa Hernandez', 'luisa@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://farm4.static.flickr.com/3424/3729244504_07ae21e6a9_o.png', 1,1),
	(default, 'Fiona de Shrek', 'fiona@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://img.women.com/images/images/000/027/550/large/Shrek_Fiona_Hero_Image.png.jpg?1470702831', 1,2),
	(default, 'Patricia Estrella', 'paty@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/736x/17/91/b5/1791b5696a8a7dace26ad529d5244c92.jpg', 1, 3),
	(default, 'Otra Paciente', 'otra@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://i.pinimg.com/originals/57/2b/9d/572b9d13ec085687b53b7daec5b82996.jpg', 1,4),
	(default, 'Paciente Random', 'random@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://i.ytimg.com/vi/-GVDwdR8jSI/maxresdefault.jpg', 1,5),
	(default, 'Ejemplo Paciente', 'ejemplo@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/originals/1d/dd/04/1ddd0455e8e059c2f1081730baabf799.png', 1, 1),

	(default, 'Luisa Hernandez2', 'luisa@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://farm4.static.flickr.com/3424/3729244504_07ae21e6a9_o.png', 2,1),
	(default, 'Fiona de Shrek2', 'fiona@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://img.women.com/images/images/000/027/550/large/Shrek_Fiona_Hero_Image.png.jpg?1470702831', 2,2),
	(default, 'Patricia Estrella2', 'paty@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/736x/17/91/b5/1791b5696a8a7dace26ad529d5244c92.jpg', 2, 3),
	(default, 'Otra Paciente2', 'otra@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://i.pinimg.com/originals/57/2b/9d/572b9d13ec085687b53b7daec5b82996.jpg', 2,4),
	(default, 'Paciente Random2', 'random@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://i.ytimg.com/vi/-GVDwdR8jSI/maxresdefault.jpg', 1,5),
	(default, 'Ejemplo Paciente2', 'ejemplo@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/originals/1d/dd/04/1ddd0455e8e059c2f1081730baabf799.png', 2, 1),
	(default, 'Luisa Hernandez2', 'luisa@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://farm4.static.flickr.com/3424/3729244504_07ae21e6a9_o.png', 1,1),
	(default, 'Fiona de Shrek2', 'fiona@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://img.women.com/images/images/000/027/550/large/Shrek_Fiona_Hero_Image.png.jpg?1470702831', 2,2),
	(default, 'Patricia Estrella2', 'paty@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/736x/17/91/b5/1791b5696a8a7dace26ad529d5244c92.jpg', 2, 3),
	(default, 'Otra Paciente2', 'otra@gmail.com', crypt('123', gen_salt('bf')), '502 1234-5678', '8 meses de embarazo sin complicaciones', 'https://i.pinimg.com/originals/57/2b/9d/572b9d13ec085687b53b7daec5b82996.jpg', 2,4),
	(default, 'Paciente Random2', 'random@gmail.com', crypt('456', gen_salt('bf')), '502 32165498',  '7 meses de embarazo con diabetes', 'https://i.ytimg.com/vi/-GVDwdR8jSI/maxresdefault.jpg', 2,5),
	(default, 'Ejemplo Paciente2', 'ejemplo@gmail.com', crypt('789', gen_salt('bf')), '502 14725836', '9 meses de embarazo con retraso de fecha', 'https://i.pinimg.com/originals/1d/dd/04/1ddd0455e8e059c2f1081730baabf799.png', 2, 1);

SELECT * FROM usuarios u INNER JOIN historial_medico hm ON u.historial_medico = hm.id_historial WHERE u.medico = 1;
create table sintomas (dolor_cabeza float not null, molestia_espalda_baja float not null,
diarrea float not null, sangrados float not null, calambres float not null,  presion float,
niveles_azucar float, peso float, fecha date not null )


alter table sintomas add id_usuario int, add foreign key (id_usuario) references usuarios(id_usuario)


