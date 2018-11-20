# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create!(email: 'mia@bubblewellness.com', first_name: 'Mia', admin: true, password: 'password', password_confirmation: 'password')
#User.create!(email: 'therapist@gmail.com', first_name: 'Sally', admin: false, therapist: true, password: 'password', password_confirmation: 'password')
#User.create!(email: 'user@gmail.com', first_name: 'Joe', admin: false, password: 'password', password_confirmation: 'password')
# Gender.create(name: 'cis woman')
# Gender.create(name: 'cis man')
# Gender.create(name: 'trans woman')
# Gender.create(name: 'trans man')
# Gender.create(name: 'non-binary')
# Gender.create(name: 'other')
#
# Race.create(name: 'black')
# Race.create(name: 'asian')
# Race.create(name: 'hispanic')

TherapyFormat.create(name: 'In Person')
TherapyFormat.create(name: 'Virtual')

TherapyIntegration.create(name: 'Art')
TherapyIntegration.create(name: 'Movement')
TherapyIntegration.create(name: 'Animals')

TherapyReason.create(name: 'Addiction')
TherapyReason.create(name: 'Anger')
TherapyReason.create(name: 'Anxiety')
TherapyReason.create(name: 'Career')

TherapyType.create(name: 'Coaching')
TherapyType.create(name: 'Couples Therapy')
TherapyType.create(name: 'Group Therapy')
