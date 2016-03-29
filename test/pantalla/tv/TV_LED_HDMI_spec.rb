require 'rspec'
require_relative '../../../src/Pantalla/tv'
require_relative '../../../src/Entradas/HDMI'
require_relative '../../../src/Tecnologias de Imagen/led'

describe 'Televisor LED con entrada HDMI' do

  before :each do
    @tele = TV.new(32, 1920, 1080).extend(LED).extend(HDMI)
  end

  it 'Con tasa de refresco real de 150 debe ser apta para videojuegos' do
    @tele.set_tasa_refresco_hdmi(150)
    expect(@tele.usar_para_videojuegos?).to be true
  end

  it 'Con tasa de refresco real de 50 no debe ser apta para videojuegos' do
    @tele.set_tasa_refresco_hdmi(50)
    expect(@tele.usar_para_videojuegos?).to be false
  end

  it 'El consumo debe ser de  38.4 watts/h' do
    expect(@tele.consumo).to eq 38.4
  end

  it 'La tasa de refresco debe ser de 90 al tener un cable con tasa de refresco de 95' do
    @tele.set_tasa_refresco_hdmi(95)
    (expect @tele.tasa_refresco).to eq 90
  end

  it 'La tasa de refresco debe ser de 75 al tener un cable con tasa de refresco de 75' do
    @tele.set_tasa_refresco_hdmi(75)
    (expect @tele.tasa_refresco).to eq 75
  end

  it 'Los ppp deben ser 68.84' do
    expect(@tele.ppp).to eq 68.84
  end

  it 'La definicion maxima de un cable de 720 debe ser 720' do
    @tele.set_def_maxima_cable(720)
    expect(@tele.definicion_maxima_cable).to eq 720
  end

  it 'La definicion maxima debe ser de 1557.67' do
    expect(@tele.definicion_maxima).to eq 1557.67
  end
end