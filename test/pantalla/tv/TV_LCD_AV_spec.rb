require 'rspec'
require_relative '../../../src/Pantalla/tv'
require_relative '../../../src/Entradas/Audio_video'
require_relative '../../../src/Tecnologias de Imagen/lcd'

describe 'Televisor LCD con entrada AV' do

  before :each do
    @tele = TV.new(17, 1920, 1080).extend(LCD).extend(Audio_video)
  end

  it 'Sabe responder a set_def_maxima_cable' do
    expect(@tele.respond_to?'set_def_maxima_cable').to be true
  end

  it 'La tasa de refresco real es de 50' do
    expect(@tele.tasa_refresco_real).to eq 50
  end

  it 'El consumo es de 74.8 watts/h' do
    expect(@tele.consumo).to eq 74.8
  end

  it 'No es apta para videojuegos' do
    expect(@tele.usar_para_videojuegos?).to be false
  end

  it 'La definicion maxima debe ser de 1554.96' do
    expect(@tele.definicion_maxima).to eq 1554.96
  end
end