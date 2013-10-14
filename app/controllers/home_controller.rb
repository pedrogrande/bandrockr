class HomeController < ApplicationController
  def index
    @band_profile = BandProfile.first
    if @band_profile
      @links = @band_profile.links
      @photo = Photo.first
      @gig = Gig.next
      @album = Album.first
      @track = Track.first
    end
  end
end