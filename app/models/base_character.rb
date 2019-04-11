class BaseCharacter < ApplicationRecord
  belongs_to :user
  belongs_to :search_preference
  belongs_to :archetype
end
