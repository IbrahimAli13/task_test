class Coordinator < ApplicationRecord
   validates :email, format: {with:URI::MailTo::EMAIL_REGEXP}, uniqueness: {case_sensitive: false}, allow_blank: false
   validates :name, length: {maximum: 16}, allow_blank: false
   validates :phone, format: { with: /\A\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*\z/ }, allow_blank: false

    has_many :registries 
    has_many :participants, through: :registries

end
