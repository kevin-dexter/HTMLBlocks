namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Hr
//
// The <hr> tag defines a thematic break in an HTML page (e.g. a shift of topic).  The <hr> element
// is used to separate content (or define a change) in an HTML page.
//
// ex. <h1>HTML</h1>
//     <p>HTML is a language for describing web pages.....</p>
//
//     <hr>
//
//     <h1>CSS</h1>
//     <p>CSS defines how to display HTML elements.....</p> 
//
// The <hr> tag also supports the Global Attributes in HTML.
// The <hr> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Hr extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <hr>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<hr ".parent::generateAttributes().">";
    }
}

