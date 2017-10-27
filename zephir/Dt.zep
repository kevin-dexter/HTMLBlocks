namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Dt
//
// The <dt> tag defines a term/name in a description list.  The <dt> tag is used in conjunction with
// <dl> (defines a description list) and <dd> (describes each term/name).
//
// ex. <dl>
//         <dt>Coffee</dt>
//         <dd>Black hot drink</dd>
//         <dt>Milk</dt>
//         <dd>White cold drink</dd>
//     </dl> 
//
// The <dt> tag also supports the Global Attributes in HTML.
// The <dt> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Dt extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<dt ".parent::generateAttributes().">".parent::generateComponents()."</dt>";
    }
}

