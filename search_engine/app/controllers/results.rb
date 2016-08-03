class Varys < Sinatra::Base
  get '/results' do
    @now = Time.now
    @query = params[:q]
    @start = params[:start] || "0"
    @results = Webpage.do_search(@query, @start)
    erb :'results/index'
  end
end
