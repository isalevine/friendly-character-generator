class Archetype < ApplicationRecord
  has_many :base_characters
  belongs_to :search_list
  belongs_to :skills_weight
  belongs_to :stats_weight
  belongs_to :powers_weight
end
