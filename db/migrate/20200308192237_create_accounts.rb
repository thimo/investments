class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :locale
      t.string :currency
      t.jsonb :settings

      t.timestamps
    end
  end
end
