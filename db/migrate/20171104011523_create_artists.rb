class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
