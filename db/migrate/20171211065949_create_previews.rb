class CreatePreviews < ActiveRecord::Migration[5.1]
  def change
    create_table :previews do |t|
      t.string :title
      t.text :summary
      t.text :body

      t.timestamps
    end
  end
end
