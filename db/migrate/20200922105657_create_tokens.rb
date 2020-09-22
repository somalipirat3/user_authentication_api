class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.boolean :status
      t.string :key
      t.timestamp :exp

      t.timestamps
    end
  end
end
