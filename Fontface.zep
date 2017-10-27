namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Fontface
//
// 
//
// ex. 
//
// The <fontface> tag also supports the Global Attributes in HTML.
// The <fontface> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Fontface extends Component{

    private span;    // Specifies the number of columns a column group should span.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        call_user_func(["parent", "__destruct()"]);
    }

    ////////////////////////////////////////////
    // Span
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSpan(){ return this->span; }
    public function setSpan(var span){ let this->span = span; }
    private function generateSpan(){ return (this->span!="") ? " span='".this->span."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateSpan();
        return "<colgroup ".attributes.parent::generateAttributes().">".parent::generateComponents()."</colgroup>";
    }
}

