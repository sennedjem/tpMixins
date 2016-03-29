module Radio_frecuencia

  def set_def_maxima_cable
    @def_maxima = 480
  end

  def consumo
    super + 0
  end

  def definicion_maxima_cable
    @def_maxima
  end

  def tasa_refresco_real
    50
  end

end