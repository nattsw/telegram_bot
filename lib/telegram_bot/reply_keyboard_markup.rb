module TelegramBot
  class ReplyKeyboardMarkup
    include Virtus.model
    attribute :keyboard, Array[Array[String]]
    attribute :resize_keyboard, Boolean
    attribute :one_time_keyboard, Boolean
    attribute :selective, Boolean
  end
end
