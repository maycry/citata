class Qoute < ActiveRecord::Base

def next_qoute
  self.class.first(:conditions => ["id > ?", id],:order => "id asc")
end

end
