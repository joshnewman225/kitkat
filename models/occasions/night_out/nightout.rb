class Night_Out
  attr_accessor :outfits;
  def initialize
  @outfits = {
    :outfit1 => {
      :name => "nightoutmen1",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "120",
      :image => "images/nightout_men_1.jpg",
      :outfit => ["light grey blazer", "black t-shirt ", "black dress pants", "black/brown dress shoes"]
      },
    :outfit2 => {
      :name => "nightoutmen2",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "120",
      :image => "images/nightout_men_2.jpg",
      :outfit => ["white buttoned down shirt", "white blazer", "grey bow tie", "dark blue jeans", "grey dress shoes"]
      },
    :outfit3 => {
      :name => "nightoutwomen1",
      :gender => "female",
      :temp_low => "0",
      :temp_high => "120",
      :image => "images/nightout_women_1.jpeg",
      :outfit => ["solid colored buttoned long sleeved slightly tight shirt", "blue jeans", "casual sneakers such as vans, converse, ect"]
      },
       :outfit4 => {
         :name => "casualwintermen2",
      :gender => "male",
      :temp_low => "0",
      :temp_high => "50",
         :image => "images/casualwinter_men_2.jpg",
         :outfit => ["solid colored t-shirt", "collared flannel" "brown light jacket", "tan khaki pants" "casual solid colored sneakers such as vans, converse, ect"]
         },
       :outfit5 => {
         :name => "casualsummerwomen1",
         :gender => "female",
      :temp_low => "51",
      :temp_high => "120",
         :image => "images/casualsummer_women_1.jpg",
         :outfit => ["navy blue and white striped long sleeved flowy shirt", "ripped white skinny jeans ", "dark colored sunglasses", "light solid colored flats", "medium sized grey purse", "jean jacket tied around the waist", "gold watch/bacelet"]
      },
       :outfit6 => {
      :name => "casualsummerwomen2",
         :gender => "female",
      :temp_low => "51",
      :temp_high => "120",
         :image => "images/casualsummer_women_2.jpg",
         :outfit => ["jean cutoff shorts with brown thick belt", "solid colored muscle tee halfway tucked into shorts", "gladiator sandles", "black/brown mirrored sunglasses"]
      },
       :outfit7 => {
         :name => "casualwinterwomen1",
         :gender => "female",
      :temp_low => "0",
      :temp_high => "50",
         :image => "images/casualwinter_women_1.jpg",
         :outfit => ["white buttoned down shirt", "auburn zip up light leather jacket", "blue skinny jeans", "light brown fur vest", "light brown colored high heels", "black leather hand bag"]
      },
       :outfit8 => {
         :name => "casualwinterwomen2",
         :gender => "female",
      :temp_low => "0",
      :temp_high => "50",
         :image => "images/casualwinter_women_2.jpg",
         :outfit => ["white buttoned down blouse", "grey wool infinity scarf ", "light brown light zip up leather jacket", "black skinny jeans", "high grey boots"]
      }
    }
    end
end


