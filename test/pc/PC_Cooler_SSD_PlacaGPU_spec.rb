require 'rspec'
require_relative '../../src/Tecnologias de Imagen/crt'
require_relative '../../src/Entradas/HDMI'
require_relative '../../src/Pantalla/Monitor_de_PC'
require_relative '../../src/Pantalla/pc'
require_relative '../../src/Discos/Cooler'
require_relative '../../src/Discos/DiscoEstadoSolido'
require_relative '../../src/Placas/PlacaConGpuYConsumoVariable'

describe 'Una PC con un SSD, y placa con gpu con un cooler' do

  before :each do
    @monitor = Monitor_de_PC.new(14,640,480).extend(CRT).extend(HDMI)
    @compu = PC.new(@monitor).extend(PlacaConGpuYConsumoVariable).extend(Cooler).extend(Disco_estado_solido)
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

  it 'Deberia ser apta para videojuegos' do
    expect(@compu.es_apta_videojuegos?).to be true
  end

  it 'El consumo del monitor debe ser de  watts/h' do
    expect(@monitor.consumo).to eq 84
  end

  it 'El consumo deberia ser de 214.5 watts/h' do
    @compu.set_gasto_cte_ssd(130)
    expect(@compu.consumo_total).to eq 214.5
  end


end