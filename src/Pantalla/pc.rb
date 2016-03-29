class PC
  def initialize(pantalla)
    @pantalla=pantalla
  end

  def consumo_pc
    @pantalla.consumo + super
  end
end