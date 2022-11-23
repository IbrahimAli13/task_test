class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.string :coordinator_id
      t.string :participant_id
      t.string :name
      t.string :location
      t.boolean :state

      t.timestamps
    end
  end
end
