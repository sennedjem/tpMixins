module PlacaConConsumoFijo

  def set_consumo_fijo_placa(consumo)
    @consumo_promedio= consumo
  end

  def consumo_pc
    @consumo_promedio + super
  end
end