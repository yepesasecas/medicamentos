# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131001213710) do

  create_table "amounts", force: true do |t|
    t.integer  "cantidad"
    t.string   "unidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "durations", force: true do |t|
    t.string   "duracion"
    t.integer  "dias_duracion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frequencies", force: true do |t|
    t.string   "frecuencia"
    t.integer  "horas_frecuencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "nombre_uno",          null: false
    t.string   "nombre_dos"
    t.string   "apellido_uno",        null: false
    t.string   "apellido_dos"
    t.integer  "documento_identidad", null: false
    t.date     "fecha_nacimiento",    null: false
    t.integer  "edad",                null: false
    t.string   "telefono",            null: false
    t.string   "celular"
    t.string   "email"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
