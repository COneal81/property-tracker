# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User
kevin = User.find_or_create_by(email: "k@k.com", password: "test123")
wyatt = User.find_or_create_by(email: "w@w.com", password: "test123")

#Rental Property

red_house = RentalProperty.find_or_create_by(property_name: "", description: "", address: "", monthly_rental_amount: "", 
deposit_amount: "", square_feet: "", leased: "", contract_start_date: "", contract_end_date: "", user: "")

green_house = RentalProperty.find_or_create_by(property_name: "", description: "", address: "", monthly_rental_amount: "", 
deposit_amount: "", square_feet: "", leased: "", contract_start_date: "", contract_end_date: "", user: "")

blue_house = RentalProperty.find_or_create_by(property_name: "", description: "", address: "", monthly_rental_amount: "", 
deposit_amount: "", square_feet: "", leased: "", contract_start_date: "", contract_end_date: "", user: "")

tan_house = RentalProperty.find_or_create_by(property_name: "", description: "", address: "", monthly_rental_amount: "", 
deposit_amount: "", square_feet: "", leased: "", contract_start_date: "", contract_end_date: "", user: "")

#Tentant
kari = Tentant.find_or_create_by(name_1: "", name_2: "", name_3: "", address: "", email_1: "", email_2: "", email_3: "", 
phone_1: "", phone_2: "", phone_3: "", payment_date: "", deposit_amount_paid: "", monthly_rental_amount_due: "", rental_property_id: "")

hudson = Tentant.find_or_create_by(name_1: "", name_2: "", name_3: "", address: "", email_1: "", email_2: "", email_3: "", 
phone_1: "", phone_2: "", phone_3: "", payment_date: "", deposit_amount_paid: "", monthly_rental_amount_due: "", rental_property_id: "")

griffin = Tentant.find_or_create_by(name_1: "", name_2: "", name_3: "", address: "", email_1: "", email_2: "", email_3: "", 
phone_1: "", phone_2: "", phone_3: "", payment_date: "", deposit_amount_paid: "", monthly_rental_amount_due: "", rental_property_id: "")



#Payment

pay_1 = Payment.find_or_create_by(amount_owed: "", amount_paid: "", due_date: "", rental_property_id: "")
pay_2 = Payment.find_or_create_by(amount_owed: "", amount_paid: "", due_date: "", rental_property_id: "")
pay_3 = Payment.find_or_create_by(amount_owed: "", amount_paid: "", due_date: "", rental_property_id: "")
pay_4 = Payment.find_or_create_by(amount_owed: "", amount_paid: "", due_date: "", rental_property_id: "")



#Repair

repair_1 = Repair.find_or_create_by(repair_needed: "", description: "", repair_cost: "", repair_completed: "", rental_property_id:"")
repair_2 = Repair.find_or_create_by(repair_needed: "", description: "", repair_cost: "", repair_completed: "", rental_property_id:"")
repair_3 = Repair.find_or_create_by(repair_needed: "", description: "", repair_cost: "", repair_completed: "", rental_property_id:"")
repair_4 = Repair.find_or_create_by(repair_needed: "", description: "", repair_cost: "", repair_completed: "", rental_property_id:"")
