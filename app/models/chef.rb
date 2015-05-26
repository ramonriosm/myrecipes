class Chef < ActiveRecord::Base
  has_many :recipes
  before_safe { self.email = email.downcase }
  validates :chefname, presence: true, length: {minimum: 3, maximum: 40}
  VALID_EMAIL_REGEX = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
  validates :email, presence: true, length: {maximum: 105}, uniqueness: {case_sensitive: false }, format: {with: VALID_EMAIL_REGEX}
end