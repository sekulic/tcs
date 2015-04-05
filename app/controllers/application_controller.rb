class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_filter :redirect_to_tcs if Rails.env.production?
  protect_from_forgery with: :exception
  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end  
  private

    # Redirect to the appropriate domain i.e. example.com
    def redirect_to_tcs
      domain_to_redirect_to = 'www.theculturalspotter.eu'
      domain_exceptions = ['theculturalspotter.eu', 'www.theculturalspotter.eu']
      should_redirect = domain_exceptions.exclude? request.host
      new_url = "http://#{domain_to_redirect_to}#{request.fullpath}"
      redirect_to new_url, status: :moved_permanently if should_redirect
    end  
end
