# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

father = Father.create!(first_name: "John", last_name: "Fwz", gender: "male", dob: "1980-01-01")
mother = Mother.create!(first_name: "Lily", last_name: "Fwz", gender: "female", dob: "1982-01-01")

william    = Child.create!(first_name: "William", last_name: "Fwz", gender: "male", dob: "1993-01-01", father_id: father.id, mother_id: mother.id)
michael    = Child.create!(first_name: "Michael", last_name: "Fwz", gender: "male", dob: "1994-01-01", father_id: father.id, mother_id: mother.id)

ava        = Child.create!(first_name: "Ava", last_name: "Fwz", gender: "female", dob: "1993-01-01", father_id: father.id, mother_id: mother.id)
mia        = Child.create!(first_name: "Mia", last_name: "Fwz", gender: "female", dob: "1994-01-01", father_id: father.id, mother_id: mother.id)