class DreamplansController < ApplicationController
  # GET /dreamplans
  # GET /dreamplans.json
  def index
    @dreamplans = Dreamplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dreamplans }
    end
  end

  # GET /dreamplans/1
  # GET /dreamplans/1.json
  def show
    @dreamplan = Dreamplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dreamplan }
    end
  end

  # GET /dreamplans/new
  # GET /dreamplans/new.json
  def new
    @dreamplan = Dreamplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dreamplan }
    end
  end

  # GET /dreamplans/1/edit
  def edit
    @dreamplan = Dreamplan.find(params[:id])
  end

  # POST /dreamplans
  # POST /dreamplans.json
  def create
    @dreamplan = Dreamplan.new(params[:dreamplan])

    respond_to do |format|
      if @dreamplan.save
        format.html { redirect_to @dreamplan, notice: 'Dreamplan was successfully created.' }
        format.json { render json: @dreamplan, status: :created, location: @dreamplan }
      else
        format.html { render action: "new" }
        format.json { render json: @dreamplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dreamplans/1
  # PUT /dreamplans/1.json
  def update
    @dreamplan = Dreamplan.find(params[:id])

    respond_to do |format|
      if @dreamplan.update_attributes(params[:dreamplan])
        format.html { redirect_to @dreamplan, notice: 'Dreamplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dreamplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dreamplans/1
  # DELETE /dreamplans/1.json
  def destroy
    @dreamplan = Dreamplan.find(params[:id])
    @dreamplan.destroy

    respond_to do |format|
      format.html { redirect_to dreamplans_url }
      format.json { head :ok }
    end
  end
end
