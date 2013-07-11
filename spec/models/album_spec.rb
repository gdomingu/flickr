require 'spec_helper'

describe Album do
  it "has many photos" do
    album = FactoryGirl.create(:album)
    photo = FactoryGirl.create(:photo, :album_id => album.id)

    expect(photo.url).to_not be_nil
    expect(album.photos).to include(photo)
  end
end