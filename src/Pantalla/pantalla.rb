class Pantalla

  def initialize(tam_pantalla, ancho, alto)
    @tamanio_pantalla = tam_pantalla
    @ancho_panatlla = ancho
    @alto_pantalla = alto
  end

  def ppp
    Math.sqrt(@ancho_panatlla**2 + @alto_pantalla**2) / @tamanio_pantalla
  end

  def usar_para_videojuegos?
    tasa_refresco_real > 100
  end

  def consumo_por_hora
    super consumo
  end
end