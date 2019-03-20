# ## Schema Information
#
# Table name: `organization_status_types`
#
# ### Columns
#
# Name                 | Type               | Attributes
# -------------------- | ------------------ | ---------------------------
# **`display`**        | `boolean`          |
# **`id`**             | `integer`          | `not null, primary key`
# **`is_build`**       | `boolean`          |
# **`is_electrical`**  | `boolean`          |
# **`name`**           | `string(255)`      |
#

class OrganizationStatusType < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :organization_statuses, dependent: :destroy
  
  scope :build, ->  { where(is_build: true) }
  scope :electrical, -> {where(is_electrical: true) }
  scope :general, -> { where("is_build IS FALSE AND is_electrical IS FALSE") }
  
end
