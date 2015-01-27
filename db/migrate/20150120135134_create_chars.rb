class CreateChars < ActiveRecord::Migration
  def change
    create_table :chars do |t|

      t.timestamps null: false
    end
  end
end
