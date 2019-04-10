require_relative "../lib/caesar_cipher.rb"

describe "transform_letter method" do
  it "transform a letter depending on the key" do
    expect(caesar_cipher("A", 3)).to eq("D")
    expect(caesar_cipher("K", 1)).to eq("L")
    expect(caesar_cipher("Z", 0)).to eq("Z")
  end

  it "is a cicular method : if key = 2 then Z to B" do
    expect(caesar_cipher("Z", 3)).to eq("C")
    expect(caesar_cipher("A", 27)).to eq("B")
  end

  it "should be able to transform a word" do
    expect(caesar_cipher("CLEF", 2)).to eq("ENGH")
  end

  it "should be able to transform a whole sentence" do
    expect(caesar_cipher("LA CLEF VERTE", 2)).to eq("NC ENGH XGTVG")
  end

  it "should aks a string as first argument" do
    expect(caesar_cipher(1, 3)).to eq("A string please...")
  end

  it "upcase and downcase respected" do
    expect(caesar_cipher("La Clef Verte", 3)).to eq("Nc Engh Xgtvg")
  end

end
