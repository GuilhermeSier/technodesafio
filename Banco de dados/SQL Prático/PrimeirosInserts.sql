INSERT ALL
    INTO tb_produto(IDPRODUTO, CODIGOINTERNO, DESCR, ATIVO) values (12, '000001', 'OLEO DE SOJA', 'S')
    INTO tb_produto(IDPRODUTO, CODIGOINTERNO, DESCR, ATIVO) values (13, '000002', 'OLEO DE GIRASSOL', 'S')
    INTO tb_produto(IDPRODUTO, CODIGOINTERNO, DESCR, ATIVO) values (57, '000003', 'TELEFONE SEM FIO', 'S')
    INTO tb_produto(IDPRODUTO, CODIGOINTERNO, DESCR, ATIVO) values (382, '000004', 'MOUSE MICROSOFT', 'S')
    INTO tb_produto(IDPRODUTO, CODIGOINTERNO, DESCR, ATIVO) values (435, '000005', 'JOHNNIE WALKER BLUE LABEL', 'S')
SELECT 1 FROM DUAL;

INSERT ALL
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (1, 12, '7891000315507', 'OLEO DE SOJA LT', 1, 200, 100, 100, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (2, 12, '7891000315508', 'OLEO DE SOJA CX COM 10', 10, 250, 400, 400, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (3, 13, '7891000415510', 'OLEO DE GIRASSOL LT', 1, 200, 100, 100, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (4, 13, '7891000415511', 'OLEO DE GIRASSOL CX COM 10', 10, 250, 400, 400, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (5, 57, '7891000415515', 'TELEFONE SEM FIO', 1, 170, 180, 190, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (6, 382, '7891000715501', 'MOUSE MICROSOFT', 1, 60, 60, 110, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (7, 382, '7891000715502', 'MOUSE MICROSOFT CX COM 10', 10, 180, 200, 200, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (8, 382, '7891000715503', 'MOUSE MICROSOFT CX COM 50', 50, 400, 450, 450, 'N')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (9, 435, '7891000745678', 'JOHNNIE WALKER BLUE LABEL', 1, 300, 150, 150, 'S')
    INTO tb_embalagem(IDEMBALAGEM, IDPRODUTO, BARRA, DESCR, FATORCONVERSAO, ALTURA, LARGURA, COMPRIMENTO, ATIVO) values
    (10, 435, '7891000745679', 'JOHNNIE WALKER BLUE LABEL CX COM 12', 12, 350, 450, 450, 'S')
SELECT 1 FROM DUAL;
