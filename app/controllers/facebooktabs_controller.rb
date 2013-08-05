class FacebooktabsController < ApplicationController
  # GET /facebooktabs
  # GET /facebooktabs.json
  def index
    @facebooktabs = Facebooktab.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facebooktabs }
    end
  end

  # GET /facebooktabs/1
  # GET /facebooktabs/1.json
  def show
    @facebooktab = Facebooktab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facebooktab }
    end
  end

  # GET /facebooktabs/new
  # GET /facebooktabs/new.json
  def new
    @facebooktab = Facebooktab.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facebooktab }
    end
  end

  # GET /facebooktabs/1/edit
  def edit
    @facebooktab = Facebooktab.find(params[:id])
  end

  # POST /facebooktabs
  # POST /facebooktabs.json
  def create
    @facebooktab = Facebooktab.new(params[:facebooktab])

    respond_to do |format|
      if @facebooktab.save
        format.html { redirect_to @facebooktab, notice: 'Facebooktab was successfully created.' }
        format.json { render json: @facebooktab, status: :created, location: @facebooktab }
      else
        format.html { render action: "new" }
        format.json { render json: @facebooktab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facebooktabs/1
  # PUT /facebooktabs/1.json
  def update
    @facebooktab = Facebooktab.find(params[:id])

    respond_to do |format|
      if @facebooktab.update_attributes(params[:facebooktab])
        format.html { redirect_to @facebooktab, notice: 'Facebooktab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facebooktab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebooktabs/1
  # DELETE /facebooktabs/1.json
  def destroy
    @facebooktab = Facebooktab.find(params[:id])
    @facebooktab.destroy

    respond_to do |format|
      format.html { redirect_to facebooktabs_url }
      format.json { head :no_content }
    end
  end
end
