module Shoppe
  class CustomizationValue < ActiveRecord::Base
    self.table_name = 'shoppe_customization_values'
    belongs_to :customization_type, :class_name => 'Shoppe::CustomizationType'
  end
end
