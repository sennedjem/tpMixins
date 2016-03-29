require 'rspec'
require_relative '../../../src/Pantalla/tv'
require_relative '../../../src/Entradas/VGA'
require_relative '../../../src/Tecnologias de Imagen/led'

describe 'Televisor LED con entrada VGA' do

  before :each do
    @tele = TV.new(32, 1920, 1080).extend(LED).extend(VGA)
  end

  it 'Es apta para videojuegos' do
    expect(@tele.usar_para_videojuegos?).to be true
  end

  it 'La tasa de refresco real debe ser de 120'do
    expect(@tele.tasa_refresco_real).to eq 120
  end

  it 'La tasa de refresco debe ser de 90' do
    expect(@tele.tasa_refresco).to eq 90
  end

  it 'El consumo debe ser de 68.72 watts/h con un cable VGA con definicion maxima de 1080p' do
    @tele.set_def_maxima_cable(1080)
    expect(@tele.consumo).to eq 33.08
  end

  it 'Los ppp deben ser 68.84' do
    expect(@tele.ppp).to eq 68.84
  end

  it 'La definicion maxima debe ser de 1557.67' do
    expect(@tele.definicion_maxima).to eq 1557.67
  end
end