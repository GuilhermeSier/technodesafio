CREATE TABLE tb_produto
(
    IDPRODUTO number NOT NULL,
    CODIGOINTERNO varchar2(60),
    DESCR varchar2(120),
    ATIVO char(1),
    CONSTRAINT tb_produto_pk PRIMARY KEY (IDPRODUTO)
);

CREATE TABLE tb_embalagem
(
    IDEMBALAGEM number NOT NULL,
    IDPRODUTO number,
    BARRA varchar2(32),
    DESCR varchar2(80),
    FATORCONVERSAO number,
    ALTURA number,
    LARGURA number,
    COMPRIMENTO number,
    ATIVO char(1),
    CONSTRAINT tb_embalagem_pk PRIMARY KEY (IDEMBALAGEM)
);