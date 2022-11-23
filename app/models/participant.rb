class Participant < ApplicationRecord
    validates :name, length: {maximum: 16}, allow_blank: false
    validates :gender, format: { with: /\A^male$|^female$\z/ }, allow_blank: false
    validates :date_of_birth, format: { with: /\A^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$\z/ }, allow_blank: false
    has_many :registries 
    has_many :coordinators, through: :registries
   
end
