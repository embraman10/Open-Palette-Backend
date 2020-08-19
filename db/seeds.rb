
require 'open-uri'
require 'net/http'
require 'json'
require 'rest-client'
require 'httparty'



BackgroundColorChanger.destroy_all
User.destroy_all


colorData = RestClient.get "https://unpkg.com/color-name-list@6.10.1/dist/colornames.json"
colorDataArray = JSON.parse(colorData)


10.times do
    User.create(name: Faker::FunnyName.name, email: Faker::Internet.email, password: "password")
end


colorDataArray.each do |object|
    BackgroundColorChanger.create(
    colorHex: object["hex"]
    )
end