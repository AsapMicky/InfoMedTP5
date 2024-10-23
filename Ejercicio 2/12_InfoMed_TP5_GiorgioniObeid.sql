SELECT 
    m.nombre
FROM 
    recetas p
JOIN 
    medicamentos m ON p.id_medicamento = m.id_medicamento
WHERE 
    p.id_medico = 2
GROUP BY 
    m.nombre
HAVING 
    COUNT(*) > 1;
