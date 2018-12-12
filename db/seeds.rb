# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


GROUP_NAME = 10.times.map { Faker::Internet.company }

puts GROUP_NAME

SPLIT = 0.4
OFFSET = GROUP_NAME.length * SPLIT

COMPANY_USERS = {
  'guy@company.com' => GROUP_NAME[0, OFFSET],
  'guy2@company.com' => GROUP_NAME[OFFSET..-1]
}

COMPANY_USERS.each do |email, company|
  user = User.new(email: email, password: '123123')
  company.each { |}
end
