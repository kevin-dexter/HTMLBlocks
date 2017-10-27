namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Dd
//
// The <dd> tag is used to describe a term/name in a description list.  The <dd> tag is used in
// conjunction with <dl> (defines a description list) and <dt> (defines terms/names).  Inside a <dd>
// tag you can put paragraphs, line breaks, images, links, lists, etc.
//
// ex. <dl>
//         <dt>Coffee</dt>
//         <dd>Black hot drink</dd>
//         <dt>Milk</dt>
//         <dd>White cold drink</dd>
//     </dl> 
//
// The <dd> tag also supports the Global Attributes in HTML.
// The <dd> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Dd extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <dd></dd>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<dd ".parent::generateAttributes().">".parent::generateComponents()."</dd>";
    }
}

