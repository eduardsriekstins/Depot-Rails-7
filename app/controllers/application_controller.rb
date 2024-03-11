class ApplicationController < ActionController::Base
  before_action :set_custom_time

  def set_custom_time
    @custom_time = Time.now.to_fs(:time)
   end
end
