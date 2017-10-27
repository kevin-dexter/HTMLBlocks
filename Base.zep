namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Base
//
// The <base> tag specifies the base URL/target for all relative URLs in a document. There can be at
// maximum one <base> element in a document, and it must be inside the <head> element.
//
// ex. <head>
//         <base href="https://www.w3schools.com/images/" target="_blank">
//     </head>
//
// The <base> tag also supports the Global Attributes in HTML.
// The <base> tag DOES NOT support the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Base extends Component{
   
    const TARGET_BLANK  = 1;
    const TARGET_PARENT = 2;
    const TARGET_SELF   = 3;
    const TARGET_TOP    = 4;

    private href = "";   // Specifies the base URL for all relative URLs in the page.
    private target = ""; // Specifies the default target for all hyperlinks and forms in the page.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->href);
        unset(this->target);
        
        parent::__destruct();
    }
    
    ////////////////////////////////////////////
    // Href
    //
    //
    //
    // Syntax: <base href="some/url/to/something">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHref(){ return this->href; }
    public function setHref(string href){ let this->href = href; }
    private function generateHref(){ return (this->href!="") ? " href='".this->href."'" : ""; }

    ////////////////////////////////////////////
    // Target
    //
    //
    //
    // Syntax: <base target="_blank">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTarget(){ return this->target; }
    public function setTarget(var target){
        switch(target){
            case Base::TARGET_BLANK:
                let this->target = "_blank";
                break;
            case Base::TARGET_PARENT:
                let this->target = "_parent";
                break;
            case Base::TARGET_SELF:
                let this->target = "_self";
                break;
            case Base::TARGET_TOP:
                let this->target = "_top";
                break;
            default:
                let this->target = target;
                break;
        }
    }
    private function generateTarget(){ return (this->target!="") ? " target='".this->target."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateHref().this->generateTarget();
        return "<base ".attributes.parent::generateAttributes().">".parent::generateComponents()."</article>";
    }
}
