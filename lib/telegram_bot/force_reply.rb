module TelegramBot
  class ForceReply
    include Virtus.model
    attribute :force_reply, TrueClass
    attribute :photos, Array[Array[PhotoSize]]
  end
end
