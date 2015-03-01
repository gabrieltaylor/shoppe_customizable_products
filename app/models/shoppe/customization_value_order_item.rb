module Shoppe
  class CustomizationValueOrderItem  < ActiveRecord::Base
    self.table_name = 'shoppe_customization_value_order_items'
    belongs_to :customization_value, :class_name => 'Shoppe::CustomizationValue'
    belongs_to :order_item, :class_name => 'Shoppe::OrderItem'
  end
end
