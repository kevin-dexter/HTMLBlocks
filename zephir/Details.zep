namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Details
//
// The <details> tag specifies additional details that the user can view or hide on demand.  The
// <details> tag can be used to create an interactive widget that the user can open and close. Any
// sort of content can be put inside the <details> tag.  The content of a <details> element should
// not be visible unless the open attribute is set.
//
// ex. <details>
//         <summary>Copyright 1999-2014.</summary>
//         <p> - by Refsnes Data. All Rights Reserved.</p>
//         <p>All content and graphics on this web site are the property of the company Refsnes Data.</p>
//     </details> 
//
// The <details> tag also supports the Global Attributes in HTML.
// The <details> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Details extends Component{

    private open;    // Specifies that the details should be visible (open) to the user.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->open);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Open
    //
    // The open attribute is a boolean attribute.  When present, it specifies that the details should
    // be visible (open) to the user.
    //
    // Syntax: <details open> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOpen(){ return this->open; }
    public function setOpen(){ let this->open = "open"; }
    private function generateOpen(){ return (this->open!="") ? this->open: ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateOpen();
        return "<details ".attributes.parent::generateAttributes().">".parent::generateComponents()."</details>";
    }
}

