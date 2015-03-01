class AddCustomizationValue < ActiveRecord::Migration
  def change
    create_table "shoppe_customization_values", force: true do |t|
      t.integer  "customization_type_id"
      t.string   "value"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
