class CreateItems < ActiveRecord::Migration[5.1]

  def change
    drop_table :items
    create_table :items do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
