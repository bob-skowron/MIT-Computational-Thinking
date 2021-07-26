# https://computationalthinking.mit.edu/Spring21/images/

using Colors, ColorVectorSpace, ImageShow, FileIO
using HypertextLiteral

url = "https://user-images.githubusercontent.com/6933510/107239146-dcc3fd00-6a28-11eb-8c7b-41aaf6618935.png" 

philip_filename = download(url) # download to a local file. The filename is returned
philip = load(philip_filename)

# Exercises
# change the url.
test_filename = downlad("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png")
# download a file that is already on your own computer
test_load = load("./module-1/automation.png")

# Inspecting your data
philip_size = size(philip)
philip_height = philip_size[1]
philip_width = philip_size[2]

a_pixel = philip[200, 100]
row_i,col_i=(1,1)

philip[550:650, 1:philip_width] # vertical 550-650, all horizontal
philip[550:650, :] # equivalent 

philip[550, :] # single row

philip_head = philip[470:800, 140:410] # headshot

# Modifying an image
# Exercise 2.5
# Write a function invert that inverts a color, i.e. sends (r,g,b) to (1-r, 1-g, 1-b)
function invert(color::AbstractRGB)
    return RGB(1.0-color.r, 1.0-color.g, 1.0-color.b)
end

philip_inverted = invert.(philip)


# Exercise 1.2
# Generate a vector of 100 zeros. Change the center 20 elements to 1.
function create_bar()
	z_vec = zeros(100)
    z_vec[41:60].=1
    return z_vec
end

# Array comprehensions
[RGB(x, 0, 0) for x in 0:0.1:1] # loop from 0 to 1 by 0.1

[RGB(i, j, 0) for i in 0:0.1:1, j in 0:0.1:1] # 2D works as well