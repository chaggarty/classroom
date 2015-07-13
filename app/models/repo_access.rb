class RepoAccess < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization

  has_and_belongs_to_many :groups

  validates :github_team_id, presence:   true
  validates :github_team_id, uniqueness: true

  validates :organization, presence: true

  validates :user, presence: true
  validates :user, uniqueness: { scope: :organization }
end