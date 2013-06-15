class Library < ActiveRecord::Base
  attr_accessible :address, :dg_name, :name, :places

  acts_as_gmappable :process_geocoding => :geocode?, # Do we need to geocode again at a model save
    :address => "address", # Use the 'address' column in the database for the geocoding
    :normalized_address => "address"# Save the normalized address received from Google in the 'address' column

  # You can use this method instead of the :address params in acts_as_gmappable if the address is not in only 1 column
  #def gmaps4rails_address
  #  address
  #end

  # Determine if we need to geocode again the model (Address has changed)
  def geocode?
    !address.blank? && self.address_changed?
  end
end
