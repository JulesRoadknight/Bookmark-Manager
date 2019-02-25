require 'bookmark'

describe Bookmark do

  let(:link) { "https://google.com" }
  let(:name) { "Google" }
  let(:bookmark) { Bookmark.new(link, name) }

  it "returns a link" do
    expect(bookmark.link).to eq(link)
  end

  it "returns a name" do
    expect(bookmark.name).to eq(name)
  end

  it 'returns all instances of bookmark' do
    bookmarks = []
    3.times { bookmarks << Bookmark.create(link, name) }

    expect(bookmarks).to eq(Bookmark.all)
  end
end
