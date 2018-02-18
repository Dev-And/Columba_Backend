class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, :authentication_keys => [:phone]
  include DeviseTokenAuth::Concerns::User
  # before_validation :set_uid
  # before_validation :set_provider
  attr_accessor :login
  validates :phone, presence: :true, uniqueness: true
  # validates_format_of :phone, with: ^\+?[0-9]{3}-?[0-9]{6,12}$

  #
  # def self.find_for_database_authentication(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if login = conditions.delete(:login_number)
  #     where(conditions.to_h).where(["lower(login_number) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  #   elsif conditions.has_key?(:login_number) || conditions.has_key?(:email)
  #     where(conditions.to_h).first
  #   end
  # end
  # def set_uid
  #   self[:uid] = self[:login_number] if self[:uid].blank? && self[:login_number].present?
  # end
  #
  # def set_provider
  #   self[:provider] = "email" if self[:provider].blank?
  # end
end
