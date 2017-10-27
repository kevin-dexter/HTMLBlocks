namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Caption
//
// The <caption> tag defines a table caption.  The <caption> tag must be inserted immediately after
// the <table> tag.  You can specify only one caption per table.  By default, a table caption will
// be center-aligned above a table. However, the CSS properties text-align and caption-side can be
// used to align and place the caption.
//
// ex. This text contains<br>a line break. 
//
// The <br> tag also supports the Global Attributes in HTML.
// The <br> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Caption extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <caption></caption>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<caption " . parent::generateAttributes() . ">".parent::generateComponents()."</caption>";
    }
}

