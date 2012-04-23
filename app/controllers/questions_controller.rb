class QuestionsController < ApplicationController
  # GET /questions
  # GET /questions.xml
   layout "admin"
  def index
    @questions = Question.paginate :page => params[:page]||1,
                            :per_page=>10,:conditions=>["name like ?",params[:name]? "%#{params[:name]}%":"%"],
                            :order => 'id ASC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.xml
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.xml
  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.xml
  def create
    @question = Question.new(params[:question])
     @question_category= QuestionCategory.new

    respond_to do |format| 
      if @question.save
        @question_category.question_id = @question.id
        format.html { render "add_categories"}
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.xml
  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
          format.html { render "add_categories"}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.xml
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(questions_url) }
      format.xml  { head :ok }
    end
  end


def save_question
   @question = Question.find(params[:id])
    @question.flage = true
   @question.question_categories.each do |c|
     l = c.question_details.length 

    if (l!=0 and c.number%l !=0) or l ==0
      @question.flage = false

    end
   end

         @question.save 
 respond_to do |format|
     if request.xhr?  
        format.js
        else
       format.html # index.html.erb
        end
         end
end

end
