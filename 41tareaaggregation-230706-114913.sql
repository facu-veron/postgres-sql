
-- 1. Cuantos usuarios tenemos con cuentas @google.com
-- Tip: count, like

select * from users;
select count(*) from users WHERE email LIKE('%@google.com%');

-- 2. De qué países son los usuarios con cuentas de @google.com
-- Tip: distinct
select * from users;

select DISTINCT country from users WHERE email LIKE('%@google.com%');
-- 3. Cuantos usuarios hay por país (country)
-- Tip: Group by
select * from users;

select count(*), country from users GROUP by country;

-- 4. Listado de direcciones IP de todos los usuarios de Iceland
-- Campos requeridos first_name, last_name, country, last_connection

select * from users;

select first_name, last_name, country, last_connection FROM users WHERE country LIKE('%Iceland%');

-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
-- que incia en 112.XXX.XXX.XXX

select * from users;

select first_name, last_name, country, last_connection FROM users WHERE country LIKE('%Iceland%') and last_connection LIKE('%112.%');


-- 6. Listado de usuarios de Iceland, tienen dirección IP
-- que inicia en 112 ó 28 ó 188
-- Tip: Agrupar condiciones entre paréntesis 



-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
-- y luego el first_name ascendentemente también



-- 8. Listado de personas cuyo país está en este listado
-- ('Mexico', 'Honduras', 'Costa Rica')
-- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
-- Tip: Investigar IN
-- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)



-- 9. Del query anterior, cuente cuántas personas hay por país
-- Ordene los resultados por País asc
