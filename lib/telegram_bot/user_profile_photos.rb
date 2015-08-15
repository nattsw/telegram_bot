module TelegramBot
  class UserProfilePhotos
    include Virtus.model
    attribute :total_count, Integer
    attribute :photos, Array[Array[PhotoSize]]
  end
end
