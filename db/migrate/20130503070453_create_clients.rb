class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :romaji_name
      t.string :tel
      t.string :department_name
      t.integer :contract_flg
      t.integer :contract_type
      t.integer :del_flg, default: 1
      t.integer :create_usr_id
      t.integer :update_usr_id

      t.timestamps
    end
    add_index :clients, :client_name, unique: true
    add_index :clients, :romaji_name, unique: true
  end
end
