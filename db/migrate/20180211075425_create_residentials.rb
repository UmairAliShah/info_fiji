class CreateResidentials < ActiveRecord::Migration[5.1]
  def change
    create_table :residentials do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :skype
      t.string :whatsapp
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
