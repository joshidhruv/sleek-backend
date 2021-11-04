class CreateRetailers < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'
    enable_extension 'plpgsql'
    enable_extension 'uuid-ossp'
    create_table :retailers, id: :uuid do |t|
      t.string :name
      t.string :domains, array: true, default: []

      t.timestamps
    end
  end
end
