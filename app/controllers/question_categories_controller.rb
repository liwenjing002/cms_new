class QuestionCategoriesController < ApplicationController
  # GET /question_categories
  # GET /question_categories.xml
  def index
    @question_categories = QuestionCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_categories }
    end
  end

  # GET /question_categories/1
  # GET /question_categories/1.xml
  def show
    @question_category = QuestionCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_category }
    end
  end

  # GET /question_categories/new
  # GET /question_categories/new.xml
  def new
    @question_category = QuestionCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_category }
    end
  end

  # GET /question_categories/1/edit
  def edit
    @question_category = QuestionCategory.find(params[:id])
  end

  # POST /question_categories
  # POST /question_categories.xml
  def create
    @question_category = QuestionCategory.new(params[:question_category])

    respond_to do |format|
      if @question_category.save
        if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_categories/1
  # PUT /question_categories/1.xml
  def update
    @question_category = QuestionCategory.find(params[:id])

    respond_to do |format|
      if @question_category.update_attributes(params[:question_category])
       if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_categories/1
  # DELETE /question_categories/1.xml
  def destroy
    @question_category = QuestionCategory.find(params[:id])
    @question_category.destroy
    respond_to do |format|
      if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
    end
  end
end
