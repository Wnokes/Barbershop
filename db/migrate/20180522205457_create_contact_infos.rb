class CreateContactInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_infos do |t|
      t.string :email
      t.string :phone
      t.string :facebook
      t.string :instagram
      t.string :linkedin
      t.string :twitter
      t.string :scheduler

      t.timestamps
    end
  end
end
