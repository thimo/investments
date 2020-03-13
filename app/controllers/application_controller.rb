class ApplicationController < ActionController::Base
  rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_auth_token

  private

    def invalid_auth_token
      flash_message(:danger, "Je (mogelijk) hebt een verouderde versie van de pagina gebruikt, probeer het nog een keer.")
      redirect_to back_url
    end

    def back_url
      request.referer || root_path
    end
end
