# # Testing resource(playlist) creation
# resource "spotify_playlist" "sike_hits"{
#     name="Sike Hits"
#     tracks=["3FqtduiaqnFYvBgKuc6QWQ"]
# }

# Data sources
data "spotify_search_track" "shubh"{
    artist="Shubh"
}

data "spotify_search_track" "karan"{
    artist="Karan Aujla"
}

data "spotify_search_track" "diljit" {
  artist = "Diljit Dosanjh"
}

resource "spotify_playlist" "sike_punjabi_hits"{
    name="Sike Punjabi Hits"
    description = "This Punjabi Hits playlist was created by me and tf!"
    tracks=[
        data.spotify_search_track.diljit.tracks[0].id,
        data.spotify_search_track.diljit.tracks[1].id,
        data.spotify_search_track.diljit.tracks[2].id,
        data.spotify_search_track.shubh.tracks[0].id,
        data.spotify_search_track.shubh.tracks[1].id,
        data.spotify_search_track.shubh.tracks[2].id,
        data.spotify_search_track.karan.tracks[0].id,
        data.spotify_search_track.karan.tracks[1].id,
        data.spotify_search_track.karan.tracks[2].id,
    ]
}