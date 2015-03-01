module Shoppe
  Product.class_eval do
    has_many :customization_types, through: :product_customization_types
  end
end
