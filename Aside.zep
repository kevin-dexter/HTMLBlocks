namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Aside
//
// The <aside> tag defines some content aside from the content it is placed in.  The aside content
// should be related to the surrounding content.
//
// ex.  <p>My family and I visited The Epcot center this summer.</p>
//
//      <aside>
//          <h4>Epcot Center</h4>
//          <p>The Epcot Center is a theme park in Disney World, Florida.</p>
//      </aside> 
//
// The <aside> tag also supports the Global Attributes in HTML.
// The <aside> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Aside extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <aside></aside>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<aside " . parent::generateAttributes() . ">" . parent::generateComponents() . "</aside>";
    }
}
