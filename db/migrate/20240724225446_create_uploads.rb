class CreateUploads < ActiveRecord::Migration[7.1]
  def change
    create_table :uploads, id: :uuid do |t|
      t.string :name
      t.boolean :delete_first_download
      t.string :password_hash

      t.timestamps
    end
  end
end
