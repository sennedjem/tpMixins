require_relative '../Placas/PlacaConConsumoFijo'

module PlacaSinGPU
  include PlacaConConsumoFijo

  def es_apta_videojuegos?
    (ln(ppp) / consumo) > 4
  end
end