# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Services *************************************************************************************
Service.create(name: 'Restaurantes', active: true)
Service.create(name: 'Chifas', active: true)
Service.create(name: 'Pizzas', active: true)
Service.create(name: 'Gourmet', active: true)
Service.create(name: 'Restaurante Turistico', active: true)
Service.create(name: 'Pastelerias', active: true)
Service.create(name: 'Cafes', active: true)
Service.create(name: 'Pollerias', active: true)

#Categories *************************************************************************************
Category.create(name: 'Comidas Cuzqueña', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Comidas Tipicas', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Comidas Norteña', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Comidas Limeña', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Comidas Puneña', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'A la carta', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Devilery', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Comida Rapida', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Campestre', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Cuyeria', service_id: Service.find_by(name: 'Restaurantes').id)
Category.create(name: 'Chicahrroneria', service_id: Service.find_by(name: 'Restaurantes').id)

Category.create(name: 'Chifas', service_id: Service.find_by(name: 'Chifas').id)

Category.create(name: 'Delivery', service_id: Service.find_by(name: 'Pizzas').id)
Category.create(name: 'Vegetariano', service_id: Service.find_by(name: 'Pizzas').id)

Category.create(name: '3 tenedores', service_id: Service.find_by(name: 'Restaurante Turistico').id)
Category.create(name: '2 tenedores', service_id: Service.find_by(name: 'Restaurante Turistico').id)

Category.create(name: 'Torta y bocaditos', service_id: Service.find_by(name: 'Pastelerias').id)
Category.create(name: 'Tortas decoradas ', service_id: Service.find_by(name: 'Pastelerias').id)

#Commerces *************************************************************************************
Commerce.create(name: 'La cuqueñita', category_id: Category.find_by(name: 'Comidas Cuzqueña').id)
Commerce.create(name: 'La esquinita', category_id: Category.find_by(name: 'Comidas Cuzqueña').id)
Commerce.create(name: 'La peruana', category_id: Category.find_by(name: 'Comidas Cuzqueña').id)
Commerce.create(name: 'El rincon cuzqueño', category_id: Category.find_by(name: 'Comidas Cuzqueña').id)

Commerce.create(name: 'Yin Yan', category_id: Category.find_by(name: 'Chifas').id)
Commerce.create(name: 'Lin Lan', category_id: Category.find_by(name: 'Chifas').id)

Commerce.create(name: 'Marengo', category_id: Category.find_by(name: 'Delivery').id)
Commerce.create(name: 'Express', category_id: Category.find_by(name: 'Vegetariano').id) 