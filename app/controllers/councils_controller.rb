class CouncilsController < ApplicationController
  def index
    @councils = access_token.get("/api/councils").parsed if access_token

    render :text => "No councils available." unless @councils
  end

end
