class AdminUser < ActiveRecord::Base
  
  #set_table_name("admin_users")

 scope :named, lambda {|first, last| where(:first_name => first, :last_name => last)}  
  
end
