#coding:utf-8

class User < ActiveRecord::Base
  validates :username, :presence => {:message => "请填写用户名"}
  validates :email, :presence => {:message => "请填写邮箱"}
  validates :email, :uniqueness => {:message => "该邮箱已经被注册"}
  validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "邮箱格式不正确"}
  validates :mobile, :presence => {:message => "请填写手机号码"}
  validates :mobile, :uniqueness => {:message => "该手机号码已经被注册，请直接登录"}
  validates :password, :confirmation => {:message => "密码不匹配"}
  validates :password, :length => {:message => "密码长度至少4个字符", :minimum => 4, :allow_blank => true}
  validates_presence_of :password_digest, :message => "密码不能为空"
  validates :phone_verify_code, :presence => { :message => "请填写手机验证码" },:on => :create
  validate :verify_phone_code

  has_secure_password



end