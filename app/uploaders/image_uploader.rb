class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  version :medium do
    process resize_to_fill: [650,335]
  end

  version :medal do
    process resize_to_fill: [225,225]
  end

  version :thumb do
    process resize_to_fill: [75,75]
  end


  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
