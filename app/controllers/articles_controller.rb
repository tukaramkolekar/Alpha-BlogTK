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

    def edit
       
        @article=Article.find(params[:id])
       
    end

    def update
        @article=Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice]= "Article upadated successfully"
        else
            render :edit
        end
    end

    def create
        #@article = Article.new(params.require(:article).permit(:title, :description))
     
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was created successfully"
        #  redirect_to show()
        redirect_to @article
        else
            render :new
       end
    end
      private
        def article_params
         params.require(:article).permit(:title, :description)
        end

        def destroy
        @article=Article.find(params[:id])
        @article.destroy
        redirect_to articles_path


        end

 

end
