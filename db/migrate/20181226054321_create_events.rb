class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :lokasi
      t.string :jenis
      t.text :deskripsi

      t.timestamps
    end
  end
end
