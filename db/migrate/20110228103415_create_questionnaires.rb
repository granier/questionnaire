class CreateQuestionnaires < ActiveRecord::Migration
  def self.up
    create_table :questionnaires do |t|
      t.integer :id
      t.string :titre
      t.integer :niveau_difficulte
      t.integer :cout
      t.integer :gain
      t.integer :id_categorie
      t.integer :popularite

      t.timestamps
    end
  end

  def self.down
    drop_table :questionnaires
  end
end
