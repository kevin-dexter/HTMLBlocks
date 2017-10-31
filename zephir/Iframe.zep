namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Iframe
//
// The <iframe> tag specifies an inline frame.  An inline frame is used to embed another document
// within the current HTML document.
//
// ex. <iframe src="https://www.w3schools.com"></iframe> 
//
// The <iframe> tag also supports the Global Attributes in HTML.
// The <iframe> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Iframe extends Component{

    const SANDBOX_NONE                 = 0;  // Applies all restrictions.
    const SANDBOX_ALLOW_FORMS          = 1;  // Re-enables form submission.
    const SANDBOX_ALLOW_POINTER_LOCK   = 2;  // Re-enables APIs.
    const SANDBOX_ALLOW_POPUPS         = 3;  // Re-enables popups.
    const SANDBOX_ALLOW_SAME_ORIGIN    = 4;  // Allows the iframe content to be treated as being from the same origin.
    const SANDBOX_ALLOW_SCRIPTS        = 5;  // Re-enables scripts.
    const SANDBOX_ALLOW_TOP_NAVIGATION = 6;  // Allows the iframe content to navigate its top-level browsing context.

    private name;      // Specifies the name of an <iframe>.
    private sandbox;
    private src;
    private srcdoc;
    private height
    private width


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->name);
        unset(this->sandbox);
        unset(this->src);
        unset(this->height);
        unset(this->width);
    
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Name
    //
    // The name attribute specifies a name for the <iframe>.  This name attribute can be used to
    // reference the element in a JavaScript, or as the value of the target attribute of an <a>
    // or <form> element, or the formtarget attribute of an <input> or <button> element.
    //
    // Syntax: <iframe name="name">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getName(){ return this->name; }
    public function setName(string name){ let this->span = name; }
    private function generateName(){ return (this->name!="") ? " name='".this->name."'" : ""; }
    
    ////////////////////////////////////////////
    // Sandbox
    //
    // The sandbox attribute enables an extra set of restrictions for the content in the iframe.  When
    // the sandbox attribute is present, and it will:
    //     treat the content as being from a unique origin
    //     block form submission
    //     block script execution
    //     disable APIs
    //     prevent links from targeting other browsing contexts
    //     prevent content from using plugins (through <embed>, <object>, <applet>, or other)
    //     prevent the content to navigate its top-level browsing context
    //     block automatically triggered features (such as automatically playing a video or automatically focusing a form control)
    // The value of the sandbox attribute can either be just sandbox (then all restrictions are applied),
    // or a space-separated list of pre-defined values that will REMOVE the particular restrictions.
    //
    // Syntax: <iframe sandbox="value">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSandbox(){ return this->sandbox; }
    public function setSandbox(var sandbox=Iframe::SANDBOX_NONE){
        switch(sandbox){
            case Iframe::SANDBOX_NONE:
                let this->sandbox = "sandbox";
                break;
            case Iframe::SANDBOX_ALLOW_FORMS:
                let this->sandbox = "allow-forms";
                break;
            case Iframe::SANDBOX_ALLOW_POINTER_LOCK:
                let this->sandbox = "allow-pointer-lock";
                break;
            case Iframe::SANDBOX_ALLOW_POPUPS:
                let this->sandbox = "allow-popups";
                break;
            case Iframe::SANDBOX_ALLOW_SAME_ORIGIN:
                let this->sandbox = "allow-same-origin";
                break;
            case Iframe::SANDBOX_ALLOW_SCRIPTS:
                let this->sandbox = "allow-scripts";
                break;
            case Iframe::SANDBOX_ALLOW_TOP_NAVIGATION:
                let this->sandbox = "allow-top-navigation";
                break;
            default:
                let this->sandbox = sandbox;
                break;
        }
    }
    private function generateSandbox(){ return (this->sandbox!="") ? " sandbox='".this->sandbox."'" : ""; }
    
    ////////////////////////////////////////////
    // Src
    //
    // The src attribute specifies the address of the document to embed in the <iframe>.
    //
    // Syntax: <iframe src="URL">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSrc(){ return this->src; }
    public function setSrc(string src){ let this->src = src; }
    private function generateSrc(){ return (this->src!="") ? " src='".this->src."'" : ""; }
    
    ////////////////////////////////////////////
    // Srcdoc
    //
    // The srcdoc attribute specifies the HTML content of the page to show in the inline frame.  This
    // attribute is expected to be used together with the sandbox and seamless attributes.  If a browser
    // supports the srcdoc attribute, it will override the content specified in the src attribute (if present).
    // If a browser does NOT support the srcdoc attribute, it will show the file specified in the src attribute
    // instead (if present).
    //
    // Syntax: <iframe srcdoc="HTML_code">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSrcdoc(){ return this->srcdoc; }
    public function setSrc(string srcdoc){ let this->srcdoc = srcdoc; }
    private function generateSrcdoc(){ return (this->srcdoc!="") ? " srcdoc='".this->srcdoc."'" : ""; }
    
    ////////////////////////////////////////////
    // Height
    //
    // The height attribute specifies the height of an <iframe>, in pixels.
    //
    // Syntax: <iframe height="pixels">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->height; }
    public function setHeight(string height){ let this->height = height; }
    private function generateHeight(){ return (this->height!="") ? " height='".this->height."'" : ""; }
    
    ////////////////////////////////////////////
    // Width
    //
    // The width attribute specifies the width of an <iframe>, in pixels.
    //
    // Syntax: <iframe width="pixels">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->width; }
    public function setWidth(string width){ let this->width = width; }
    private function generateWidth(){ return (this->width!="") ? " width='".this->width."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <iframe></iframe>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateName().this->generateSandbox().this->generateSrc().
                            this->generateSrcdoc().this->generateHeight().this->generateWidth();
        return "<iframe ".attributes.parent::generateAttributes().">".parent::generateComponents()."</iframe>";
    }
}

