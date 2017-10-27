namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Col
//
// The <col> tag specifies column properties for each column within a <colgroup> element.  The <col>
// tag is useful for applying styles to entire columns, instead of repeating the styles for each cell,
// for each row.
//
// ex. <col span="2" style="background-color:red">
//
// The <col> tag also supports the Global Attributes in HTML.
// The <col> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Col extends Component{

    private span;  // The span attribute defines the number of columns a <col> element should span.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->span);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Span
    //
    // The span attribute defines the number of columns a <col> element should span.
    //
    // Syntax: <col span="2" style="background-color:red">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSpan(){ return this->span; }
    public function setSpan(int span){ let this->span = span; }
    private function generateSpan(){ return (this->span!="") ? " span='".this->span."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <col>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateSpan();
        return "<col ".attributes.parent::generateAttributes().">";
    }
}

