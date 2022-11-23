class CreateCoordinators < ActiveRecord::Migration[7.0]
  def change
    create_table :coordinators do |t|
      t.string :email
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
