require_relative "../lib/multiples"

describe "the is_a_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is multiple of 3 or 5" do
    expect(is_a_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_a_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_a_multiple_of_3_or_5?(33)).to eq(true)
    expect(is_a_multiple_of_3_or_5?(45)).to eq(true)
  end


  it "should return FALSE when an integer is not multiple of 3 or 5 or the number is negative" do
    expect(is_a_multiple_of_3_or_5?(0)).to eq(false)
    expect(is_a_multiple_of_3_or_5?(-1)).to eq(false)
    expect(is_a_multiple_of_3_or_5?(17)).to eq(false)
    expect(is_a_multiple_of_3_or_5?(7)).to eq(false)

  end
end


                    #####################


describe "sum_of_3_or_5_multiples method" do
  it "should return a sum of the integers multiple of 3 or 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(15)).to eq(45)
  end


  it "should ask again if the argument is not an integer" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Un entier naturel putain ! TG.")
    expect(sum_of_3_or_5_multiples( 1,05 )).to eq("Un entier naturel putain ! TG.")
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Un entier naturel putain ! TG.")

  end
end
