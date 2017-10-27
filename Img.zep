namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Img
//
// The <img> tag defines an image in an HTML page.  The <img> tag has two required attributes: src
// and alt.  Note: Images are not technically inserted into an HTML page, images are linked to HTML
// pages. The <img> tag creates a holding space for the referenced image.  Tip: To link an image to
// another document, simply nest the <img> tag inside <a> tags.
//
// ex. <img src="smiley.gif" alt="Smiley face" height="42" width="42"> 
//
// The <img> tag also supports the Global Attributes in HTML.
// The <img> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Img extends Component{

    private alt;          // Specifies an alternate text for an image.
    private crossorigin;  // Allow images from third-party sites that allow cross-origin access to be used with canvas.
    private height;       // Specifies the height of an image.
    private ismap;        // Specifies an image as a server-side image-map.
    private longdesc;     // Specifies a URL to a detailed description of an image.
    private size;         // Specifies image sizes for different page layouts.
    private src;          // Specifies the URL of an image.
    private srcset;       // Specifies the URL of the image to use in different situations.
    private usemap;       // Specifies an image as a client-side image-map.
    private width;        // Specifies the width of an image.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->alt);
        unset(this->crossorigin);
        unset(this->height);
        unset(this->ismap);
        unset(this->longdescr);
        unset(this->size);
        unset(this->src);
        unset(this->srcset);
        unset(this->usemap);
        unset(this->width);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Alt
    //
    // The required alt attribute specifies an alternate text for an image, if the image cannot be
    // displayed.  The alt attribute provides alternative information for an image if a user for some
    // reason cannot view it (because of slow connection, an error in the src attribute, or if the
    // user uses a screen reader).
    //
    // Syntax: <img alt="text">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAlt(){ return this->alt; }
    public function setAlt(string alt){ let this->alt = alt; }
    private function generateAlt(){ return (this->alt!="") ? " alt='".this->alt."'" : ""; }
    
    ////////////////////////////////////////////
    // Crossorigin
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getCrossorigin(){ return this->crossorigin; }
    public function setCrossorigin(string crossorigin){ let this->crossorigin = crossorigin; }
    private function generateCrossorigin(){ return (this->crossorigin!="") ? " crossorigin='".this->crossorigin."'" : ""; }
    
    ////////////////////////////////////////////
    // Height
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->height; }
    public function setHeight(string height){ let this->height = height; }
    private function generateHeight(){ return (this->height!="") ? " height='".this->height."'" : ""; }
    
    ////////////////////////////////////////////
    // Ismap
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getIsmap(){ return this->ismap; }
    public function setIsmap(string ismap){ let this->ismap = ismap; }
    private function generateIsmap(){ return (this->ismap!="") ? " ismap='".this->ismap."'" : ""; }
    
    ////////////////////////////////////////////
    // Longdesc
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getLongdesc(){ return this->longdesc; }
    public function setLongdesc(string longdesc){ let this->longdesc = longdesc; }
    private function generateLongdesc(){ return (this->longdesc!="") ? " longdesc='".this->longdesc."'" : ""; }
    
    ////////////////////////////////////////////
    // Size
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSize(){ return this->size; }
    public function setSize(string size){ let this->size = size; }
    private function generateSize(){ return (this->size!="") ? " size='".this->size."'" : ""; }
    
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
    // Srcset
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSrcset(){ return this->srcset; }
    public function setSrcset(string srcset){ let this->srcset = srcset; }
    private function generateSrcset(){ return (this->srcset!="") ? " srcset='".this->srcset."'" : ""; }
    
    ////////////////////////////////////////////
    // Usemap
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getUsemap(){ return this->usemap; }
    public function setUsemap(string usemap){ let this->usemap = usemap; }
    private function generateUsemap(){ return (this->usemap!="") ? " usemap='".this->usemap."'" : ""; }
    
    ////////////////////////////////////////////
    // Width
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->width; }
    public function setWidth(string width){ let this->width = width; }
    private function generateWidth(){ return (this->width!="") ? " width='".this->width."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <img>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateAlt().this->generateCrossorigin().this->generateHeight().
                            this->generateIsmap().this->generateLongdesc().this->generateSize().
                            this->generateSrc().this->generateSrcset().this->generateUsemap().
                            this->generateWidth();
        return "<col ".attributes.parent::generateAttributes().">";
    }
}

