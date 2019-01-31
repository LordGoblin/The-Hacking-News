class CreateLiens < ActiveRecord::Migration[5.2]
  def change
    create_table :liens do |t|
      t.belongs_to :user, index: true
      t.string :http

      t.timestamps
    end
  end
end
