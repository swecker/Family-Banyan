class Relationship < ActiveRecord::Base
  
  belongs_to :person
  belongs_to :other,
    :class_name => 'Person',
    :foreign_key => 'other_id'

end
