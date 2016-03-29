class PC
  def initialize(pantalla)
    @pantalla=pantalla
  end

  def consumo_pc
    @pantalla.consumo + super.consumo
  end

  def es_Apta_Videojuegos
    @pantalla.usar_para_videojuegos? && super.es_Apta_Videojuegos
  end
end