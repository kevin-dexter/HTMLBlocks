namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Embed
//
// The <embed> tag defines a container for an external application or interactive content (a plug-in).
//
// ex. <embed src="helloworld.swf"> 
//
// The <embed> tag also supports the Global Attributes in HTML.
// The <embed> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Embed extends Component{

    private height;  // Specifies the height of the embedded content.
    private width;   // Specifies the width of the embedded content.
    private type;    // Specifies the media type of the embedded content.
    private src;     // Specifies the address of the external file to embed.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->height);
        unset(this->width);
        unset(this->type);
        unset(this->src);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Height
    //
    // The height attribute specifies the height of the embedded content, in pixels.
    //
    // Syntax: <embed height="pixels">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->height; }
    public function setHeight(string height){ let this->height = height; }
    private function generateHeight(){ return (this->height!="") ? " height='".this->height."'" : ""; }

    ////////////////////////////////////////////
    // Width
    //
    // The width attribute specifies the width of the embedded content, in pixels.
    //
    // Syntax: <embed width="pixels">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->width; }
    public function setWidth(string width){ let this->width = width; }
    private function generateWidth(){ return (this->width!="") ? " width='".this->width."'" : ""; }

    ////////////////////////////////////////////
    // Type
    //
    // The type attribute specifies the Internet media type (formerly known as MIME type) of the
    // embedded content.
    //
    // NOTE: The Internet media type of the embedded content.  Look at IANA Media Types for a complete
    // list of standard media types.
    //
    // Syntax: <embed type="media_type">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getType(){ return this->type; }
    public function setType(string type){ let this->type = type; }
    private function generateType(){ return (this->type!="") ? " type='".this->type."'" : ""; }

    ////////////////////////////////////////////
    // Src
    //
    // 
    //
    // Syntax:                         
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSrc(){ return this->src; }
    public function setSrc(string src){ let this->src = src; }
    private function generateSrc(){ return (this->src!="") ? " src='".this->src."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateHeight().this->generateWidth().this->generateType().this->generateSrc();
        return "<embed ".attributes.parent::generateAttributes().">".parent::generateComponents()."</embed>";
    }
}

