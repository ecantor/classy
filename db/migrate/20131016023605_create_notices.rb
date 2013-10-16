class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :destination
      t.string :message
      t.string :note

      t.timestamps
    end
  end
end
