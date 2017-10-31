namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Hyperlink
//
// The <colgroup> tag specifies a group of one or more columns in a table for formatting.  The
// <colgroup> tag is useful for applying styles to entire columns, instead of repeating the styles
// for each cell, for each row.  The <colgroup> tag must be a child of a <table> element, after any
// <caption> elements and before any <thead>, <tbody>, <tfoot>, and <tr> elements.
//
// ex. <colgroup>
//         <col span="2" style="background-color:red">
//         <col style="background-color:yellow">
//     </colgroup>
//
// The <colgroup> tag also supports the Global Attributes in HTML.
// The <colgroup> tag also supports the Event Attributes in HTML.
//
// STATUS : Incomplete
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Hyperlink extends Component{

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

