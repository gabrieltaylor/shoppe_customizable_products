module Shoppe
  class CustomizationType < ActiveRecord::Base
    self.table_name = 'shoppe_customization_types'
    belongs_to :product
    has_many :customization_values, :dependent => :destroy

    accepts_nested_attributes_for :customization_values, :allow_destroy => true
  end
end
