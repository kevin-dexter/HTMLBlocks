namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Figcaption
//
// The <figcaption> tag defines a caption for a <figure> element.  The <figcaption> element can be
// placed as the first or last child of the <figure> element.
//
// ex. <figure>
//         <img src="img_pulpit.jpg" alt="The Pulpit Rock" width="304" height="228">
//         <figcaption>Fig1. - A view of the pulpit rock in Norway.</figcaption>
//     </figure> 
//
// The <figcaption> tag also supports the Global Attributes in HTML.
// The <figcaption> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Figcaption extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<figcaption ".parent::generateAttributes().">".parent::generateComponents()."</figcaption>";
    }
}

