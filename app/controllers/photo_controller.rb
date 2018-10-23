class PhotoController < ApplicationController
  def uploader
    raise ActionController::ParameterMissing, 'Filedata' unless params['Filedata'].present?
    @photo = Photo.new(image: params['Filedata'])
    byebug
    @photo.save



  end
end
