class AddImageToPreviews < ActiveRecord::Migration[5.1]
  def change
    add_column :previews, :image, :string
  end
end
