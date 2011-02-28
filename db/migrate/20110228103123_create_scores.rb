class CreateScores < ActiveRecord::Migration
  def self.up
    create_table :scores do |t|
      t.integer :id
      t.integer :id_utilisateur
      t.integer :id_questionnaire
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :scores
  end
end
