class ImagesController < ApplicationController

    def new
        @image = Image.new
        @image_count = Image.count
        gon.watch.image_count = @image_count
        @last_img_id = Image.last()[:id]
        gon.watch.last_img_id = @last_img_id
    end

    def create
        @image = Image.new(image_params)
        if @image.save
            redirect_to new_image_path, notice: "Image Uploaded"
        else
            redirect_to new_image_path, notice: "Upload failed"
        end
    end


    private
        def image_params
            params.require(:image).permit(:url, :sfw)
        end
end
