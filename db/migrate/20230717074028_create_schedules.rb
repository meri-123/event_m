class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :event do |t|
      t.string :name
      t.string :phn_no
      t.string :email
      t.datetime :start_date
      t.datetime :end_date
  
      t.timestamps
    end
  end
end
