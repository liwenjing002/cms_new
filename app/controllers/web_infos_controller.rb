class WebInfosController < ApplicationController
  # GET /web_infos
  # GET /web_infos.xml
  layout "admin"
  def index
    @web_info = WebInfo.find(:all)[0]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @web_infos }
    end
  end

  # GET /web_infos/1
  # GET /web_infos/1.xml
  def show
    @web_info = WebInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @web_info }
    end
  end

  # GET /web_infos/new
  # GET /web_infos/new.xml
  def new
    @web_info = WebInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @web_info }
    end
  end

  # GET /web_infos/1/edit
  def edit
    @web_info = WebInfo.find(params[:id])
  end

  # POST /web_infos
  # POST /web_infos.xml
  def create
    @web_info = WebInfo.new(params[:web_info])

    respond_to do |format|
      if @web_info.save
        format.html { redirect_to(@web_info, :notice => 'Web info was successfully created.') }
        format.xml  { render :xml => @web_info, :status => :created, :location => @web_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @web_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /web_infos/1
  # PUT /web_infos/1.xml
  def update
    @web_info = WebInfo.find(params[:id])

    respond_to do |format|
      if @web_info.update_attributes(params[:web_info])
        format.html { redirect_to(web_infos_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @web_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /web_infos/1
  # DELETE /web_infos/1.xml
  def destroy
    @web_info = WebInfo.find(params[:id])
    @web_info.destroy

    respond_to do |format|
      format.html { redirect_to(web_infos_url) }
      format.xml  { head :ok }
    end
  end
end
