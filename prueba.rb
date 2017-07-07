file = File.open("casino.txt", "r")
data = file.readlines.map(&:chomp)
file.close

mesa_numero = []

data.each do |ele|
  spdo =  ele.split(', ')
  mesa_numero << spdo
end

print mesa_numero
