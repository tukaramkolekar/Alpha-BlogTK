class ArticlesController < ApplicationController
    def show
        #binding.break #for debuging the code to read params passed
        @article =Article.find(params[:id])
    end

    def index
        @articles =Article.all
    end

    def new
       @article=Article.new
    end

    def create
        #@article = Article.new(params.require(:article).permit(:title, :description))
     
        @article = Article.new(article_params)
         @article.save
         redirect_to articles_show(@article)
       end
      private
        def article_params
         params.require(:article).permit(:title, :description)
 
         end
 

end
