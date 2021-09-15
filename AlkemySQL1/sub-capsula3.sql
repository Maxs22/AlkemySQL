CREATE TABLE profesor (
    id INT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    salario INT NOT NULL
);

INSERT INTO profesor VALUES (1, "Juan", "Pérez", "1990-06-06", 55000);
INSERT INTO profesor VALUES (2, "María Emilia", "Paz", "1984-07-15", 72000);
INSERT INTO profesor VALUES (3, "Martín", "Correa", "1987-12-07", 63000);
INSERT INTO profesor VALUES (4, "Lucía", "Díaz", "1991-02-24", 45000);
INSERT INTO profesor VALUES (5, "Raul", "Martínez", "1980-10-15", 85000);
INSERT INTO profesor VALUES (6, "Mabel", "Ríos", "1982-06-12", 83000);


-- consignas 
-- 1
SELECT nombre, apellido, fecha_nacimiento
FROM profesor
ORDER BY fecha_nacimiento ASC

-- 2
SELECT *
from profesor
WHERE salario >= 65000

-- 3
SELECT *
from profesor
WHERE fecha_nacimiento LIKE '198%'
    -- o sino 
    SELECT *
    from profesor
    WHERE fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31'

-- 4
SELECT *
from profesor
LIMIT 5

-- 5
SELECT *
from profesor
WHERE apellido LIKE 'P%'

-- 6
SELECT *
from profesor
WHERE fecha_nacimiento 
	LIKE '198%'
    AND salario > 80000
