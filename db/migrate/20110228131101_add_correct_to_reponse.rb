class AddCorrectToReponse < ActiveRecord::Migration
  def self.up
    add_column :reponses, :correct, :boolean
  end

  def self.down
    remove_column :reponses, :correct
  end
end
