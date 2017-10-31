namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Track
//
// The <track> tag specifies text tracks for media elements (<audio> and <video>).  This element is
// used to specify subtitles, caption files or other files containing text, that should be visible
// when the media is playing.
//
// ex. <video width="320" height="240" controls>
//         <source src="forrest_gump.mp4" type="video/mp4">
//         <source src="forrest_gump.ogg" type="video/ogg">
//         <track src="subtitles_en.vtt" kind="subtitles" srclang="en" label="English">
//         <track src="subtitles_no.vtt" kind="subtitles" srclang="no" label="Norwegian">
//     </video>
//
// The <track> tag also supports the Global Attributes in HTML.
// The <track> tag also supports the Event Attributes in HTML.
//
// STATUS : Incomplete.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Track extends Component{

    const KIND_CAPTIONS    = 1;
    const KIND_CHAPTERS    = 2;
    const KIND_DESCRIPTIONS= 3;
    const KIND_METADATA    = 4;
    const KIND_SUBTITLES   = 5;

    private default;  // Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate.
    private kind;     // Specifies the kind of text track.
    private label;    // Specifies the title of the text track.
    private src;      // Required. Specifies the URL of the track file.
    private srclang;  // Specifies the language of the track text data (required if kind="subtitles").


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->default);
        unset(this->kind);
        unset(this->label);
        unset(this->src);
        unset(this->srclang);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Span
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSpan(){ return this->span; }
    public function setSpan(var span){ let this->span = span; }
    private function generateSpan(){ return (this->span!="") ? " span='".this->span."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateSpan();
        return "<colgroup ".attributes.parent::generateAttributes().">".parent::generateComponents()."</colgroup>";
    }
}

