# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110228131101) do

  create_table "categories", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaires", :force => true do |t|
    t.string   "titre"
    t.integer  "niveau_difficulte"
    t.integer  "cout"
    t.integer  "gain"
    t.integer  "id_categorie"
    t.integer  "popularite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.integer  "id_questionnaire"
    t.string   "texte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reponses", :force => true do |t|
    t.string   "texte"
    t.integer  "id_question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "correct"
  end

  create_table "scores", :force => true do |t|
    t.integer  "id_utilisateur"
    t.integer  "id_questionnaire"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utilisateurs", :force => true do |t|
    t.string   "nom"
    t.string   "email"
    t.string   "mdp"
    t.boolean  "statut"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
