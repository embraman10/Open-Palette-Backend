
require 'open-uri'
require 'net/http'
require 'json'
require 'rest-client'
require 'httparty'
require 'faker'

# Colorizer.destroy_all
# rm = RestClient.get 'https://unpkg.com/color-name-list@6.10.1/dist/colornames.json'
# rm_array = JSON.parse(rm)["hex"]

# rm_array.each do |colors|
#     Colorizer.create(background: colors["name"], font_style: hex["hex"])
# end


# Colorizer.create(font_style: Colorizer.font_style)

# easy_response= HTTParty.get('https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyCw1JW5PZLjsJnnJfKJcQhaG3petm1SZ48')
# easy_hash = easy_response.to_hash

# easy_hash.each do |response|
#     Colorizer.create(font_style: response)
# end


# easy_hash['results'].each do |fonts|
#     Colorizer.create(font_style: fonts["family"])
# end

FontChanger.destroy_all
BackgroundColorChanger.destroy_all
User.destroy_all

# ****** Font Changer Information ******
fontData = RestClient.get "https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyCw1JW5PZLjsJnnJfKJcQhaG3petm1SZ48"
fontDataArray = JSON.parse(fontData)["items"]

fontDataArray.each do |object|
    FontChanger.create(
    fontFamily: object["family"]
    )
end


# ****** Colorizer Information ******
colorData = RestClient.get "https://unpkg.com/color-name-list@6.10.1/dist/colornames.json"
colorDataArray = JSON.parse(colorData)

#people.each { |person| puts person[:salary] }
colorDataArray.each do |object|
    BackgroundColorChanger.create(
    colorHex: object["hex"]
    )
end


# ****** User Information ******

10.times do
    User.create(email: Faker::Internet.email, password: "password")
end