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