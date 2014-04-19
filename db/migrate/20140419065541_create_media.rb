class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :media_type_id
      t.integer :user_id
      t.string :title

      t.timestamps
    end
	add_index :media, [:user_id, :media_type_id, :created_at]
  end
end
