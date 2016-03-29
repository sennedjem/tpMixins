class PC

  attr_accessor :pantalla

  def initialize(pantalla)
    self.pantalla = pantalla
  end

  def consumo_de_pantalla
    self.pantalla.consumo
  end

  def consumo_pc
   super
  end

  def consumo_total
    self.consumo_de_pantalla + self.consumo_pc
  end

  def es_apta_videojuegos?
    @pantalla.usar_para_videojuegos? && super
  end
end