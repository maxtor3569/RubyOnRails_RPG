class CreateTaks < ActiveRecord::Migration
  def change
    create_table :taks do |t|

      t.timestamps null: false
    end
  end
end
