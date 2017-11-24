propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

class Dog
	attr_reader :nombre, :raza, :color
   	def initialize(data)
     	@nombre = data[:nombre]
     	@raza = data[:raza]
     	@color = data[:color]
   	end
end

perro = Dog.new(propiedades)
puts "#{perro.nombre} está ladrando"
