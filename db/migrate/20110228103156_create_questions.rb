class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :id
      t.integer :id_questionnaire
      t.string :texte

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
