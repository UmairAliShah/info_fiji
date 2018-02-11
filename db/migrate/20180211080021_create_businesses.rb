class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :company_name
      t.string :email
      t.string :skype
      t.string :fax
      t.string :website
      t.string :about
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
