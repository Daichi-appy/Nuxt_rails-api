class Project < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
end