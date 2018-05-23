class AddAboutMeToContactInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_infos, :about_me, :text
  end
end
