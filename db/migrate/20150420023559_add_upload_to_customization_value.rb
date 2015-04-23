class AddUploadToCustomizationValue < ActiveRecord::Migration
  def change
    add_column :shoppe_customization_values, :upload_file_name, :string
    add_column :shoppe_customization_values, :upload_content_type, :string
    add_column :shoppe_customization_values, :upload_file_size, :integer
    add_column :shoppe_customization_values, :upload_updated_at, :datetime
  end
end
