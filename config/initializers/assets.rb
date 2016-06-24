# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Precompile *all* assets, except those that start with underscore
Rails.application.config.assets.precompile << Proc.new { |path|
    blacklist = [
        /[^_]*/
    ]
    full_path = Rails.application.assets.resolve(path)#.to_path

    if (path =~ /(^[^_\/]|\/[^_])[^\/]*$/) and (path !~ Regexp.union(blacklist) )
        true
    else
        false
    end
}