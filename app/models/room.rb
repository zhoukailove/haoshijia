class Room < ActiveRecord::Base
  validates_presence_of :title
  has_many :screenshots,  :dependent => :destroy



  searchable do
    text :title,:traffic,:life_assort,:scenery
    #,:other_desc,:detail
    time :updated_at
    string :publish_month
    boolean :available
    integer :state
    integer :screenshots_count

  end

  def publish_month
    updated_at.strftime("%B %Y")
  end



#def available?
#  state == :available
#end

  #查找本地图片路径，以便显示图片信息
  require 'find'
  def findpath(files)
    @path = "#{ENV["BUNDLE_GEMFILE"].sub(/Gemfile/,"")}public/photo/"
    small = []
    large = []
    Find.find(@path) do |path|
      unless FileTest.directory?(path)
        files.each do |file|

        if File.basename(path) == file.photo
          #p findfile = findfile.push("#{File.dirname(path)}/#{File.basename(path)}")
          # findfile[0,38] = "http://zuzher.com"
          a = File.dirname(path).split("/")
          b = (a.drop(a.index("public")+1)).join("/")

          small.push("/#{b}/small_#{File.basename(path)}")
          large.push("/#{b}/large_#{File.basename(path)}")
        end
          end
      end
    end
    return small,large
  end

  # 查找库中的图片名称
  def first_screen(style = :large)
    if self.screenshots.blank?
      '../zuzher/assets/default_room.png'
    else
      a = self.screenshots.to_a
        findpath(a)   #调用路径方法
    end
  end
end