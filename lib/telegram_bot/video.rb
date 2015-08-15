module TelegramBot
  class Video
    include Virtus.model
    attribute :file_id, String
    attribute :width, Integer
    attribute :height, Integer
    attribute :duration, Integer
    attribute :thumb, PhotoSize
    attribute :mime_type, String
    attribute :file_size, Integer

    alias_method :id, :file_id
  end
end
