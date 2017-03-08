class BonesController < ApplicationController
  def new
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @bone = Bone.new(dinosaur: @dinosaur)
  end

  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @bone = Bone.new(dinosaur: @dinosaur, name: params[:bone][:name])

    if @bone.save
      redirect_to dinosaur_path(@dinosaur)
    end
  end
end
