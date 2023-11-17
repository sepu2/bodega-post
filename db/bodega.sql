Create database bodega;
use bodega; 
Create Table Productos
(Codigo int primary key, Nombre varchar(255) not null, Precio decimal(10,2) not null, cantidad int not null, fecha_vencimiento date not null
);
Select * From Productos;

Create Table Ingresos 
(Ingreso_id int primary key auto_increment, codigo_producto int, cantidad_ingresada int, fehca_ingreso timestamp default current_timestamp,
 foreign key (codigo_producto) references productos(codigo)
);
Select * From Ingresos;

Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (1, 'Jabon Rey', 12.00, 12, '2023-10-28'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (2, 'Jabon Coco', 16.00, 12, '2023-10-28'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (3, 'Pasta', 22.00, 24, '2023-11-14'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (4, 'Frijol', 32.00, 16, '2023-11-14'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (5, 'Lenteja', 32.00, 32, '2023-11-14'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (6, 'Garbanzo', 32.00, 24, '2023-11-14'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (7, 'Arroz', 42.00, 36, '2023-10-16'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (8, 'Panela', 42.00, 50, '2023-10-16'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (9, 'Azucar', 42.00, 32, '2023-10-16'
);
Insert into Productos (Codigo, Nombre, Precio, Cantidad, fecha_vencimiento)
Values (10, 'Sal', 42.00, 64, '2023-10-16'
);

Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (1, 100
);

Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (2, 115
);
Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (3, 50
);
Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (4, 64
);
Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (5, 80
);
Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (6, 120
);
Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (7, 120
);
 Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (8, 100
); 
Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (9, 90
);
 Insert into Ingresos (codigo_producto, cantidad_ingresada)
Values (10, 105
);

