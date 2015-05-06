class CreateComments < ActiveRecord::Migration
  def change

    create_table :comments do |t|
      t.text :sxolio
      t.integer :secret_id

      t.timestamps null: false
    end
  end
end
