class AddCityIdColumnToPatientTable < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :city_id, :string
  end
end
