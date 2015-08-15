module TelegramBot
  class ReplyKeyboardHide
    include Virtus.model
    attribute :hide_keyboard, TrueClass
    attribute :selective, Boolean
  end
end
