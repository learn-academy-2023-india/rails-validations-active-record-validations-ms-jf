class CreateAccountMsJfs < ActiveRecord::Migration[7.1]
  def change
    create_table :account_ms_jfs do |t|
      t.string :username
      t.integer :password
      t.string :email

      t.timestamps
    end
  end
end
