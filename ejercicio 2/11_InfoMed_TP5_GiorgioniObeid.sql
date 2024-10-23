SELECT 
    p.nombre,       -- p se refiere a la tabla pacientes
    c.fecha,       -- c se refiere a la tabla consultas
    c.diagnostico
FROM 
    pacientes p    
JOIN 
    consultas c ON p.id_paciente = c.id_paciente  
WHERE 
    c.fecha >= '2024-08-01' 
    AND c.fecha < '2024-09-01';
