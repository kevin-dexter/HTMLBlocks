namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Input
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
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Input extends Component{
    const AUTOCOMPLETE_ON  = 1;
    const AUTOCOMPLETE_OFF = 2;
    
    const ENCODE_APPLICATION = 1;
    const ENCODE_MULTIPART   = 2;
    const ENCODE_PLAIN_TEXT  = 3;

    const METHOD_POST = 1;
    const METHOD_GET  = 2;
    
    const TARGET_BLANK  = 1;
    const TARGET_SELF   = 2;
    const TARGET_PARENT = 3;
    const TARGET_TOP    = 4;

    const TYPE_BUTTON         = 1;
    const TYPE_CHECKBOX       = 2;
    const TYPE_COLOR          = 3;
    const TYPE_DATE           = 4;
    const TYPE_DATETIME_LOCAL = 5;
    const TYPE_EMAIL          = 6;
    const TYPE_FILE           = 7;
    const TYPE_HIDDEN         = 8;
    const TYPE_IMAGE          = 9;
    const TYPE_MONTH          = 10;
    const TYPE_NUMBER         = 11;
    const TYPE_PASSWORD       = 12;
    const TYPE_RADIO          = 13;
    const TYPE_RANGE          = 14;
    const TYPE_RESET          = 15;
    const TYPE_SEARCH         = 16;
    const TYPE_SUBMIT         = 17;
    const TYPE_TEL            = 18;
    const TYPE_TEXT           = 19;
    const TYPE_TIME           = 20;
    const TYPE_URL            = 21;
    const TYPE_WEEK           = 22;
    
    
    private accept;
    private alt;
    private autocomplete;
    private autofocus;
    private checked;
    private dirname;
    private disabled;
    private form;
    private formaction;
    private formenctype;
    private formmethod;
    private formnovalidate;
    private formtarget;
    private height;
    private list;
    private max;
    private maxlength;
    private min;
    private multiple;
    private name;
    private pattern;
    private placeholder;
    private readonly;
    private required;
    private size;
    private src;
    private sep;
    private type;
    private value;
    private width;


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        parent::__destruct();
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

