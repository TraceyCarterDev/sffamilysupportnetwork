class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
     render text: "hello, world! This is the San Francisco Family Support Network overhaul of existing systems."
  end
end
