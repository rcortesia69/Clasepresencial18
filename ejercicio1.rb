class Table
  attr_accessor :mesa, :recaudacion
  def initialize(mesa, *recaudacion)
    @mesa = mesa
    @recaudacion = recaudacion.map(&:to_i)
  end

  def self.instancia_mesa
    file = File.open("casino.txt", "r")
    data = file.readlines
    file.close
    mesa_numero = []
    data.each do |ele|
      spdo =  ele.split(', ')
      mesa_numero << Table.new(*spdo)
    end
    mesa_numero
  end

  def self.mayor
    d = Table.instancia_mesa
    print d
  end
end

c = Table.mayor
print c
