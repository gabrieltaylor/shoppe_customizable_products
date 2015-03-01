class AddCustomisationType < ActiveRecord::Migration
  def change
    create_table "shoppe_customization_types", force: true do |t|
      t.integer  "product_id"
      t.string   "name"
      t.boolean  "is_required",         default: false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "position",            default: 0
    end
  end
end
