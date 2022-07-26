class ArticlesController < ApplicationController
    def show
        #binding.break #for debuging the code to read params passed
        @article =Article.find(params[:id])
    end
end
