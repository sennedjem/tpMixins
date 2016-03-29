class PlacaSinGpu
  include PlacaConConsumoFijo

  def es_Apta_Videojuegos
    (ln(ppp) / consumo) > 4
  end
end