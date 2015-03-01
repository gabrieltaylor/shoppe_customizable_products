module Shoppe
  class CustomizationValue < ActiveRecord::Base
    belongs_to :customization_type
  end
end
