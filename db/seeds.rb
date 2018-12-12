# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


GROUP_NAME = 10.times.map { Faker::Company.name }

SPLIT = 0.4
OFFSET = GROUP_NAME.length * SPLIT

GROUP_USERS = {
  'inv@group.com' => GROUP_NAME[0, OFFSET],
  'inv2@group.com' => GROUP_NAME[OFFSET..-1]
}

GROUP_USERS.each do |email, group|
  user = User.new(email: email, password: '123123')
  user.save
  group.each { |name| user.groups.create(name: name) }
end

p "User count: #{User.count}"
p "Group count:' #{Group.count}"
p "Groups per User #{Group.group(:user_id).count}"
