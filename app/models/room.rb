class Room < ActiveRecord::Base
  has_many :screenshots, :dependent => :destroy, :order => "position"

  def first_screen(style = :large)
    if self.screenshots.blank?
      '../zuzher/assets/default_room.png'
    else
      ss = self.screenshots.to_a


      logger.info("======#{}")
    end
  end


end