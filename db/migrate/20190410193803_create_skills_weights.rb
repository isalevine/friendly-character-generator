class CreateSkillsWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :skills_weights do |t|
      t.integer :archetype_id
      t.integer :athletics_dodge
      t.integer :awareness
      t.integer :deception
      t.integer :feats_of_strength
      t.integer :intimidation
      t.integer :investigation
      t.integer :larceny_crime
      t.integer :magic_computer
      t.integer :performance
      t.integer :persuasion
      t.integer :socialize
      t.integer :stealth

      t.timestamps
    end
  end
end

# Skills are weighted with integers reflecting priority:
# high = 5, two skills selected
# medium = 3, two skills selected
# low = 1, four skills selected
# none = 0, four skills selected
# TOTAL: 20 points, each point being 5% allocation for character creation
