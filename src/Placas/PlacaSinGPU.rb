require_relative '../Placas/PlacaConConsumoFijo'

module PlacaSinGPU
  include PlacaConConsumoFijo

  def es_apta_videojuegos?
    (Math.log(self.ppp) / self.consumo_pc) > 4
  end
end