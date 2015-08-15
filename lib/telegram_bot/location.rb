module TelegramBot
  class Location
    include Virtus.model
    attribute :longitude, Float
    attribute :latitude, Float
  end
end
