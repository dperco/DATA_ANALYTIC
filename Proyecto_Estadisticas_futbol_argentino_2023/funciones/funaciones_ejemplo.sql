delimiter //
create function fn_calculadora ( p_dato1 int ,
                                 p_operacion char(1),
                                 p_dato2 int 
								)
returns int 
deterministic 
  begin
  
  declare v_resultado int ;
  
  -- suma +
  if p_operacion = '+' then  
   set v_resultado =  p_dato1 + p_dato2 ;
  -- resta -
   elseif p_operacion = '-' then 
    set v_resultado =  p_dato1 - p_dato2 ;
   -- multiplicacion *
    elseif  p_operacion = '*' then 
    set v_resultado =  p_dato1 * p_dato2 ;
  -- division /
   elseif p_operacion = '/' then 
   set v_resultado =  p_dato1 / p_dato2 ;
   else 
     set v_resultado = 0;
   end if
  ;
   
 return v_resultado ;
  end//
  delimiter ;