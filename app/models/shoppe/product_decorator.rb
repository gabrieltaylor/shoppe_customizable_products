module Shoppe
  Product.class_eval do
    has_many :customization_types, :class_name => 'Shoppe::CustomizationType'
  end
end
