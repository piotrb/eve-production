class InvBlueprintType < ActiveRecord::Base

  self.table_name = "invblueprinttypes"
  self.primary_key = "blueprinttypeid"

  belongs_to :blueprint, :class_name => "InvType", :foreign_key => "blueprinttypeid"
  belongs_to :product,   :class_name => "InvType", :foreign_key => "producttypeid"

  belongs_to :parent_blueprint, :class_name => "InvBlueprintType", :foreign_key => "parentblueprinttypeid"
  has_many :child_blueprints, :class_name => "InvBlueprintType", :foreign_key => "parentblueprinttypeid"

end
