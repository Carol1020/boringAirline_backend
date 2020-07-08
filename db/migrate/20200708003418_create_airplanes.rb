class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :name
      t.text :row
      t.text :column

      t.timestamps
    end
  end
end
