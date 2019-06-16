class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, id: :uuid do |t|
      t.belongs_to :user, type: :uuid, null: false, index: true, foreign_key: { to_table: :users }
      t.belongs_to :store, type: :uuid, optional: true, index: true, foreign_key: { to_table: :stores }
      t.string :name

      t.timestamps
    end
  end
end
