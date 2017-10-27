namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Audio
//
// The <audio> tag defines sound, such as music or other audio streams.  Currently, there are 3
// supported file formats for the <audio> element: MP3, Wav, and Ogg.
//
// ex. <audio controls>
//         <source src="horse.ogg" type="audio/ogg">
//         <source src="horse.mp3" type="audio/mpeg">
//         Your browser does not support the audio tag.
//     </audio> 
//
// The <audio> tag also supports the Global Attributes in HTML.
// The <audio> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Audio extends Component{

    const PRELOAD_AUTO     = 1;
    const PRELOAD_METADATA = 2;
    const PRELOAD_NONE     = 3;

    private autoplay = ""; // Specifies that the audio will start playing as soon as it is ready.
    private controls = ""; // Specifies that audio controls should be displayed (such as a play or pause button etc).
    private loops = "";    // Specifies that the audio will start over again, every time it is finished.
    private muted = "";    // Specifies that the audio output should be muted.
    private preload = "";  // Specifies if and how the author thinks the audio should be loaded when the page loads.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->autoplay);
        unset(this->controls);
        unset(this->loops);
        unset(this->muted);
        unset(this->preload);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Autoplay
    //
    // 
    //
    // Syntax: <audio autoplay>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAutoplay(){ return this->autoplay; }
    public function setAutoplay(){ let this->autoplay = "autoplay"; }
    private function generateAutoplay(){ return (this->autoplay!="") ? " autoplay" : ""; }

    ////////////////////////////////////////////
    // Controls
    //
    //
    //
    // Syntax: <audio controls>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getControls(){ return this->controls; }
    public function setControls(){ let this->controls = "controls"; }
    private function generateControls(){ return (this->controls!="") ? " controls" : ""; }

    ////////////////////////////////////////////
    // Loop
    //
    //
    //
    // Syntax: <audio loop>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getLoop(){ return this->loops; }
    public function setLoop(){ let this->loops = "loop"; }
    private function generateLoop(){ return (this->loops!="") ? " loop" : ""; }

    ////////////////////////////////////////////
    // Muted
    //
    //
    //
    // Syntax: <audio muted>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMuted(){ return this->muted; }
    public function setMuted(){ let this->muted = "muted"; }
    private function generateMuted(){ return (this->muted!="") ? " muted" : ""; }

    ////////////////////////////////////////////
    // Preload
    //
    //
    //
    // Syntax: <audio preload="none">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getPreload(){ return this->preload; }
    public function setPreload(var preload){
        switch(preload){
            case Audio::PRELOAD_AUTO:
                let this->preload = "auto";
                break;
            case Audio::PRELOAD_METADATA:
                let this->preload = "metadata";
                break;
            case Audio::PRELOAD_NONE:
                let this->preload = "none";
                break;
            default:
                let this->preload = preload;
                break;
        }
    }
    private function generatePreload(){ return (this->preload!="") ? " preload='".this->preload."'" : ""; }

    ////////////////////////////////////////////
    // Source
    //
    //
    //
    // Syntax: <audio muted>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function setSource(<Source> source){ parent::setComponent(source); }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <audio></audio>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateAutoplay().this->generateControls().this->generateLoop().
                            this->generateMuted().this->generatePreload();
        return "<audio ".attributes.parent::generateAttributes().">".parent::generateComponents()."</audio>";
    }
}
