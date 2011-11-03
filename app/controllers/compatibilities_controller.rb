class CompatibilitiesController < ApplicationController
  # GET /compatibilities
  # GET /compatibilities.xml
  def index
    @compatibilities = Compatibility.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @compatibilities }
    end
  end

  # GET /compatibilities/1
  # GET /compatibilities/1.xml
  def show
    @compatibility = Compatibility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @compatibility }
    end
  end

  # GET /compatibilities/new
  # GET /compatibilities/new.xml
  def new
    @compatibility = Compatibility.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @compatibility }
    end
  end

  # GET /compatibilities/1/edit
  def edit
    @compatibility = Compatibility.find(params[:id])
  end

  # POST /compatibilities
  # POST /compatibilities.xml
  def create
    @compatibility = Compatibility.new(params[:compatibility])

    respond_to do |format|
      if @compatibility.save
        format.html { redirect_to(@compatibility, :notice => 'Compatibility was successfully created.') }
        format.xml  { render :xml => @compatibility, :status => :created, :location => @compatibility }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @compatibility.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /compatibilities/1
  # PUT /compatibilities/1.xml
  def update
    @compatibility = Compatibility.find(params[:id])

    respond_to do |format|
      if @compatibility.update_attributes(params[:compatibility])
        format.html { redirect_to(@compatibility, :notice => 'Compatibility was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @compatibility.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /compatibilities/1
  # DELETE /compatibilities/1.xml
  def destroy
    @compatibility = Compatibility.find(params[:id])
    @compatibility.destroy

    respond_to do |format|
      format.html { redirect_to(compatibilities_url) }
      format.xml  { head :ok }
    end
  end
end
