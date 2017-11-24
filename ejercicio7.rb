class Product
	attr_reader :name, :large, :medium, :small, :xsmall
   	def initialize(name, large, medium, small, xsmall)
     	@name = name
     	@large = large
     	@medium = medium
     	@small = small
     	@xsmall = xsmall
	end 

	def promedio_producto
		promedio = (@large.to_i + @medium.to_i + @small.to_i + @xsmall.to_i)/4.0
		puts ("El promedio precios de #{@name} es #{promedio}")
	end

  def nuevo_catalogo
    file = File.open('nuevo_catalogo.txt', 'w')
    file.puts [@name, @large, @medium, @small,"\n"]
    file.close
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
   	ls = prod.split(', ')
   	producto = Product.new(*ls)
   	producto.promedio_producto
    producto.nuevo_catalogo
   	products_list << producto
end