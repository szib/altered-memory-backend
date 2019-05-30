class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :name
      t.integer :score
      t.integer :time

      t.timestamps
    end
  end
end
