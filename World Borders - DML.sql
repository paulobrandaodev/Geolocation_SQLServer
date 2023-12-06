/* 

Ex 4 - Execute o Script World Borders.sql para criar a tabela 
World_Borders (Já criada no banco de dados na Nuvem). 
Uma vez carregada faça uma consulta para retornar os dados do Brasil (ISO2 = 'BR') e 
seus vizinhos utilizando a funcão STIntersects. Usem a coluna GEOG para as funções de geolocalização. 

*/

SELECT * 
	FROM World_Borders br, World_Borders fronteira
WHERE br.ISO2 = 'BR' 
	AND br.GEOG.STIntersects(fronteira.GEOG) = 1


/*

Ex 5 - Com base na consulta do Exercício anterior, 
faça uma nova consulta que retorne todos os países da América 
(REGION = 19) que não fazem fronteira com o Brasil.

*/

SELECT * FROM World_Borders br, World_Borders fronteira
WHERE br.ISO2 = 'BR' 
	AND br.GEOG.STIntersects(fronteira.GEOG) = 0
	AND fronteira.REGION = 19