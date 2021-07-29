class AddCityIdColumnToDoctorTable < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :city_id, :string
  end
end
