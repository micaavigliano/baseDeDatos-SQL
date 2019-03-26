use bibliotecaTP

select * from libros
select * from genero
select * from editorial
select * from autor

----Punto 1-----

select libros.nombre, genero.descripcion, autor.nombreAutor, autor.apellido, editorial.nombreEditorial 
from libros
inner join genero
on libros.generoid = genero.generoid
inner join autor
on libros.autorid = autor.autorid
inner join editorial
on libros.editorialid = editorial.editorialid

---Punto 2----

select libros.nombre, genero.descripcion, autor.nombreAutor, autor.apellido, editorial.nombreEditorial 
from libros
inner join genero
on libros.generoid = genero.generoid
inner join autor
on libros.autorid = autor.autorid
inner join editorial
on libros.editorialid = editorial.editorialid
where genero.descripcion = 'fantasia'

---Punto 3----

select libros.nombre, genero.descripcion, autor.nombreAutor, autor.apellido, editorial.nombreEditorial 
from libros
inner join genero
on libros.generoid = genero.generoid
inner join autor
on libros.autorid = autor.autorid
inner join editorial
on libros.editorialid = editorial.editorialid
where libros.nombre like '%anillos%'

---Punto 4---

select libros.nombre, genero.descripcion, autor.nombreAutor, autor.apellido, editorial.nombreEditorial 
from libros
inner join genero
on libros.generoid = genero.generoid
inner join autor
on libros.autorid = autor.autorid
inner join editorial
on libros.editorialid = editorial.editorialid
where editorial.nombreEditorial = 'Minotauro'

---Punto 5---

select libros.nombre, genero.descripcion, autor.nombreAutor, autor.apellido, editorial.nombreEditorial 
from libros
inner join genero
on libros.generoid = genero.generoid
inner join autor
on libros.autorid = autor.autorid
inner join editorial
on libros.editorialid = editorial.editorialid
where autor.nombreAutor = 'Tolkien'

--Punto 6---

select libros.nombre, genero.descripcion, autor.nombreAutor, autor.apellido, editorial.nombreEditorial 
from libros
inner join genero
on libros.generoid = genero.generoid
inner join autor
on libros.autorid = autor.autorid
inner join editorial
on libros.editorialid = editorial.editorialid
order by libros.nombre, editorial.nombreEditorial
