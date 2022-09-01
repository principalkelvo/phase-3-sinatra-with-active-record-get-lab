class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  # add routes
  get "/bakeries" do
    # "Hello World"
       # get all the bakeries from the database
   all_bakeries= Bakery.all
   # send them back as a JSON array
   all_bakeries.to_json
  end

  get "/bakeries/:id" do

    all_baked_goods = Bakery.find(params[:id])

    all_baked_goods.to_json(include: :baked_goods)
  end

  get '/baked_goods/by_price' do
    sort_price = BakedGood.sort_price
    sort_price.to_json
  end
  get '/baked_goods/most_expensive' do
    sort_price = BakedGood.most_expensive
    sort_price.to_json
    end
end
