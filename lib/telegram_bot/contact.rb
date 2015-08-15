module TelegramBot
  class Contact
    include Virtus.model
    attribute :phone_number, String
    attribute :first_name, String
    attribute :last_name, String
    attribute :user_id, Integer

    alias_method :id, :user_id
    alias_method :to_i, :id
  end
end
