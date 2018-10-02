# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.create([
    {
        name:'test 1',
        address: 'test address',
        phone: '65478913',
        celphone: '13546548',
        email: 'rc.forero@uniandes.edu.co',
        whatsapp: '654654849'
    },
    {
        name:'test 2',
        address: 'test address 2',
        phone: '321654978',
        celphone: '654987654',
        email: 'camus35@hotmail.com',
        whatsapp: '654987123'
    }
])
Field.create([
    {
        number: 1,
        size: 5,
        roofed: false,
        illuminated: true,
        place_id: 2
    },
    {
        number: 2,
        size: 8,
        roofed: true,
        illuminated: true,
        place_id: 1
    }
])