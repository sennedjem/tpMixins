class Pantalla

  def initialize(tam_pantalla, ancho, alto)
    @tamanio_pantalla = tam_pantalla #En pulgadas
    @ancho_panatlla = ancho #En pixeles
    @alto_pantalla = alto #En pixeles
  end

  def ppp
    (Math.sqrt(@ancho_panatlla**2 + @alto_pantalla**2) / @tamanio_pantalla).round(2)
  end

  def usar_para_videojuegos?
    tasa_refresco_real > 100
  end

  def tasa_refresco
    [tasa_refresco_pantalla, tasa_refresco_real].min
  end

  def puede_conectarse_con_cable?(cable)
    definicion_maxima > cable.definicion_maxima_cable
  end

  def consumo
    super
  end
end