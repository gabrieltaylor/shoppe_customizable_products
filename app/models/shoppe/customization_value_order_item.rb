module Shoppe
  class CustomizationValueOrderItem  < ActiveRecord::Base
    self.table_name = 'shoppe_customization_value_order_items'
    belongs_to :customization_value
    belongs_to :order_item
  end
end
