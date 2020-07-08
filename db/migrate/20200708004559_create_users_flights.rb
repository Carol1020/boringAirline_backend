class CreateUsersFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :users_flights, :id => false do |t|
    end
  end
end
