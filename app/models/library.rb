class Library < ActiveRecord::Base
  attr_accessible :address, :dg_name, :name, :places

  acts_as_gmappable

  # This is the address used by gmaps4rails to get the longitude and latitude from Google
  def gmaps4rails_address
    address
  end
end
