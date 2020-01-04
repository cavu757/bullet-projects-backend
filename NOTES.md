Home Page (List of bullet projects with links)

Project
has_many :bullets
:name - string, :description - string, :deadline - date

Bullet
belongs_to :project
:project_id - integer, :content - string, :category - string, :priority - boolean, :date - datetime
