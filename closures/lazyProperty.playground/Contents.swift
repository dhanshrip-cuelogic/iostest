/*
 Here we have "Playing" struct which will play song and "Video" struct is having name of the video and it will also create instance of "Playing" struct.
 But here we dont want to play the video unless we want to do so , for that we use lazy here so that it will start playing the song only once we access the instance .
 */

struct Playing{
    init() {
        print("Started playing")
    }
}
struct Video{
    var name : String
    lazy var playSong = Playing()
    init(name : String) {
        self.name = name
        print("the name of the song is \(name)")
    }
}

var song = Video(name: "Lazy")

var otherSong = Video(name: "Not Lazy")
otherSong.playSong


