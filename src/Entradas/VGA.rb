module VGA

  def set_def_maxima_cable(defn)
    @def_maxima = defn
  end

  def definicion_maxima_cable
    @def_maxima
  end

  def consumo
    super + 0.001 * @def_maxima
  end

  def tasa_refresco_real
    120
  end

end