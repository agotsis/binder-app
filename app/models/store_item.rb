# ## Schema Information
#
# Table name: `store_items`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`created_at`**  | `datetime`         | `not null`
# **`id`**          | `integer`          | `not null, primary key`
# **`in_stock`**    | `boolean`          |
# **`name`**        | `string(255)`      |
# **`price`**       | `decimal(8, 2)`    |
# **`updated_at`**  | `datetime`         | `not null`
#

class StoreItem < ActiveRecord::Base
  has_many :store_purchases

end
