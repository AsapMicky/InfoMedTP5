SELECT 
    m.nombre, 
    COUNT(r.id_receta) AS cantidad_recetas
FROM 
    recetas r
JOIN 
    medicamentos m ON r.id_medicamento = m.id_medicamento
GROUP BY 
    m.id_medicamento, m.nombre
ORDER BY 
    cantidad_recetas DESC
LIMIT 1;
