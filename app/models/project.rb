class Project <ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def count_contestants
    contestants.count
  end

  def average_years_of_experience
    contestants.average(:years_of_experience).round(2)
  end
end
