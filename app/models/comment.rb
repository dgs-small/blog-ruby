class Comment < ApplicationRecord

  include Visible

  #creates a foreign key of an article
  belongs_to :article
end
