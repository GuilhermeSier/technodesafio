declare 
  r_exame_nf EXAME_NF%rowtype;
  v_contador number;
  v_diferenca_de_dias number := 10;
  v_remainder number;
  r_exame_itemnf EXAME_ITEMNF%rowtype;
  v_contador2 number;
  v_contador3 number := 1;
begin
for v_contador in 1..1000
  loop
    v_remainder := mod(v_contador, 100);
    
    if v_remainder = 0 then
      v_diferenca_de_dias := v_diferenca_de_dias-1;
      end if;
      
    r_exame_nf.idnf := v_contador;
    r_exame_nf.numero := v_contador*10;
    r_exame_nf.datacadastro := sysdate-v_diferenca_de_dias;
    r_exame_nf.totalgeral := v_contador*2;
    
    insert into EXAME_NF(IDNF, NUMERO, DATACADASTRO, TOTALGERAL) values
    (r_exame_nf.idnf, r_exame_nf.numero, r_exame_nf.datacadastro, r_exame_nf.totalgeral);
    
    for v_contador2 in 1..3
      loop
      r_exame_itemnf.iditemnf := v_contador3;
      r_exame_itemnf.idnf := r_exame_nf.idnf;
      r_exame_itemnf.idproduto := NULL;
      r_exame_itemnf.qtde := NULL;
      r_exame_itemnf.valor := NULL;
      
      insert into EXAME_ITEMNF(IDITEMNF, IDNF, IDPRODUTO, QTDE, VALOR) values
      (r_exame_itemnf.iditemnf, r_exame_itemnf.idnf, r_exame_itemnf.idproduto, r_exame_itemnf.qtde, r_exame_itemnf.valor);
      
      v_contador3 := v_contador3+1;
      end loop;
    
    end loop;
  
end;
/
