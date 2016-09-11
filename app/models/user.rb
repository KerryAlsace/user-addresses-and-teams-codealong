class User < ApplicationRecord
  has_many :addresses
  belongs_to :team
  # accepts_nested_attributes_for :addresses

  def addresses_attributes=(addresses_attributes)

    # When used with fields_for, rails will generate these:
    # addresses_attributes = {
    # 0 => {:street_1 => "Address 1 Street", :address_type => "Home"}
    # 1 => {:street_2 => "Address 2 Street", :address_type => "Work"}
    # }
    #
    addresses_attributes.each do |i, address_attributes|
      self.addresses.build(address_attributes)
    end
  end

  def team_attributes=(team_attributes)
    self.team = Team.where(:name => team_attributes[:name]).first_or_create do |t|
      t.hometown = team_attributes[:hometown]
    end
  end

  # def team_name=(name)
  #   self.team = Team.find_by(name: name)
  # end
  #
  # def new_team_attributes=(team_attributes)
  #   # team_attributes = {
  #   #   :name => "New Team Name",
  #   #   :hometown => "NYC"
  #   # }
  #   self.team.build(team_attributes)
  # end

end
