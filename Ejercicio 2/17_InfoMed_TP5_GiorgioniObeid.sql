SELECT 
    m.nombre AS nombre_medicamento,
    COUNT(r.id_receta) AS total_recetas,
    med.nombre AS nombre_medico,
    p.nombre AS nombre_paciente
FROM 
    recetas r
JOIN 
    medicamentos m ON r.id_medicamento = m.id_medicamento
JOIN 
    medicos med ON r.id_medico = med.id_medico
JOIN 
    pacientes p ON r.id_paciente = p.id_paciente
GROUP BY 
    m.id_medicamento, m.nombre, med.id_medico, med.nombre, p.id_paciente, p.nombre
ORDER BY 
    total_recetas DESC;
