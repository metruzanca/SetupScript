# Check if spotify is installed. if not, install spotify via brew.
brew list --cask spotify || brew install --cask spotify

# Install spicetify-cli from bash
brew install khanhas/tap/spicetify-cli 

# Generate base config & setup
spicetify
spicetify backup apply enable-devtool

# Install theme repo
https://github.com/morpheusthewhite/spicetify-themes.git
cd spicetify-themes
cp -r * ~/spicetify_data/Themes

# Apply DribbblishDynamic-Dark & install plugin
spicetify config current_theme DribbblishDynamic color_scheme Dark             
cd "$(dirname "$(spicetify -c)")/Themes/DribbblishDynamic"
cp dribbblish-dynamic.js ../../Extensions
spicetify config extensions dribbblish-dynamic.js
spicetify config current_theme DribbblishDynamic color_scheme dark
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1

# Apply base extensions
spicetify config extensions bookmark.js
spicetify config extensions fullAppDisplay.js
spicetify config extensions newRelease.js

# Install custom extensions
# TODO this cp might not work. idk how cwd works in bash. I assume its relative to the running bash file?
cp ./hide-ad-banner.js "$(dirname "$(spicetify -c)")/Extensions/"
spicetify config extensions hide-ad-banner.js

# TODO Potentially add an Extensions folder here to make this script more dynamic
# Need to figure out how to do that in bash.

# Apply all above changes
spicetify apply