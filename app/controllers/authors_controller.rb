class AuthorsController < InheritedResources::Base
	respond_to :svg
	def index
		@authors = Author.all
		@qr = RQRCode::QRCode.new(request.url, :size => 4, :level => :h )
		respond_to do |format|
		  format.html
		  format.svg  { render :qrcode => request.url, :level => :l, :unit => 10 }
		  format.png  { render :qrcode => request.url }
		  format.gif  { render :qrcode => request.url }
		  format.jpeg { render :qrcode => request.url }
		end
	end
end

