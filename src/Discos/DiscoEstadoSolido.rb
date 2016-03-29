module Disco_estado_solido

  def set_gasto_cte(gasto)
    @gasto_constante = gasto
  end

  def consumo
    @gasto_constante
  end

end