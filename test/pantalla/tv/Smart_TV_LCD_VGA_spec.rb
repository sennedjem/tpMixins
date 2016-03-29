require 'rspec'
require_relative '../../../src/Pantalla/SmartTV'
require_relative '../../../src/Entradas/VGA'
require_relative '../../../src/Tecnologias de Imagen/lcd'

describe 'Un Smart TV LCD con entrada VGA' do

  before :each do
    @tele = SmartTV.new(55, 1920, 1080).extend(LCD).extend(VGA)
  end

  it 'Sabe responder a consumo' do
    expect(@tele.respond_to? 'consumo').to be true
  end

  it 'Es apta para videojuegos' do
    expect(@tele.usar_para_videojuegos?).to be true
  end

  it 'La tasa de refresco real debe ser de 120'do
    expect(@tele.tasa_refresco_real).to eq 120
  end

  it 'La tasa de refresco de la pantalla debe ser de 135' do
    expect(@tele.tasa_refresco_pantalla).to eq 135
  end

  it 'El consumo debe ser de 221.08 watts/h con un cable VGA con definicion maxima de 1080p' do
    @tele.set_def_maxima_cable(1080)
    expect(@tele.consumo).to eq 221.08
  end

  it 'Los ppp deben ser 40.05' do
    expect(@tele.ppp).to eq 40.05
  end

  it 'La definicion maxima debe ser de 1557.32' do
    expect(@tele.definicion_maxima).to eq 1557.32
  end
end