require_relative '../Tecnologias de Imagen/digital'

module LED
  include Digital

  def consumo
    @tamanio_pantalla
  end

end