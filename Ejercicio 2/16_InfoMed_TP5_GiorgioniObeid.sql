SELECT 
    m.nombre AS nombre_medico, 
    p.nombre AS nombre_paciente, 
    COUNT(c.id_consulta) AS total_consultas
FROM 
    medicos m
JOIN 
    consultas c ON m.id_medico = c.id_medico
JOIN 
    pacientes p ON c.id_paciente = p.id_paciente
GROUP BY 
    m.id_medico, m.nombre, p.id_paciente, p.nombre
ORDER BY 
    m.nombre, p.nombre;


