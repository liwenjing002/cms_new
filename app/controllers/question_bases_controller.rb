class QuestionBasesController < ApplicationController
  # GET /question_bases
  # GET /question_bases.xml
  layout "admin"
  def index

     @question = Question.find(params[:question_id])
    @question_bases = @question.question_base.paginate :page => params[:page]||1,
                            :per_page=>10,
              :conditions=>["chind_name like ?",params[:chind_name]? "%#{params[:chind_name]}%":"%"],
                            :order => 'updated_at DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_bases }
    end
  end

  # GET /question_bases/1
  # GET /question_bases/1.xml
  def show
    @question_result = QuestionResult.find_by_question_base_id(params[:id])

    respond_to do |format|
          @data = @question_result.get_result_data
          format.html {render "../views/question_result_details/result"}
        end
  end

  # GET /question_bases/new
  # GET /question_bases/new.xml
  def new
    @question_basis = QuestionBase.new
    @question_id = params[:question_id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_basis }
    end
  end

  # GET /question_bases/1/edit
  def edit
    @question_basis = QuestionBase.find(params[:id])
  end

  # POST /question_bases
  # POST /question_bases.xml
  def create
    @question_basis = QuestionBase.new(params[:question_base])
    @question_basis.save
    @question_result = QuestionResult.new(params[:question_result])
    @question_result.question_base_id = @question_basis.id
    @question_result.save


    respond_to do |format|
      if @question_basis.save
        format.html {render "question"}
        format.xml  { render :xml => @question_basis, :status => :created, :location => @question_basis }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_basis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_bases/1
  # PUT /question_bases/1.xml
  def update
    @question_basis = QuestionBase.find(params[:id])

    respond_to do |format|
      if @question_basis.update_attributes(params[:question_basis])
        format.html { redirect_to(@question_basis, :notice => 'Question base was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_basis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_bases/1
  # DELETE /question_bases/1.xml
  def destroy
    @question_basis = QuestionBase.find(params[:id])
    @question_basis.destroy

    respond_to do |format|
      format.html { redirect_to(question_bases_url({:question_id=>params[:question_id]})) }
      format.xml  { head :ok }
    end
  end
end
