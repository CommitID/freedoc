# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 250.times do  1001
#   patients = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end

# 50.times do 151
#   doctors = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: ["allergologie", "andrologie", "cardiologie", "orthopédie", "dermatologie", "endocrinologie", "neurologie", "chiropratie", "ophtalmologie", "psychiatrie"].sample, zip_code: Faker::Number.number(digits: 5))
# end

#appointment_doctor_patient = Appointment.create(date: Faker::Date.in_date_period, doctor_id: rand(1..151), patient_id: rand(1..1001)) 

#city_doctor_patient_appointment = City.create(name: Faker::Address.city)

30.times do 
  city = City.create!(name: Faker::Address.city)
end

10.times do
  specialty = Specialty.create!(name: Faker::Cannabis.medical_use)
end

100.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: rand(1..30))
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..30))
end

100.times do 
  join = JoinDoctorSpecialty.create!(doctors_id: rand(1..100), specialties: rand(1..10))
end

50.times do 
  rdv = Appointment.create!(date: Faker::Date.in_date_period, doctor_id: rand(1..100), patient_id: rand(1..100),city_id: rand(1..30))
end