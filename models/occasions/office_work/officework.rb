class Office_Work
  attr_accessor :outfits;
  def initialize 
  @outfits = {
    :outfit1 => {
      :name => "officeworkwomen1",
      :gender => "female",
      :temp_low => "0",
      :temp_high => "120",
      :image => "http://ww.shelikespurple.com/.a/6a00d8341c77ee53ef017d3e2ff88a970c-pi",
      :outfit => ["navy blue long loose long sleeved dress", "brown belt", "tan high heels", "brown leather purse"]
      },
    :outfit2 => {
      :name => "officeworkwomen2",
      :gender => "female",
      :temp_low => "0",
      :temp_high => "120",
      :image => "https://s-media-cache-ak0.pinimg.com/236x/88/82/34/8882342f0c5a0b63344182e5c033f451.jpg",
      :outfit => ["white blouse", "grey blazer", "grey long semi-tight skirt", "tan heels", "thin silver belt"]
      },
    :outfit3 => {
      :name => "officeworkmen1",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "120",
      :image => "http:/ww.shuperb.co.uk/blog/wp-content/uploads/2015/04/3021018-slide-what-if-you-could-beta-test-clothes.jpg",
      :outfit => ["light blue collared buttoned down long sleeved shirt", "black tie", "black belt", "navy blue pants", "black dress shoes","black breifcase"]
      },
    :outfit4 => {
      :name => "officeworkmen2",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "120",
      :image => "https://s-media-cache-ak0.pinimg.com/236x/c1/3f/b3/c13fb3495d00cf6f77105dce77fbe6fc.jpg",
      :outfit => ["navy blue jacket", "button down collared light blue shirt" "light brown leather belt", "chino pants" "brown dress shoes"]
      }
    }
  end
end


