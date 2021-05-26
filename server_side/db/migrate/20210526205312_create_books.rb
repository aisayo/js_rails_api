class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.string :publish_date
      t.integer :page_count
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
