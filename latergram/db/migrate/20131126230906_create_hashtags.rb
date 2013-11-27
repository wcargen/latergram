class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
