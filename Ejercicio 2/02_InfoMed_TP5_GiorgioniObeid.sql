UPDATE pacientes
SET edad = EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento));}
