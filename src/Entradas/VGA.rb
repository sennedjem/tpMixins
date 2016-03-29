module VGA

  def set_def_maxima_vga(defn)
    @def_maxima = defn
  end

  def consumo
    0.001 * @def_maxima
  end

  def tasa_refresco_real
    120
  end

end