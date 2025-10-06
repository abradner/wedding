# frozen_string_literal: true

#
# ActiveAdmin console user.
#
class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.ransackable_attributes(auth_object = nil) = %w[
      created_at
      updated_at
      email
      id
      sign_in_count
    ]

  def self.ransackable_associations(auth_object = nil) = []
end
