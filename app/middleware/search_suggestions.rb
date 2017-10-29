class SearchSuggestions
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == '/search_suggestions'
      # terms = SearchSuggestions.terms_for(params[:term])
      # cannot access to params var so let's try another way
      request = Rack::Request.new(env)
      terms = SearchSuggestion.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
