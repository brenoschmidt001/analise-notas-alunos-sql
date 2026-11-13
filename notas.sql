CREATE TABLE notas (
    id INT,
    nome VARCHAR(50),
    nota1 DECIMAL(4,2),
    nota2 DECIMAL(4,2)
);

INSERT INTO notas (id, nome, nota1, nota2) VALUES
(1, 'Ana', 8.00, 9.00),
(2, 'Carlos', 5.00, 6.00),
(3, 'Mariana', 9.00, 10.00),
(4, 'Pedro', 7.00, 8.00),
(5, 'Juliana', 6.00, 7.00),
(6, 'Lucas', 4.00, 5.00),
(7, 'Beatriz', 8.00, 8.00),
(8, 'Gabriel', 6.00, 5.00);

WITH medias_alunos AS (
    SELECT
        nome,
        (nota1 + nota2) / 2 AS media
    FROM notas
)
SELECT nome, media
FROM medias_alunos
WHERE media >= 7;
