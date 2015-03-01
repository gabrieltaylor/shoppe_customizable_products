module Shoppe
  OrderItem.class_eval do
    has_many :customization_value_order_items, :dependent => :destroy, :class_name => 'Shoppe::CustomizationValueOrderItem'
    has_many :customization_values, :through => :customization_value_order_items, :class_name => 'Shoppe::CustomizationValue'
  end
end
