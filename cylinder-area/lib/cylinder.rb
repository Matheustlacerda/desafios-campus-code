class Cylinder
  def calculate_area(cylinder)
    cilindro_raio_altura = cylinder.split('x').map(&:to_i)
   (cilindro_raio_altura[1]*(2*3*cilindro_raio_altura[0])) + (2*(3*cilindro_raio_altura[0]**2))  end

  def find_cylinders(list, area)
    cilindro_aprovado = []
    list.map do |item|
      valor = item.split('x')
      raio = valor[0].to_i
      altura = valor[1].to_i
     if  (altura*(2*3*raio)) + (2*(3*raio**2)) > area 
      cilindro_aprovado << item
     end
   end
   cilindro_aprovado
  end
end

