# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  gender        :string
#  email         :string
#  password      :string
#  date_of_birth :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ApplicationRecord
  has_one :address
  has_many :posts

  validates :name, presence: { message: "name not found" }
  validates :gender, presence: { message: "gender not found" }
  validates :email, presence: true, uniqueness: true
  validates :password ,presence: true, confirmation: true
  validates :date_of_birth, presence: true
end
