class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :url
      t.decimal :rating
      t.integer :ratings_num
      t.string :image_url

      t.timestamps
    end
  end
end
