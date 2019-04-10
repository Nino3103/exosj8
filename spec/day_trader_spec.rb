require_relative "../lib/day_trader.rb"

describe "tester la méthode day_trader" do

  it "s'assurer que le tableau comporte au moins deux jours" do
    expect(day_trader([1])).to eq("Veuillez entrer un tableau comportant au moins deux jours please")
  end

  it "s'assurer que le profit soit maximal pour ce con de trader" do
    expect(day_trader([3,10,2,5])).to eq("Profit maximal : 7$ => Achat 3$ le jour 1 / Vente 10$ le jour 2")
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq("Profit maximal : 12$ => Achat 3$ le jour 2 / Vente 15$ le jour 5")
  end


  it "que l'argument est un tableau" do
    expect(day_trader("Hello")).to eq("Veuillez entrer un tableau comportant au moins deux jours please")
    expect(day_trader(3)).to eq("Veuillez entrer un tableau comportant au moins deux jours please")
  end

end
