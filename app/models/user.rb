class User < ApplicationRecord
    has_secure_password

    #Sets the Session Timeout Time
    def auto_timeout
        15.minutes
    end

end
