#coding:utf-8
class Screenshot < ActiveRecord::Base
  belongs_to :room, :counter_cache => true
  default_scope   order('position')

end
