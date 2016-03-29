require 'rspec'
require_relative '../../../src/Pantalla/tv'
require_relative '../../../src/Entradas/VGA'
require_relative '../../../src/Tecnologias de Imagen/lcd'

describe 'Televisor LCD con entrada VGA' do

  before :each do
    @tele = TV.new(17, 1920, 1080).extend(LCD).extend(VGA)
  end

  it 'Sabe responder a consumo' do
    expect(@tele.respond_to? 'consumo').to be true
  end

  it 'Sabe responder a Setear la definicion maxima del cable' do
    expect(@tele.respond_to? 'set_def_maxima_cable').to be true
  end

  it 'Sabe responder a tasa de refresco real' do
    expect(@tele.respond_to? 'tasa_refresco_real').to be true
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

  it 'El consumo debe ser de 68.72 watts/h con un cable VGA con definicion maxima de 720p' do
    @tele.set_def_maxima_cable(720)
    expect(@tele.consumo).to eq 68.72
  end

  it 'Los ppp deben ser 129.58' do
    expect(@tele.ppp).to eq 129.58
  end

  it 'La definicion maxima de un cable de 720 debe ser 720' do
    @tele.set_def_maxima_cable(720)
    expect(@tele.definicion_maxima_cable).to eq 720
  end

  it 'La definicion maxima debe ser de 1554.96' do
    expect(@tele.definicion_maxima).to eq 1554.96
  end
end