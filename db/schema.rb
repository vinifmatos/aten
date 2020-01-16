# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_16_161352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assuntos", force: :cascade do |t|
    t.string "descricao"
    t.bigint "tipo_atendimento_id", null: false
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tipo_atendimento_id"], name: "index_assuntos_on_tipo_atendimento_id"
  end

  create_table "atendimentos", force: :cascade do |t|
    t.integer "numero"
    t.integer "ano"
    t.bigint "assunto_id", null: false
    t.datetime "data_abertura"
    t.datetime "data_finalizacao"
    t.datetime "data_arquivamento"
    t.text "texto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assunto_id"], name: "index_atendimentos_on_assunto_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "descricao"
    t.bigint "sudordinacao_adm_id"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sudordinacao_adm_id"], name: "index_departamentos_on_sudordinacao_adm_id"
  end

  create_table "tipo_atendimentos", force: :cascade do |t|
    t.string "descricao"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["username"], name: "index_usuarios_on_username", unique: true
  end

  add_foreign_key "assuntos", "tipo_atendimentos"
  add_foreign_key "atendimentos", "assuntos"
  add_foreign_key "departamentos", "departamentos", column: "sudordinacao_adm_id"
end
