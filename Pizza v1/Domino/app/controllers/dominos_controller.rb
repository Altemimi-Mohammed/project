class DominosController < ApplicationController
  # GET /dominos
  # GET /dominos.xml
  def index
    @dominos = Domino.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dominos }
    end
  end

  # GET /dominos/1
  # GET /dominos/1.xml
  def show
    @domino = Domino.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @domino }
    end
  end

  # GET /dominos/new
  # GET /dominos/new.xml
  def new
    @domino = Domino.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @domino }
    end
  end

  # GET /dominos/1/edit
  def edit
    @domino = Domino.find(params[:id])
  end

  # POST /dominos
  # POST /dominos.xml
  def create
    @domino = Domino.new(params[:domino])

    respond_to do |format|
      if @domino.save
        flash[:notice] = 'Domino was successfully created.'
        format.html { redirect_to(@domino) }
        format.xml  { render :xml => @domino, :status => :created, :location => @domino }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @domino.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dominos/1
  # PUT /dominos/1.xml
  def update
    @domino = Domino.find(params[:id])

    respond_to do |format|
      if @domino.update_attributes(params[:domino])
        flash[:notice] = 'Domino was successfully updated.'
        format.html { redirect_to(@domino) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @domino.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dominos/1
  # DELETE /dominos/1.xml
  def destroy
    @domino = Domino.find(params[:id])
    @domino.destroy

    respond_to do |format|
      format.html { redirect_to(dominos_url) }
      format.xml  { head :ok }
    end
  end
end
