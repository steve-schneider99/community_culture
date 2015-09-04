class CreatePointsTable < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string  :business_type
      t.string  :business_name
      t.string  :business_address
      t.string  :business_phone
      t.string  :business_email
      t.string  :title
      t.text    :description
      t.integer :point_value
      t.boolean :rate?
      t.string  :earning_method
    end
  end
end
