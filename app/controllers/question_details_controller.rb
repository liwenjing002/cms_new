class QuestionDetailsController < ApplicationController
  # GET /question_details
  # GET /question_details.xml
  def index
    @question_details = QuestionDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_details }
    end
  end

  # GET /question_details/1
  # GET /question_details/1.xml
  def show
    @question_detail = QuestionDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_detail }
    end
  end

  # GET /question_details/new
  # GET /question_details/new.xml
  def new
    @question_detail = QuestionDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_detail }
    end
  end

  # GET /question_details/1/edit
  def edit
    @question_detail = QuestionDetail.find(params[:id])
  end

  # POST /question_details
  # POST /question_details.xml
  def create
    @question_detail = QuestionDetail.new(params[:question_detail])

    respond_to do |format|
      if @question_detail.save
        if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_details/1
  # PUT /question_details/1.xml
  def update
    @question_detail = QuestionDetail.find(params[:id])

    respond_to do |format|
      if @question_detail.update_attributes(params[:question_detail])
        if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_details/1
  # DELETE /question_details/1.xml
  def destroy
    @question_detail = QuestionDetail.find(params[:id])
    @question_detail.destroy

    respond_to do |format|
      if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
    end
  end
end
