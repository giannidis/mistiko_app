class AddPlaceToSecrets < ActiveRecord::Migration
  def change
    add_column :secrets, :check_in, :string
  end
end
