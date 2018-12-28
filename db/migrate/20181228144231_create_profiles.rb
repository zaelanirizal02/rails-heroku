class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :nama
      t.text :deskripsi

      t.timestamps
    end
  end
end
