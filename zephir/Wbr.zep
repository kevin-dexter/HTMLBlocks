namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Wbr
//
// The <wbr> (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break.
//
// ex.  <p>To learn AJAX, you must be familiar with the XML<wbr>Http<wbr>Request Object.</p> 
//
// The <wbr> tag also supports the Global Attributes in HTML.
// The <wbr> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Wbr extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <wbr></wbr>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<wbr ".parent::generateAttributes().">".parent::generateComponents()."</wbr>";
    }
}

