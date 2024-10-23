-- Corregir las variaciones de Buenos Aires, incluyendo espacios
UPDATE Pacientes
SET ciudad = 'Buenos Aires'
WHERE TRIM(LOWER(ciudad)) IN ('buenos aires', 'buenos aiers', 'bs aires');

-- Corregir el error en Mendoza, incluyendo espacios
UPDATE Pacientes
SET ciudad = 'Mendoza'
WHERE TRIM(LOWER(ciudad)) = 'mendzoa';

-- Corregir el error en Córdoba, incluyendo espacios y la variación sin tilde
UPDATE Pacientes
SET ciudad = 'Córdoba'
WHERE TRIM(LOWER(ciudad)) IN ('córodba', 'cordoba');
