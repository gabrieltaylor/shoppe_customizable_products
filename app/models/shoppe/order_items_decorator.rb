module Shoppe
  OrderItem.class_eval do
    has_many :customization_value_order_items, :dependent => :destroy
    has_many :customization_values, :through => :customization_value_order_items
  end
end
