class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.timestamps
      t.text :content
      t.integer :rate
    end
  end
end
