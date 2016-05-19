function toggle-album-wp-tracking
	set -U UPDATE_ALBUM_WP (inverse-of $UPDATE_ALBUM_WP)
  if match $UPDATE_ALBUM_WP true
    wp album
  end
end
