SELECT 
    m.nombre AS nombre_medico, 
    COUNT(DISTINCT c.id_paciente) AS total_pacientes
FROM 
    medicos m
JOIN 
    consultas c ON m.id_medico = c.id_medico
GROUP BY 
    m.id_medico, m.nombre
ORDER BY 
    total_pacientes DESC;
