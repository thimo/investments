class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :account, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :timezone
      t.jsonb :settings

      t.timestamps
    end
  end
end
