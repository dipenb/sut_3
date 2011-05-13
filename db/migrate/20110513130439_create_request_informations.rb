class CreateRequestInformations < ActiveRecord::Migration
  def self.up
    create_table :request_informations do |t|
      t.string :request_id
      t.string :opentok_id
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :request_informations
  end
end
