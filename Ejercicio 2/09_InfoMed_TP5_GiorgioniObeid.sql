SELECT 
    m.nombre, 
    COUNT(r.id_receta) AS cantidad_recetas
FROM 
    medicos m
JOIN 
    recetas r ON m.id_medico = r.id_medico
GROUP BY 
    m.nombre
