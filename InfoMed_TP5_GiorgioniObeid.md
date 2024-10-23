## Ejercicio 1

### Qué tipo de base de datos es? Clasificarla según estructura y función.

Según su función, la base de datos es de tipo transaccional su objetivo es almacenar y gestionar datos en tiempo real, optimizando la velocidad de inserción, actualización y consulta para operaciones cotidianas de un centro médico.

Segun su estructura, la base de datos es relacional (SQL) ya que está organizada en tablas con filas y columnas, donde cada tabla representa una entidad (pacientes, médicos, medicamentos, consultas, recetas).
### 2. Armar el diagrama entidad-relación de la base de datos dada.
3. Armar el Modelo relacional de la base de datos dada
![Diagrama Entidad-Relación](images/diagrama%20entidad%20-%20relacion.jpg)

### 3. Armar el Modelo relacional de la base de datos dada.
![Modelo Relacional](images/modelo%20relacional.jpg)

### ¿Considera que la base de datos está normalizada? En caso que no lo esté, ¿cómo podría hacerlo? Nota: no debe normalizar la base de datos, solo explicar como lo haría.

Cumple con la primera forma normal ya que cada celda posee un único valor. Cumple con la segunda forma normal ya que no hay dependencias parciales.
Sin embargo, creemos que no cumple con la tercera forma normal debido a la dependencia entre diagnóstico y snomedcodigo. Para normalizarlo separaríamos los diagnósticos con sus correspondientes códigos en una tabla aparte. 
