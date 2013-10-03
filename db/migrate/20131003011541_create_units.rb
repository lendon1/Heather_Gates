class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.text :tax_assesor_id
      t.text :legal_owner
      t.text :building
      t.text :unit

      t.timestamps
    end
  end
end
