    SELECT
    a.nom_pais        pais,
    B.nom_estado        ESTADO,
    COUNT(nom_CIDADE) "QTD CIDADE"
FROM
    pf1788.pais   a
    LEFT JOIN pf1788.estado b ON ( a.cod_pais = b.cod_pais )
    INNER JOIN pf1788.cidade c ON (b.cod_estado = c.cod_estado)
GROUP BY
    a.nom_pais,
    b.nom_estado
HAVING
    COUNT(nom_estado) > 0
ORDER BY
    3;