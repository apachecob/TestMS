-- public.contactos definition

-- Drop table

-- DROP TABLE public.contactos;

CREATE TABLE public.contactos (
	id_persona int4 NULL,
	nombre varchar NULL,
	fono int4 NULL,
	celular int4 NULL,
	correo varchar NULL
);
CREATE INDEX contactos_id_persona_idx ON public.contactos USING btree (id_persona);

-- public.persona definition

-- Drop table

-- DROP TABLE public.persona;

CREATE TABLE public.persona (
	id_persona int4 NULL,
	run_persona int4 NULL,
	dv_persona varchar NULL,
	CONSTRAINT persona_unique UNIQUE (id_persona),
	CONSTRAINT persona_persona_fk FOREIGN KEY (id_persona) REFERENCES public.persona(id_persona)
);
CREATE UNIQUE INDEX persona_id_persona_idx ON public.persona USING btree (id_persona);

INSERT INTO public.persona
(id_persona, run_persona, dv_persona)
VALUES(1, 1, '9');

INSERT INTO public.contactos
(id_persona, nombre, fono, celular, correo)
VALUES(1, 'Perico', 12234, 13221, 'perico@perico.cl');
