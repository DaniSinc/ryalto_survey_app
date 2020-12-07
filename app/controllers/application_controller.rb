class ApplicationController < ActionController::Base

    def current_user
    end

    def can_administer?
        true
    end
end
