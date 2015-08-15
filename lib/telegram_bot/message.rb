module TelegramBot
  class Message
    include Virtus.model
    attribute :message_id, Integer
    attribute :from, User
    attribute :date, DateTime
    attribute :chat, Channel
    attribute :forward_from, User
    attribute :forward_date, DateTime
    attribute :reply_to_message, Message
    attribute :text, String
    attribute :caption, String
    attribute :location, Location
    attribute :new_chat_participant, User
    attribute :left_chat_participant, User
    attribute :new_chat_title, String
    attribute :delete_chat_photo, Boolean
    attribute :group_chat_created, Boolean
    alias_method :id, :message_id
    alias_method :to_i, :id
    alias_method :user, :from

    def reply(&block)
      reply = OutMessage.new(chat: chat)
      yield reply if block_given?
      reply
    end

    def get_command_for(bot)
      text && text.sub(Regexp.new("@#{bot.identity.username}($|\s|\.|,)", Regexp::IGNORECASE), '').strip
    end
  end
end
