class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :member, index: true

      t.timestamps null: false
    end
    add_foreign_key :messages, :members
  end
end
