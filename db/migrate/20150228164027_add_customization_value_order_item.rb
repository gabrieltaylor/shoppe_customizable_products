class AddCustomizationValueOrderItem < ActiveRecord::Migration
  def change
    create_table "shoppe_customization_value_order_items", force: true do |t|
      t.integer  "order_item_id"
      t.integer  "customization_value_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
