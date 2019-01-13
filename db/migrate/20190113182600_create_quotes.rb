class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :body
      t.string :source

      t.timestamps
    end
  end
end
