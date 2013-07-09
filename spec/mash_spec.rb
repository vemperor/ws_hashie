require "spec_helper"

describe WsHashie::Mash do
  before(:each) do
    @mash = WsHashie::Mash.new
  end
  
  it "name? should return false" do
    expect(@mash.name?).to eq(false)
  end

  it "name should return nil" do
    expect(@mash.name).to be_nil
  end

  it "name should return 'My Mash'" do
    @mash.name = "My Mash"
    expect(@mash.name).to eq("My Mash")
  end

  it "name? should return 'true'" do
    @mash.name = "My Mash"
    expect(@mash.name?).to be_true
  end
  
  
  it "inspect should return <Hashie::Mash name='My Mash'>" do
    @mash.name = "My Mash"
    @mash.inspect.should eq('<WsHashie::Mash name="My Mash">')
  end     
  
  it "mammal? should return false" do
    @mash.mammal?.should eq(false)
  end
  
  it "mammal should return 'My Mamal'" do
    @mash.mammal = "My Mammal"
    @mash.mammal.should eq("My Mammal")
  end

  it "mammal? should return 'true'" do
    @mash.mammal = "My Mammal"
    @mash.mammal?.should be_true
  end
  
  it "inspect should return <WsHashie::Mash name='My Mash', mammal='My Mammal'>" do
    @mash.name = "My Mash"
    @mash.mammal = "My Mammal"
    @mash.inspect.should eq('<WsHashie::Mash name="My Mash", mammal="My Mammal">')
  end 
   
  it "author_.name? should return false" do
    expect(@mash.author_.name?).to be_false
  end

  it "author should return <WsHashie::Mash name='Michael Bleigh'>" do
    @mash.author!.name = 'Michael Bleigh'
    expect(@mash.author).to eq('<WsHashie::Mash name="Michael Bleigh">')
  end
  
  it "author_.name? should return false" do
    @mash.author!.name = 'Michael Bleigh'
    expect(@mash.author_.name?).to be_true
  end

  it "inspect should return <WsHashie::Mash>" do
    @mash.author!.name = 'Michael Bleigh'
    @mash.inspect.should eq('<WsHashie::Mash>')
  end

  after(:each) do
    @mash = nil
  end
end
