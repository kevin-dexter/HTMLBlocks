namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Div
//
// The <div> tag defines a division or a section in an HTML document.  The <div> tag is used to group
// block-elements to format them.  By default, browsers always place a line break before and after the
// <div> element. However, this can be changed.
//
// ex. <div style="color:#0000FF">
//         <h3>This is a heading</h3>
//         <p>This is a paragraph.</p>
//     </div> 
//
// The <div> tag also supports the Global Attributes in HTML.
// The <div> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Div extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<div ".parent::generateAttributes().">".parent::generateComponents()."</div>";
    }
}

