class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :device_token
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
