class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, :authentication_keys => [:phone]
  include DeviseTokenAuth::Concerns::User
  include ImageUploader[:image]
  # before_validation :set_uid
  # before_validation :set_provider
  attr_accessor :login
  validates :phone, presence: :true, uniqueness: true
  # validates_format_of :phone, with: ^\+?[0-9]{3}-?[0-9]{6,12}$
  #
  # def token_validation_response
  #   self.as_json(only:[:uid, :email, :phone, :name, :tokens])
  # end








end
