class Blueprint < ActiveRecord::Base

  belongs_to :inv_type,   :class_name => "InvType", :foreign_key => "typeid"

  def wastage_factor
    # (0.1 / (1 + ME) )
    # Where ME is the number of mineral levels the BP has. For drones, the formula is:
    # (0.05 / (1 + ME ) )
  end

  def display
    "%s (ME: %i, PE: %i)" % [inv_type.typename, material_level, productivity_level]
  end

end
