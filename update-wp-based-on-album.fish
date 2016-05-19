function update-wp-based-on-album
	if [ UPDATE_ALBUM_WP = true]
    echo true
    wp album
  end
end
