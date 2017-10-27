namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Bdo
//
// bdo stands for Bi-Directional Override.  The <bdo> tag is used to override the current text
// direction.
//
// ex.  <bdo dir="rtl">
//          This text will go right-to-left.
//      </bdo> 
//
// The <bdo> tag also supports the Global Attributes in HTML.
// The <bdo> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Bdo extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<bdo " . parent::generateAttributes() . ">" . parent::generateComponents() . "</bdo>";
    }
}

