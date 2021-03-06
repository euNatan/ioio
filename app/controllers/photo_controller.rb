class PhotoController < ApplicationController
  before_action :authenticate_user!, only: [:uploader]

  def uploader
    raise ActionController::ParameterMissing, 'Filedata' unless params['Filedata'].present?

    @photo = Photo.create!(image: params['Filedata'])

  end
end
