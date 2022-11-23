class Registry < ApplicationRecord
    validates :name, uniqueness: {case_sensitive: false}, allow_blank: false
    validates :location, uniqueness: {case_sensitive: false}, allow_blank: false
    belongs_to :participant
    belongs_to :coordinator
    
end
