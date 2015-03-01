module Shoppe
  class CustomizationValueOrderItem  < ActiveRecord::Base
    belongs_to :customization_value
    belongs_to :order_item
  end
end
