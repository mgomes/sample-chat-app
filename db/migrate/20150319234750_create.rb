class Create < ActiveRecord::Migration
  def change
    create_table :button_presses do |t|
      t.string :presser_name
      t.timestamps
    end
  end
end
