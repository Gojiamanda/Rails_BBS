class User < ApplicationRecord
  has_secure_password

  validates :loginname, presence: true
  validates :name, presence: true
  validates :role, presence: true

  validates :loginname, uniqueness: true

  validates :role, inclusion: {in: ["admin", "reviewer"]}
end
