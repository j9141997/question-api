class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.boolean :public, default: true, null: false
      t.string :account_id, null: false
      t.timestamps
    end
    add_foreign_key :questions, :accounts
    add_index :questions, :account_id
  end
end
