class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.belongs_to :user, foreign_key: true
      t.string :company_email 
      t.string :company_website
      t.string :company_phone
      t.string :company_address
      t.string :company_state
      t.string :company_city
      t.integer :company_zip
      t.timestamps
    end
  end
end
