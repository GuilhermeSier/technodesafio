--a)	Uma consulta onde mostre os 10 primeiros produtos.
SELECT * from tb_produto WHERE rownum < 11 order by IDPRODUTO;

--b)	Uma consulta onde mostre os produtos apenas com embalagens ativas.
SELECT * from tb_produto where ATIVO = 'S' order by IDPRODUTO;

--c)	Uma consulta que traga quantidade de embalagens de cada produto.
SELECT sum(e.fatorconversao) qnt
from tb_embalagem e
group by e.idproduto
order by e.idproduto;

--d)	Insira um novo produto e uma nova embalagem para esse produto de acordo com a estrutura dados.
INSERT into tb_produto(IDPRODUTO, CODIGOINTERNO, DESCR, ATIVO) values
(40, '000006', 'SABAO EM PO OMO', 'S');
INSERT into tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
(11, 40, '7891000519512', 'SABAO EM PO OMO CX', 1, 150, 80, 200, 'S');

--e)	Altere a altura para 250, largura para 120 e comprimento para 150
--das embalagens dos produtos cujo FATORCONVERSAO seja igual a 1.
UPDATE tb_embalagem e
set e.ALTURA = 250,
    e.LARGURA = 120,
    e.COMPRIMENTO = 150
WHERE e.FATORCONVERSAO = 1;