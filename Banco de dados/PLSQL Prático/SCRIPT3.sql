CREATE [OR REPLACE] PROCEDURE DEFINIR_VALORES
IS

r_exame_itemnf EXAME_ITEMNF%rowtype;
v_numero_aleatorio pls_integer;
v_contador number;
v_nregistros number;
v_nregistros2 number;
v_contador2 number;
v_total_acumulado number;
v_valor number;
CURSOR c_ex3 is 
select b.valor
from EXAME_NF a, EXAME_ITEMNF b
where b.idnf = a.idnf
and a.idnf = 1;

BEGIN
  
select count(*) into v_nregistros
from EXAME_ITEMNF;

for v_contador in 1..v_nregistros
  loop

select * into r_exame_itemnf
from EXAME_ITEMNF e
where e.iditemnf = v_contador;

v_numero_aleatorio := dbms_random.value(1, 100);
r_exame_itemnf.idproduto := v_numero_aleatorio;

v_numero_aleatorio := dbms_random.value(1, 100);
r_exame_itemnf.qtde := v_numero_aleatorio;

v_numero_aleatorio := dbms_random.value(1, 100);
r_exame_itemnf.valor := v_numero_aleatorio;

update EXAME_ITEMNF e
set e.idproduto = r_exame_itemnf.idproduto,
    e.qtde = r_exame_itemnf.qtde,
    e.valor = r_exame_itemnf.valor
where e.iditemnf = v_contador;

end loop;

select count(*) into v_nregistros2
from EXAME_NF;

for v_contador2 in 1..v_nregistros2
  loop

v_total_acumulado := 0;

for c_exercicio3 in (select i.valor 
from EXAME_ITEMNF i, EXAME_NF n 
where v_contador2 = i.idnf)
    loop
    
        v_total_acumulado := v_total_acumulado + c_exercicio3.valor;

        update EXAME_NF n
        set n.totalgeral = v_total_acumulado
        where n.idnf = v_contador2;

    end loop;
    
 end loop;
 
END;
/
