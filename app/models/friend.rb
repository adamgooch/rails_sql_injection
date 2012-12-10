class Friend < ActiveRecord::Base
  attr_accessible :email, :name

  def self.search query
    if query
      #self.connection.execute("SELECT * FROM Friends WHERE name LIKE '%" + query + "%'")
      find(:all, :conditions => "name LIKE '%#{query}%'")
      #find(:all, :conditions => ['name LIKE ?', query])
    else
      find(:all)
    end
  end
end
