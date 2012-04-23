class QuestionResultDetailsController < ApplicationController
  # GET /question_result_details
  # GET /question_result_details.xml
  layout "admin"
  def index
    @question_result_details = QuestionResultDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_result_details }
    end
  end

  # GET /question_result_details/1
  # GET /question_result_details/1.xml
  def show
    @question_result_detail = QuestionResultDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_result_detail }
    end
  end

  # GET /question_result_details/new
  # GET /question_result_details/new.xml
  def new
    @question_result_detail = QuestionResultDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_result_detail }
    end
  end

  # GET /question_result_details/1/edit
  def edit
    @question_result_detail = QuestionResultDetail.find(params[:id])
  end

  # POST /question_result_details
  # POST /question_result_details.xml
  def create
    question_result_detail = QuestionResultDetail.new(params[:question_result_detail])

     @question_result = question_result_detail.question_result
    respond_to do |format|
      if question_result_detail.save
        if @question_result.get_question_detail_ids.length ==0
          @data = @question_result.get_result_data
          format.html {render "result"}
          else
            format.html {render "question"}
        end
        
        format.xml  { render :xml => @question_result_detail, :status => :created, :location => @question_result_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_result_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_result_details/1
  # PUT /question_result_details/1.xml
  def update
    @question_result_detail = QuestionResultDetail.find(params[:id])

    respond_to do |format|
      if @question_result_detail.update_attributes(params[:question_result_detail])
        format.html { redirect_to(@question_result_detail, :notice => 'Question result detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_result_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_result_details/1
  # DELETE /question_result_details/1.xml
  def destroy
    @question_result_detail = QuestionResultDetail.find(params[:id])
    @question_result_detail.destroy

    respond_to do |format|
      format.html { redirect_to(question_result_details_url) }
      format.xml  { head :ok }
    end
  end
end
