module Shoppe
  class CustomizationValue < ActiveRecord::Base
    self.table_name = 'shoppe_customization_values'
    belongs_to :customization_type
  end
end
