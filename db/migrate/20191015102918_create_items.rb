class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :siteurl
      t.string :imageurl
      t.string :google_driveurl
      t.integer :price
      t.integer :click, default: 0
      t.boolean :delete_flg, default: false
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.references :ecsite, foreign_key: true
      t.timestamps
    end
  end
end
