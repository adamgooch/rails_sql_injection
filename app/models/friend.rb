class Friend < ActiveRecord::Base
  attr_accessible :email, :name

  def self.search query
    if query
      find(:all, :conditions => ["name LIKE ?", '%' + query + '%'])
    else
      find(:all)
    end
  end
end
