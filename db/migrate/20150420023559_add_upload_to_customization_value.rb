class AddUploadToCustomizationValue < ActiveRecord::Migration
  def change
    add_column :upload_file_name, :string
    add_column :upload_content_type, :string
    add_column :upload_file_size, :integer
    add_column :upload_updated_at, :datetime
  end
end
