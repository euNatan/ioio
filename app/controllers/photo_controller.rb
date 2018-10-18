class PhotoController < ApplicationController
  def uploader
    raise ActionController::ParameterMissing, 'Filedata' unless params['Filedata'].present?
    @photo = Photo.create(image: params['Filedata'])

    byebug
  end
end
