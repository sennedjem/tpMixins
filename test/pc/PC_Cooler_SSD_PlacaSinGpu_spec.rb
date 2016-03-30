require 'rspec'
require_relative '../../src/Tecnologias de Imagen/crt'
require_relative '../../src/Entradas/Audio_video'
require_relative '../../src/Pantalla/Monitor_de_PC'
require_relative '../../src/Pantalla/pc'
require_relative '../../src/Discos/Cooler'
require_relative '../../src/Discos/DiscoEstadoSolido'
require_relative '../../src/Placas/PlacaSinGPU'

describe 'Una PC con un SSD, y placa integrada con un cooler' do

  before :each do
    @monitor = Monitor_de_PC.new(17,1920,1080).extend(CRT).extend(Audio_video)
    @compu = PC.new(@monitor).extend(Disco_estado_solido).extend(PlacaSinGPU).extend(Cooler).extend(Cooler).extend(Cooler)
  end

  it 'PC entiende consumo' do
    expect(@compu.respond_to? 'consumo_pc').to be true
  end

  it 'PC entiende si es apta para videojuegos' do
    expect(@compu.respond_to? 'es_apta_videojuegos?').to be true
  end

  it 'PC entiende ponerle el gasto constante al ssd' do
    expect(@compu.respond_to? 'set_gasto_cte_ssd').to be true
  end

  it 'No deberia ser apta para videojuegos' do
    expect(@compu.es_apta_videojuegos?).to be false
  end

  it 'El consumo deberia ser de watts/h' do
    @compu.set_gasto_cte_ssd(130)
    @compu.set_consumo_fijo_placa(50)
    expect(@compu.consumo_total).to eq 262.1
  end


end