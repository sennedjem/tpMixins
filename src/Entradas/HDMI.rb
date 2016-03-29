module HDMI

  def set_def_maxima_cable(defn)
    @def_maxima = defn
  end

  def set_tasa_refresco_hdmi(ref)
    @tasa_ref_real = ref
  end

  def consumo
    super + super * 0.2
  end

  def tasa_refresco_real
    @tasa_ref_real
  end

  def definicion_maxima_cable
    @def_maxima
  end
end