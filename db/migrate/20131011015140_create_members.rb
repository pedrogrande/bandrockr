class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
