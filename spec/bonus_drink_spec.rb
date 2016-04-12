require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  context "正常系" do
    specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
    specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
    specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
    specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
    specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  end

  context "異常系" do
    specify { expect{BonusDrink.total_count_for("")}.to raise_error(StandardError) }
    specify { expect{BonusDrink.total_count_for("aa")}.to raise_error(StandardError) }
    specify { expect{BonusDrink.total_count_for(-1)}.to raise_error(StandardError) }
  end
end