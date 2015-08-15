module TelegramBot
  class OutMessage
    include Virtus.model
    attribute :chat, Channel
    attribute :text, String
    attribute :disable_web_page_preview, Boolean
    attribute :reply_to_message_id, Integer
    attribute :reply_markup, ReplyKeyboardMarkup

    attribute :chat_id, Integer
    attribute :from_chat_id, Integer
    attribute :message_id, Integer
    attribute :audio, InputFile
    attribute :duration, Integer
    attribute :document, InputFile
    attribute :photo, InputFile
    attribute :caption, String
    attribute :sticker, InputFile
    attribute :video, InputFile
    attribute :latitude, Float
    attribute :longitude, Float
    attribute :reply_to_message_id, Integer
    attribute :reply_markup, ReplyKeyboardMarkup

    def send_with(bot)
      bot.send_message(self)
    end

    def send_location_with(bot)
      bot.send_message(self, action: :sendLocation)
    end

    def chat_friendly_name
      chat.friendly_name
    end

    def to_h
      hash = {}
      instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
      hash["chat_id"] = chat.id
      hash
    end

  end
end
