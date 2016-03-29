require 'rspec'
require_relative '../../../src/Pantalla/Monitor_de_PC'
require_relative '../../../src/Entradas/Audio_video'
require_relative '../../../src/Tecnologias de Imagen/crt'

describe 'Un monitor CRT con cable A/V' do

  before :each do
    @monitor = Monitor_de_PC.new(14,640,480).extend(CRT).extend(Audio_video)
  end

  it 'Entiende consumo' do
    expect(@monitor.respond_to? 'consumo').to be true
  end

  it 'No es apta para videojuegos' do
    expect(@monitor.usar_para_videojuegos?).to be false
  end

  it 'La tasa de refresco real debe ser de 50'do
    expect(@monitor.tasa_refresco_real).to eq 50
  end

  it 'La tasa de refresco de la pantalla debe ser de 120' do
    expect(@monitor.tasa_refresco_pantalla).to eq 120
  end

  it 'El consumo debe ser de 77 watts/h' do
    @monitor.set_def_maxima_cable
    expect(@monitor.consumo).to eq 77
  end

  it 'Los ppp deben ser 57.14' do
    expect(@monitor.ppp).to eq 57.14
  end

  it 'La definicion maxima debe ser de 480' do
    expect(@monitor.definicion_maxima).to eq 480
  end
end