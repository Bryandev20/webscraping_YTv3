CREATE TABLE crudo_video(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)

SELECT * FROM crudo_video


CREATE TABLE fact_video(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais_id int references dim_pais(pais_id),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int references dim_categoria(categoria_id)
)

CREATE TABLE dim_categoria(
categoria_id int PRIMARY KEY,
categoria varchar(100)
)

CREATE TABLE dim_pais(
pais_id int  PRIMARY KEY,
pais varchar(100)
)


INSERT INTO dim_pais VALUES
(1, 'Perú'),
(2, 'Chile'),
(3, 'Argentina'),
(4, 'Colombia'),
(5, 'Brasil'),
(6, 'Ecuador');

INSERT INTO dim_categoria VALUES
(1, 'Cine y Animación'),
(2, 'Autos y Vehículos'),
(10, 'Música'),
(15, 'Mascotas y Animales'),
(17, 'Deportes'),
(20, 'Gaming'),
(22, 'Personas y Blogs'),
(23, 'Comedia'),
(24, 'Entretenimiento'),
(25, 'Noticias y Política'),
(26, 'Cómo hacer y Estilo'),
(27, 'Educación'),
(28, 'Ciencia y Tecnología');

--Proceso de inserccion de los datos crudo a la nueva tabla 
INSERT INTO fact_video(
  video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id
) SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
 FROM crudo_video AS c
 JOIN dim_pais AS p
 ON c.pais = p.pais;

select * from fact_video
-----------------------------------------------
CREATE TABLE crudo_video2(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)
select * from crudo_video2
--Proceso de inserccion de los datos crudo 2 a la nueva tabla fact

INSERT INTO fact_video(
  video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id
)SELECT     
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
 FROM crudo_video2 as c
 JOIN dim_pais AS p
 ON c.pais = p.pais;
 ------------------------------------base 3 
 CREATE TABLE crudo_video3(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)
-- insert 
INSERT INTO fact_video(
  video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id)
  SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
  FROM crudo_video3 as c
  JOIN dim_pais AS p
  ON c.pais = p.pais;

SELECT * FROM fact_video
------------------------------------base 4
 CREATE TABLE crudo_video4(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)
-- insert 
INSERT INTO fact_video(
  video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id)
  SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
  FROM crudo_video4 as c
  JOIN dim_pais AS p
  ON c.pais = p.pais;

SELECT * FROM fact_video

------------------------------------base 5
 CREATE TABLE crudo_video5(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)
-- insert 
INSERT INTO fact_video(
  video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id)
  SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
  FROM crudo_video5 as c
  JOIN dim_pais AS p
  ON c.pais = p.pais;

SELECT * FROM fact_video
------------------------------------base 6 
 CREATE TABLE crudo_video6(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)
-- insert 
INSERT INTO fact_video(
  video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id)
  SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
  FROM crudo_video6 as c
  JOIN dim_pais AS p
  ON c.pais = p.pais;

SELECT * FROM fact_video
------------------------------------base 7
 CREATE TABLE crudo_video7(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)

INSERT INTO fact_video (
 video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id)
  SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
  FROM crudo_video7 as c
  JOIN dim_pais AS p
  ON c.pais = p.pais;
  
SELECT * FROM fact_video



--conteo de categoria por canales
SELECT f.canal, count( f.categoria_id) AS CONTEO_CANAL,cat.categoria
from fact_video as f
join dim_categoria as cat
ON f.categoria_id = cat.categoria_id
group by f.canal,cat.categoria
ORDER BY CONTEO_CANAL desc

------------------------------------base 8
 CREATE TABLE crudo_video8(
video_id varchar(255),
titulo varchar(500),
canal varchar(255),
pais varchar(50),
fecha_publicacion date,
fecha_snapshot date,
vistas int,
likes int,
comentarios int,
duracion_min float,
categoria_id int
)

INSERT INTO fact_video (
 video_id,
  titulo,
  canal,
  pais_id,
  fecha_publicacion,
  fecha_snapshot,
  vistas,
  likes,
  comentarios,
  duracion_min,
  categoria_id)
  SELECT 
    c.video_id,
    c.titulo,
    c.canal,
    p.pais_id,
    c.fecha_publicacion,
    c.fecha_snapshot,
    c.vistas,
    c.likes,
    c.comentarios,
    c.duracion_min,
    c.categoria_id 
  FROM crudo_video8 as c
  JOIN dim_pais AS p
  ON c.pais = p.pais;
  
SELECT * FROM fact_video



