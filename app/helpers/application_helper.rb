module ApplicationHelper

   def get_grid_color(r,c)
     sg = SquareGrid.where(row: r ,column: c)
   end

   def get_fav_color(user)
   	if user.square_grids.present?
	colors = user.square_grids.pluck(:color)
	fav = colors.each_with_object(Hash.new(0)){|o,h| h[o] += 1}
	hexacode = fav.max_by{|k,v| v}[0]
	hexacode
   end
   end

end
