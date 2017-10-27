namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Bdi
//
// BDI stands for Bi-Directional Isolation.  The <bdi> tag isolates a part of text that might be
// formatted in a different direction from other text outside it. This element is useful when
// embedding user-generated content with an unknown directionality.
//
// ex.  <ul>
//          <li>User <bdi>hrefs</bdi>: 60 points</li>
//          <li>User <bdi>jdoe</bdi>: 80 points</li>
//      </ul> 
//
// The <bdi> tag also supports the Global Attributes in HTML.
// The <bdi> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Bdi extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<bdi " . parent::generateAttributes() . ">" . parent::generateComponents() . "</bdi>";
    }
}

