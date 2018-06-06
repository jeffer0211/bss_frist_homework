CREATE TABLE PERSONA
(
	IDPERSONA INTEGER NOT NULL DEFAULT NEXTVAL('PERSONA'::REGCLASS), 
	NOMBRE VARCHAR(30),
	APELLIDO VARCHAR(30),
	CEDULA TEXT,
	TELEFONO TEXT,
	CONSTRAINT PERSONA_PKEY PRIMARY KEY (IDPERSONA)
)
**************************************************************
INSERT INTO public.persona(
	idpersona, nombre, apellido, cedula, telefono)
	VALUES (1,'JUAN', 'CADENA', 1730928297, 0946784324),
			(2,'VERTA', 'BOADA',0956783427, 0984625462),
			(3, 'ALAN', 'CARDENAS', 039995573,0936463246),
			(4, 'VANLENTINA', 'VIGAGRAN', 1156383948, 0936635254);
	
************************************************************************
SELECT idpersona, nombre, apellido, cedula, telefono
	FROM public.persona;
*****************************************************************
ALTER TABLE PERSONA ADD CIUDAD VARCHAR(20)

SELECT idpersona, nombre, apellido, cedula, telefono, ciudad
	FROM public.persona;
********************************************************************
ALTER TABLE PERSONA DROP CCOLUMN CIUDAD VARCHAR(20)
SELECT idpersona, nombre, apellido, cedula, telefono
	FROM public.persona;