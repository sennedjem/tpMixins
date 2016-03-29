require_relative '../Tecnologias de Imagen/digital'

module LCD
  include Digital

  def consumo
    4* @tamanio_pantalla
  end

end