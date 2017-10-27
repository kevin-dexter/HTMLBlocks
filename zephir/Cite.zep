namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Cite
//
// The <cite> tag defines the title of a work (e.g. a book, a song, a movie, a TV show, a painting,
// a sculpture, etc.).
//
// ex. <p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p> 
//
// The <cite> tag also supports the Global Attributes in HTML.
// The <cite> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Cite extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<cite " . parent::generateAttributes() . ">".parent::generateComponents()."</cite>";
    }
}

