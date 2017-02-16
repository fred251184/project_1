class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :description
      t.boolean :is_active
      t.references :user, index: true

      t.timestamps
    end
  end
end
