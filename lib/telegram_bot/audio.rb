module TelegramBot
  class Audio
    include Virtus.model
    attribute :file_id, String
    attribute :duration, Integer
    attribute :mime_type, String
    attribute :file_size, Integer

    alias_method :id, :file_id
  end
end
