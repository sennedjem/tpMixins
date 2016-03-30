require 'rspec'
require_relative '../../src/Tecnologias de Imagen/crt'
require_relative '../../src/Entradas/Audio_video'
require_relative '../../src/Pantalla/Monitor_de_PC'
require_relative '../../src/Pantalla/pc'
require_relative '../../src/Discos/Cooler'
require_relative '../../src/Discos/DiscoRigidoMagnetico'
require_relative '../../src/Placas/PlacaIntegrada'

describe 'Una PC con un HDD magnetico, y placa integrada con un cooler' do

  before :each do
    @monitor = Monitor_de_PC.new(17,1920,1080).extend(CRT).extend(Audio_video)
    @compu = PC.new(@monitor).extend(PlacaIntegrada).extend(Cooler).extend(Cooler).extend(Disco_rigido_magnetico)
  end

  it 'PC entiende consumo' do
    expect(@compu.respond_to? 'consumo_pc').to be true
  end

  it 'PC entiende setear rpm' do
    expect(@compu.respond_to? 'set_revoluciones_por_minuto_hdd').to be true
  end

  it 'PC entiende si es apta para videojuegos' do
    expect(@compu.respond_to? 'es_apta_videojuegos?').to be true
  end

  it 'No deberia ser apta para videojuegos' do
    expect(@compu.es_apta_videojuegos?).to be false
  end

  it 'El consumo deberia ser de 151 watts/h con un disco con 130 revoluciones por minuto' do
    @compu.set_revoluciones_por_minuto_hdd(1300)
    @compu.set_consumo_fijo_placa(50)
    expect(@compu.consumo_total).to eq 151
  end


end