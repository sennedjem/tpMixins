require_relative '../Placas/PlacaConConsumoFijo'

module PlacaIntegrada
  include PlacaConConsumoFijo

  def es_apta_videojuegos?
    false
  end
end