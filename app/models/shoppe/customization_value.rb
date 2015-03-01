module Shoppe
  class CustomizationValue < ActiveRecord::Base
    self.table_name = 'shoppe_customization_value'
    belongs_to :customization_type
  end
end
