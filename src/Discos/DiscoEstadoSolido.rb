module Disco_estado_solido

  def set_gasto_cte_ssd(gasto)
    @gasto_constante = gasto
  end

  def consumo_pc
      @gasto_constante + super

  end

end