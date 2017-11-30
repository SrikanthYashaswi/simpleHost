class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.integer :diary_id
      t.string :name
      t.string :content
      t.timestamps
    end
    add_foreign_key :thoughts,:diaries,columnn: :diary_id
  end
end
