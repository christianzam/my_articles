class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.order('created_at DESC')
    render json: {status: 'Succeded', message: 'Artictles to load', data: articles}, status: :ok
  end
end

# module Api
#  module V1
#   class ArticlesController < ApplicationController
#     def index
#       articles = Article.order('created_at DESC')
#       render json: {status: 'SUCCESS', message: 'LOADED ARTICLES', data: articles}, status: :ok
#     end
#   end
#  end
# end