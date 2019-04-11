class CreatePowersWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :powers_weights do |t|
      t.integer :archetype_id
      t.integer :more_damage
      t.integer :prevent_damage
      t.integer :super_stealth
      t.integer :mind_control
      t.integer :super_senses

      t.timestamps
    end
  end
end

# Powers are weighted with integers reflecting priority:
# high = 5, one power selected
# medium = 3, one power selected
# low = 1, two powers selected
# none = 0, one power selected
# TOTAL: 10 points, each point being 10% allocation for character creation
