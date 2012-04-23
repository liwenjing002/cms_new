class QuestionResultsController < ApplicationController
  # GET /question_results
  # GET /question_results.xml
  def index
    @question_results = QuestionResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_results }
    end
  end

  # GET /question_results/1
  # GET /question_results/1.xml
  def show
    @question_result = QuestionResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_result }
    end
  end

  # GET /question_results/new
  # GET /question_results/new.xml
  def new
    @question_result = QuestionResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_result }
    end
  end

  # GET /question_results/1/edit
  def edit
    @question_result = QuestionResult.find(params[:id])
  end

  # POST /question_results
  # POST /question_results.xml
  def create
    @question_result = QuestionResult.new(params[:question_result])

    respond_to do |format|
      if @question_result.save
        format.html { redirect_to(@question_result, :notice => 'Question result was successfully created.') }
        format.xml  { render :xml => @question_result, :status => :created, :location => @question_result }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_results/1
  # PUT /question_results/1.xml
  def update
    @question_result = QuestionResult.find(params[:id])

    respond_to do |format|
      if @question_result.update_attributes(params[:question_result])
        format.html { redirect_to(@question_result, :notice => 'Question result was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_results/1
  # DELETE /question_results/1.xml
  def destroy
    @question_result = QuestionResult.find(params[:id])
    @question_result.destroy

    respond_to do |format|
      format.html { redirect_to(question_results_url) }
      format.xml  { head :ok }
    end
  end
end
