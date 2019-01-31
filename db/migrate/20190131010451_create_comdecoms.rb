class CreateComdecoms < ActiveRecord::Migration[5.2]
  def change
    create_table :comdecoms do |t|
      t.belongs_to :user, index: true
      t.belongs_to :commentaire, index: true
      t.string :content

      t.timestamps
    end
  end
end
