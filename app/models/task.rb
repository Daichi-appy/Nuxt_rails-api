class Task < ApplicationRecord
  belongs_to :project, foreign_key: "project_id"
  validates :title, presence: true
end
