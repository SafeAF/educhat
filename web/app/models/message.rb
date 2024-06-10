class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  after_create_commit -> { broadcast_append_to conversation }

  # Optional: broadcast updates or removals
  after_update_commit -> { broadcast_replace_to conversation }
  after_destroy_commit -> { broadcast_remove_to conversation }
end
