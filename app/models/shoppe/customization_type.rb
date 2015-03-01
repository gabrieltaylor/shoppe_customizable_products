module Shoppe
  class CustomizationType < ActiveRecord::Base
    self.table_name = 'shoppe_customization_types'
    belongs_to :product, :class_name => 'Shoppe::Product'
    has_many :customization_values, :dependent => :destroy, :class_name => 'Shoppe::CustomizationValue'

    accepts_nested_attributes_for :customization_values, :allow_destroy => true
  end
end
