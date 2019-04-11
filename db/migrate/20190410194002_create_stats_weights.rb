class CreateStatsWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :stats_weights do |t|
      t.integer :archetype_id
      t.integer :charisma
      t.integer :dexterity
      t.integer :intelligence
      t.integer :stamina
      t.integer :strength_magic
      t.integer :wisdom_awareness

      t.timestamps
    end
  end
end

# Stats are weighted with integers reflecting priority:
# high = 5, one stat selected
# medium = 3, one stat selected
# low = 1, two stats selected
# none = 0, two stats selected
# TOTAL: 10 points, each point being 10% allocation for character creation
