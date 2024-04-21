# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

["Pepe", "Jane", "John", "Jane"].each do |name|
  User.find_or_create_by!(name: name, surname: "teste", email: name.downcase.gsub(" ", "_") + "@example.com", phone: "1234567890", password: "password")
end

["Olá tudo bem?", "Gostaria de saber sobre seu produto", "Qual o valor do produto?", "O produto está disponível?"].each do |content|
  Message.find_or_create_by!(textMsg: content, user_id: User.first.id, scheduleDate: Time.now.strftime('%Y-%m-%d %H:%M:%S'), createDate: Time.now.strftime('%Y-%m-%d %H:%M:%S'), whatsappNumber: "1234567890")
end
