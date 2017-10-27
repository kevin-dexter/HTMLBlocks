namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Figure
//
// The <figure> tag specifies self-contained content, like illustrations, diagrams, photos, code
// listings, etc.  While the content of the <figure> element is related to the main flow, its position
// is independent of the main flow, and if removed it should not affect the flow of the document.
//
// ex. <figure>
//         <img src="img_pulpit.jpg" alt="The Pulpit Rock" width="304" height="228">
//     </figure> 
//
// The <figure> tag also supports the Global Attributes in HTML.
// The <figure> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Figure extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<figure ".parent::generateAttributes().">".parent::generateComponents()."</figure>";
    }
}

