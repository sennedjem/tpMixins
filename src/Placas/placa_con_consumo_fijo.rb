module PlacaConConsumoFijo
  def initialize(consumo)
    @consumo_promedio= consumo
  end

  def consumo
    @consumo_promedio+super
  end
end