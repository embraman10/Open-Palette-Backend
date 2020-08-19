
require 'open-uri'
require 'net/http'
require 'json'
require 'rest-client'
require 'httparty'
require 'faker'


User.destroy_all
BackgroundColorChanger.destroy_all
UserPalette.destroy_all


10.times do
    User.create(name: Faker::FunnyName.name, email: Faker::Internet.email, password: "password")
end



colorData = RestClient.get "https://unpkg.com/color-name-list@6.10.1/dist/colornames.json"
colorDataArray = JSON.parse(colorData)


colorDataArray.each do |object|
    BackgroundColorChanger.create(
    colorHex: object["hex"]
    )
end
