namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Br
//
// The <br> tag inserts a single line break.  The <br> tag is an empty tag which means that it has
// no end tag.
//
// ex. This text contains<br>a line break. 
//
// The <br> tag also supports the Global Attributes in HTML.
// The <br> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Br extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<br " . parent::generateAttributes() . ">";
    }
}

