require 'rspec'
require_relative '../../../src/Pantalla/tv'
require_relative '../../../src/Entradas/HDMI'
require_relative '../../../src/Entradas/Cable'
require_relative '../../../src/Entradas/RF'
require_relative '../../../src/Entradas/VGA'
require_relative '../../../src/Entradas/Audio_video'
require_relative '../../../src/Tecnologias de Imagen/lcd'

describe 'Televisor LCD con entrada HDMI' do

  before :each do
    @tele = TV.new(17, 1920, 1080).extend(LCD).extend(HDMI)
  end

  it 'Sabe responder a consumo' do
    expect(@tele.respond_to? 'consumo').to be true
  end

  it 'Sabe responder a ppp' do
    expect(@tele.respond_to? 'ppp').to be true
  end

  it 'Sabe responder a tasa_refresco' do
    expect(@tele.respond_to? 'tasa_refresco').to be true
  end

  it 'Sabe responder a tasa_refresco_pantalla' do
    expect(@tele.respond_to? 'tasa_refresco_pantalla').to be true
  end

  it 'Sabe responder si sirve para jugar videojuegos' do
    expect(@tele.respond_to? 'usar_para_videojuegos?').to be true
  end

  it 'Sabe responder a setear la definicion maxima del hdmi' do
    expect(@tele.respond_to? 'set_def_maxima_cable').to be true
  end

  it 'Sabe responder a definicion_maxima_cable' do
    expect(@tele.respond_to? 'definicion_maxima_cable').to be true
  end

  it 'Sabe responder a setear la tasa de refresco del hdmi' do
    expect(@tele.respond_to? 'set_tasa_refresco_hdmi').to be true
  end

  it 'Sabe responder a la tasa de refresco real' do
    expect(@tele.respond_to? 'tasa_refresco_real').to be true
  end

  it 'Sabe responder a definicion_maxima' do
    expect(@tele.respond_to? 'definicion_maxima').to be true
  end

  it 'Sabe responder a si se puede conectar un cable' do
    expect(@tele.respond_to? 'puede_conectarse_con_cable?').to be true
  end

  it 'Con tasa de refresco real de 101 debe ser apta para videojuegos' do
    @tele.set_tasa_refresco_hdmi(101)
    expect(@tele.usar_para_videojuegos?).to be true
  end

  it 'Con tasa de refresco real de 85 no debe ser apta para videojuegos' do
    @tele.set_tasa_refresco_hdmi(85)
    expect(@tele.usar_para_videojuegos?).to be false
  end

  it 'El consumo debe ser de  81.6 watts/h' do
    expect(@tele.consumo).to eq 81.6
  end

  it 'La tasa de refresco debe ser de 90 al tener un cable con tasa de refresco de 95' do
    @tele.set_tasa_refresco_hdmi(95)
    (expect @tele.tasa_refresco).to eq 90
  end

  it 'La tasa de refresco debe ser de 75 al tener un cable con tasa de refresco de 75' do
    @tele.set_tasa_refresco_hdmi(75)
    (expect @tele.tasa_refresco).to eq 75
  end

  it 'Los ppp deben ser 129.58' do
    expect(@tele.ppp).to eq 129.58
  end

  it 'La definicion maxima de un cable de 1080 debe ser 1080' do
    @tele.set_def_maxima_cable(1080)
    expect(@tele.definicion_maxima_cable).to eq 1080
  end

  it 'La definicion maxima debe ser de 1557.69' do
    expect(@tele.definicion_maxima).to eq 1554.96
  end

  it 'Puede conectarse con un cable RF' do
    @rf = Cable.new.extend(Radio_frecuencia)
    @rf.set_def_maxima_cable
    expect(@tele.puede_conectarse_con_cable?(@rf)).to be true
  end

  it 'Puede conectarse con un cable AV' do
    @av = Cable.new.extend(Audio_video)
    @av.set_def_maxima_cable
    expect(@tele.puede_conectarse_con_cable?(@av)).to be true
  end

  it 'No puede conectarse con un cable HDMI de 2160p' do
    @hdmi = Cable.new.extend(HDMI)
    @hdmi.set_def_maxima_cable(2160)
    expect(@tele.puede_conectarse_con_cable?(@hdmi)).to be false
  end

  it 'Puede conectarse con un cable HDMI de 1080p' do
    @hdmi = Cable.new.extend(HDMI)
    @hdmi.set_def_maxima_cable(1080)
    expect(@tele.puede_conectarse_con_cable?(@hdmi)).to be true
  end

  it 'Puede conectarse con un cable VGA de 720p' do
    @vga = Cable.new.extend(VGA)
    @vga.set_def_maxima_cable(720)
    expect(@tele.puede_conectarse_con_cable?(@vga)).to be true
  end
end