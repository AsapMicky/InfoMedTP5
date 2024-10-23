SELECT 
    p.nombre, 
    COUNT(r.id_receta) AS cantidad_recetas
FROM 
    pacientes p
LEFT JOIN 
    recetas r ON p.id_paciente = r.id_paciente
GROUP BY 
    p.id_paciente, p.nombre
ORDER BY 
    p.nombre;
