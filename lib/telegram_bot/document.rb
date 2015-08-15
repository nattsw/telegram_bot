module TelegramBot
  class Document
    include Virtus.model
    attribute :file_id, String
    attribute :thumb, PhotoSize
    attribute :file_name, String
    attribute :mime_type, String
    attribute :file_size, Integer

    alias_method :id, :file_id
  end
end
