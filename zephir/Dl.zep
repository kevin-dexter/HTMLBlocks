namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Dl
//
// The <dl> tag defines a description list.  The <dl> tag is used in conjunction with <dt> (defines
// terms/names) and <dd> (describes each term/name).
//
// ex. <dl>
//         <dt>Coffee</dt>
//         <dd>Black hot drink</dd>
//         <dt>Milk</dt>
//         <dd>White cold drink</dd>
//     </dl> 
//
// The <dl> tag also supports the Global Attributes in HTML.
// The <dl> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Dl extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<dl ".parent::generateAttributes().">".parent::generateComponents()."</dl>";
    }
}

