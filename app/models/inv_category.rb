class InvCategory < ActiveRecord::Base

  self.table_name = "invcategories"
  self.primary_key = "categoryid"

  has_many :inv_groups, :foreign_key => "categoryid"

  def self.good_categories
    [
      #0, # system
      #1, # Owner
      2, # celestial (containers)
      4, # matierial
      5, # accessories
      6, # ship
      7, # module
      8, # charge
      9, # blueprint
      #10, # Trading
      #11, # Entity
      #14, # Bonus
      16, # skill books
      17, # Comodity
      18, # Drone
      20, # implant
      #22, # Deployable
      23, # structures (POS)
      32, # subsystem
    ]
  end

end
