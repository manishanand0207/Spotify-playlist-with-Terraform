resource "spotify_playlist" "Bollywood" {
  name        = "My playlist via terraform"
  tracks = ["16kiQQ4BoLHDyj5W2fkfNK"]
}

data "spotify_search_track" "Arijit" {
  artist = "Arijit Singh"
}

resource "spotify_playlist" "Arijit" {
    name= "Arijit"
    tracks=[data.spotify_search_track.Arijit.tracks[0].id,
    data.spotify_search_track.Arijit.tracks[1].id,
    data.spotify_search_track.Arijit.tracks[2].id,
    data.spotify_search_track.Arijit.tracks[3].id,
    data.spotify_search_track.Arijit.tracks[4].id]
}
