class AddMsGenderToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :ms_gender, index: true
  end
end
