class CreateMsGenders < ActiveRecord::Migration
  def change
    create_table :ms_genders do |t|
      t.string :name
      t.boolean :is_active
      t.references :user, index: true

      t.timestamps
    end
  end
end
