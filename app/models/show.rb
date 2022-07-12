class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map do |full_name|
        "#{full_name.first_name} #{full_name.last_name}" 
    end
  end

end