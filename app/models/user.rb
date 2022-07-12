class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validate :name, presence: true, length: {maximum: 50}
  validate :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false }



end
