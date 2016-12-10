class Url < ActiveRecord::Base

   before_create :new_url
  validates :long_url, presence: true
  validates :long_url, format: { with: URI.regexp }, allow_blank: true
  
  def new_url
    array = Array.new(7){[*"A".."Z", *"a".."z", *"0".."9"].sample}.join
    self.short_url = array
  end

  # Remember to create a migration!
end


class User < ActiveRecord::Base

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: {in: 6..15}
  # Remember to create a migration!


 

  # ej. User.authenticate('fernando@codea.mx', 'qwerty')
  def self.authenticate(email, password)

    User.find_by(email: email, password: password)   
  end




end
