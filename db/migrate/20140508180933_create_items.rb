class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :listID
      t.text :stuff

      t.timestamps
    end
  end
end
