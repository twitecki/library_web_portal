class AddCardNumber < ActiveRecord::Migration
  def change
		add_column :users, :card_number, :integer
  end
end
