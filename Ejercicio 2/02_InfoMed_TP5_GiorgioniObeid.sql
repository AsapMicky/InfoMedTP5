ALTER TABLE pacientes
ADD COLUMN IF NOT EXISTS edad INT;

UPDATE pacientes
SET edad = EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento));

CREATE INDEX IF NOT EXISTS idx_edades
ON pacientes (edad); 
