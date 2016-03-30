module PlacaConGpuYConsumoVariable

  def consumo_pc
    @pantalla.ppp * (1/ 100000)
  end

  def es_apta_videojuegos?
    true
  end
end