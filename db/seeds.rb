# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
email = SETTING['admin']['email']
pwd = SETTING['admin']['password']

unless User.find_by_email(email)
	User.create({email:email,password:pwd,password_confirmation:pwd})
end
