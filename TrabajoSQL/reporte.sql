use Consultas_DDL_feria;

select s.id, e.name as [Nombre Empresa], p.name as [Ubicacion Pabellon], p.tematica [Tematica Pabellon]
from stand s
inner join empresa e on s.empresa_id = e.id
inner join pabellon p on s.pabellon_id = p.id;

select p.name as [Nombre Producto], s.id as [Id Stand], e.name as [Nombre Empresa]
from producto p
inner join stand s on p.stand_id = s.id
inner join empresa e on p.empresa_id = e.id;

select 
	c.name as [Nombre Charla], 
	c.nombre_ponente as [Nombre Ponente], 
	coalesce(e.name, 'No Hay Empresa Patrocinadora' ) as [Nombre Empresa], 
	v.name as [Nombre Visitante]
from charla c
left join empresa e on c.empresa_id = e.id
left join visitante v on c.visitante_id = v.id;