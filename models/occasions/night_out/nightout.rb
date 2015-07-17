class Night_Out
  attr_accessor :outfits;
  def initialize
  @outfits = {
    :outfit1 => {
      :name => "nightoutmen1",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "120",
      :image => "https://s-media-cache-ak0.pinimg.com/736x/f7/fb/27/f7fb272477b0debbb4c93ee87d4ecbe0.jpg",
      :outfit => ["light grey blazer", "black t-shirt ", "black dress pants", "black/brown dress shoes"]
      },
    :outfit2 => {
      :name => "nightoutmen2",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "120",
      :image => "https://s-media-cache-ak0.pinimg.com/736x/59/05/61/5905613a05ba0e18fa6d6007d9a43e4d.jpg",
      :outfit => ["white buttoned down shirt", "white blazer", "grey bow tie", "dark blue jeans", "grey dress shoes"]
      },
    :outfit3 => {
      :name => "nightoutwomen1",
      :gender => "female",
      :temp_low => "0",
      :temp_high => "120",
      :image => "https://s-media-cache-ak0.pinimg.com/originals/ef/03/3d/ef033d360407edb95f1c0e74e63e9d89.jpg",
      :outfit => ["grey loose tucked in tank", "white womens blazer", "black leather shorts", "gold circular metal necklace", "black platformed lace up boots", "beige hand bag"]
      },
    :outfit4 => {
      :name => "casualwintermen2",
      :gender => "female",
      :temp_low => "0",
      :temp_high => "120",
      :image => "https://s-media-cache-ak0.pinimg.com/236x/76/1a/11/761a11afe47fce2a3b1fc34f1820e821.jpg",
      :outfit => ["white rolled up sleeves sheer blouse tucked in", "sequin gold/brown shorts", "gold metal round circle necklace", "gold watch/bracelet", "black purse", "tan high heels"]
      }
    }
  end
end


