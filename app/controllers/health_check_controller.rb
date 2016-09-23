class HealthCheckController < ApplicationController
  def git
    render json: {last_commit: AppName::REVISION}
  end
end
