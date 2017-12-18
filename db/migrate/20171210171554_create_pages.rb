class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :surname
      t.string :nikname
      t.integer :age

      t.timestamps
    end
  end
end
