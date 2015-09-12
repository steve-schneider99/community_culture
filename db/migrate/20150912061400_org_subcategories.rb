class OrgSubcategories < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string  :type
      t.string  :title
      t.string  :description
      t.string  :location
      t.integer :points_rate
      t.integer :duration
      t.integer :positions_needed
      t.integer :organization_id
      t.timestamps
    end

    create_table :donations do |t|
      t.string  :title
      t.string  :description
      t.string  :category
      t.string  :points_value
      t.integer :organization_id
      t.timestamps
    end

    create_table :surveys do |t|
      t.string  :title
      t.integer :organization_id
    end

    create_table :survey_questions do |t|
      t.string  :question
      t.string  :option_a
      t.string  :option_b
      t.string  :option_c
      t.string  :user_answer
      t.integer :survey_id
    end
  end
end
