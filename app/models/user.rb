class User < ActiveRecord::Base


  def authenticate(email, password)
    u = first(:conditions => {:email => email, :state => 'active'})
    u && u.authenticated?(password) ? [true, u] : [false, u]
  end
end
