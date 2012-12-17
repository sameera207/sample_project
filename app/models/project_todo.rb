class ProjectTodo < ActiveRecord::Base
  attr_accessible :due, :name, :project_id
  belongs_to :project
  
  scope :for_project, lambda {|project_id|
    {:conditions => {:project_id => project_id}}
  }
  
end
