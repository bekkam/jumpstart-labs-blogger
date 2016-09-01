class Author < ApplicationRecord
    # Author class authenticates via the sorcery gem.
    authenticates_with_sorcery!
    validates_confirmation_of :password, message: "should match confirmation", if: :password

end
