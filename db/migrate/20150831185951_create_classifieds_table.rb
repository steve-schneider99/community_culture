class CreateClassifiedsTable < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.column :category, :string
      t.column :subcategory, :string
      t.column :price, :float
      t.column :rate, :boolean
      t.column :title, :string
      t.column :description, :text
      t.column :alternate_email, :string
      t.column :alternate_phone, :string
      t.column :user_id, :integer
      t.timestamps
    end
  end
end
