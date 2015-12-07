# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Move.create!(name: 'Sueldo', description: 'Sueldo mensual por el trabajo en la compania', amount: 2000)
Move.create!(name: 'Prestacion Servicios', description: 'Pagina realizada a juanma', amount: 100)
Move.create!(name: 'Venta Casa', description: 'Venta de la casa de cartago', amount: 30000)


Patrimony.create!(name: 'Casa', value: '90000000', kind:'Inmueble', acquisition_date: '08/09/1990')
Patrimony.create!(name: 'Carro', value: '30000000', kind:'Automotor', acquisition_date: '08/09/2018')

