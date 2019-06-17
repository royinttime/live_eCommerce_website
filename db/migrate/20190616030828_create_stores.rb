class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores, id: :uuid do |t|
      t.belongs_to :user, type: :uuid, null: false, index: true, foreign_key: { to_table: :users }
      t.string :name

      t.timestamps
    end
  end
end
