module TelegramBot
  class PhotoSize
    include Virtus.model
    attribute :file_id, String
    attribute :width, Integer
    attribute :height, Integer
    attribute :file_size, Integer

    alias_method :id, :file_id
  end
end
