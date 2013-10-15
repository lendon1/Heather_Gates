class AccessDevicesController < ApplicationController
  # GET /access_devices
  # GET /access_devices.json
  def index
    @access_devices = AccessDevice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @access_devices }
    end
  end

  # GET /access_devices/1
  # GET /access_devices/1.json
  def show
    @access_device = AccessDevice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @access_device }
    end
  end

  # GET /access_devices/new
  # GET /access_devices/new.json
  def new
    @access_device = AccessDevice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @access_device }
    end
  end

  # GET /access_devices/1/edit
  def edit
    @access_device = AccessDevice.find(params[:id])
  end

  # POST /access_devices
  # POST /access_devices.json
  def create
    @access_device = AccessDevice.new(params[:access_device])

    respond_to do |format|
      if @access_device.save
        format.html { redirect_to @access_device, notice: 'Access device was successfully created.' }
        format.json { render json: @access_device, status: :created, location: @access_device }
      else
        format.html { render action: "new" }
        format.json { render json: @access_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /access_devices/1
  # PUT /access_devices/1.json
  def update
    @access_device = AccessDevice.find(params[:id])

    respond_to do |format|
      if @access_device.update_attributes(params[:access_device])
        format.html { redirect_to @access_device, notice: 'Access device was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @access_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access_devices/1
  # DELETE /access_devices/1.json
  def destroy
    @access_device = AccessDevice.find(params[:id])
    @access_device.destroy

    respond_to do |format|
      format.html { redirect_to access_devices_url }
      format.json { head :no_content }
    end
  end
end
