# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user|
  user.password = Rails.application.secrets.admin_password
  user.password_confirmation = Rails.application.secrets.admin_password
  user.admin!
  puts 'CREATED ADMIN USER: ' << user.email
  puts 'PASSWORD: ' << user.password

end

Web.find_or_create_by!(name: 'Blob') do |web|
  web.address = 'blob'
  
  puts 'CREATED BLOB WIKI: ' << web.name
  puts 'ADDRESS ' << web.address
end


