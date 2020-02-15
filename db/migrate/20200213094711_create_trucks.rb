class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.text :applicant
      t.text :optionaltext
      t.string :start24
      t.string :end24
      t.text :location
      t.text :locationdesc

      t.timestamps
    end
  end
end
