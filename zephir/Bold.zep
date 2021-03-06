namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Bold
//
// The <b> tag specifies bold text.
// 
// ex. <p>This is normal text - <b>and this is bold text</b>.</p> 
//
// The <b> tag also supports the Global Attributes in HTML.
// The <b> tag DOES NOT support the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Bold extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<b " . parent::generateAttributes() . ">" . parent::generateComponents() . "</b>";
    }
}
