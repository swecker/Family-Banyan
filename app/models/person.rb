class Person < ActiveRecord::Base
  
  belongs_to :father,
    :class_name => "Person",
    :foreign_key => "father_id"
  belongs_to :mother,
    :class_name => "Person",
    :foreign_key => "mother_id"

  has_many :fathered_children,
    :class_name => "Person",
    :foreign_key => "father_id"
  has_many :mothered_children,
    :class_name => "Person",
    :foreign_key => "mother_id"
  
  has_many :relationships
  has_many :relations,
    :through => :relationships
    
  def children
    mothered_children + fathered_children
  end

end
