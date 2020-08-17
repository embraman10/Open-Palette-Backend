class Colorizer < ApplicationRecord


def self.font_style
    url = "https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyCw1JW5PZLjsJnnJfKJcQhaG3petm1SZ48"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    parsed = JSON.parse(response.body)
    parsed["files"]
end

def self.background
    url = "https://unpkg.com/color-name-list@6.10.1/dist/colornames.json"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    parsed = JSON.parse(response.body)
    parsed["name"]
end

# def self.framestyle
# end

# def self.font_color
# end

end
