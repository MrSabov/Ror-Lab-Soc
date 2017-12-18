class AddImageToForums < ActiveRecord::Migration[5.1]
  def change
    add_column :forums, :image, :string
  end
end
