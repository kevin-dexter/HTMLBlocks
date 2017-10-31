namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Title
//
// The <title> tag is required in all HTML documents and it defines the title of the document.
// The <title> element:
//     defines a title in the browser toolbar.
//     provides a title for the page when it is added to favorites.
//     displays a title for the page in search-engine results.
//
// ex. <head>
//         <title>HTML Reference</title>
//     </head>
//
// The <title> tag also supports the Global Attributes in HTML.
// The <title> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Title extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <title></title>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<title ".parent::generateAttributes().">".parent::generateComponents()."</title>";
    }
}

