class Task < ActiveRecord::Base
  belongs_to :project

  acts_as_nested_set
end
