class AddMsidAndZipToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :msid, :string
    add_column :feedbacks, :zip, :string
  end
end
