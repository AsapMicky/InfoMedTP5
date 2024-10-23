SELECT TRIM(LOWER(ciudad)) AS ciudad_normalizada, COUNT(*) AS cantidad_pacientes
FROM Pacientes
GROUP BY TRIM(LOWER(ciudad));
