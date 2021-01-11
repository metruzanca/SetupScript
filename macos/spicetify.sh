# Install spicetify-cli from bash
brew install khanhas/tap/spicetify-cli 

# Generate base config & setup
spicetify
spicetify backup apply enable-devtool

# Install theme repo
https://github.com/morpheusthewhite/spicetify-themes.git
cd spicetify-themes
cp -r * ~/spicetify_data/Themes

# Apply DribbblishDynamic-Dark
spicetify config current_theme DribbblishDynamic color_scheme Dark             
cd "$(dirname "$(spicetify -c)")/Themes/DribbblishDynamic"
cp dribbblish-dynamic.js ../../Extensions
spicetify config extensions dribbblish-dynamic.js
spicetify config current_theme DribbblishDynamic color_scheme dark
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1

# Apply base extensions
spicetify config extensions dribbblish-dynamic.js
spicetify config extensions bookmark.js
spicetify config extensions fullAppDisplay.js
spicetify config extensions newRelease.js

# Apply all above changes
spicetify apply