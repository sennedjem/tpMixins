module Disco_rigido_magnetico

  def set_revoluciones_por_minuto(rev)
    @rev_por_min = rev
  end

  def consumo
      @rev_por_min * 60 / 10000
  end

end