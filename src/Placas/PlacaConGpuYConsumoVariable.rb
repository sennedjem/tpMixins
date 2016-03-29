module PlacaConGpuYConsumoVariable

  def consumo
    pantalla.ppp * (1/ 100000) + super
  end

  def es_Apta_Videojuegos
    true
  end
end