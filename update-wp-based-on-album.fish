function update-wp-based-on-album
	if match $UPDATE_ALBUM_WP true
    wp album
  end
end
