namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Ul
//
// The <ul> tag defines an unordered (bulleted) list.  Use the <ul> tag together with the <li> tag
// to create unordered lists.
//
// ex. <ul>
//         <li>Coffee</li>
//         <li>Tea</li>
//         <li>Milk</li>
//     </ul> 
//
// The <ul> tag also supports the Global Attributes in HTML.
// The <ul> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Ul extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <ul></ul>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<ul ".parent::generateAttributes().">".parent::generateComponents()."</ul>";
    }
}

