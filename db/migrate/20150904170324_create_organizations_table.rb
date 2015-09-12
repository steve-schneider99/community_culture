class CreateOrganizationsTable < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string  :business_type
      t.string  :business_name
      t.string  :business_address
      t.string  :business_phone
      t.string  :business_email
    end
  end
end
