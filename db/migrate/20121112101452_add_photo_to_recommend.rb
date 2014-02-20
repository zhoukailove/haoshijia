class AddPhotoToRecommend < ActiveRecord::Migration
  def change
    add_column :recommends, :photo, :string
  end
end
