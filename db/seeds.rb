# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..2).each do |number|
  Patient.create(
    first_name: "Jack#{number}",
    middle_name: "Martain#{number}",
    last_name: "Green#{number}",
    birthday: "1991-09-16",
    gender: "male",
    status: "treatment"
  )

  Location.create(
    code: "02112#{number}",
    name: "Test location #{number}",
    locationable_id: "#{number}",
    locationable_type: "Patient"
  )
end
