namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Data
//
// The <data> tag links the given content with a machine-readable translation.  This element provides
// both a machine-readable value for data processors, and a human-readable value for rendering in a
// browser.
//
// ex. <data value="21053">Cherry Tomato</data>
//
// The <Data> tag also supports the Global Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Data extends Component{

    private value;  // Specifies the machine-readable translation of the content of the element.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->value);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Value
    //
    // Specifies the machine-readable translation of the content of the element.
    // [machine-readable format]
    //
    // Syntax: <data value="21053">Cherry Tomato</data>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getValue(){ return this->value; }
    public function setValue(var value){ let this->value = value; }
    private function generateValue(){ return (this->value!="") ? " value='".this->value."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateValue();
        return "<col ".attributes.parent::generateAttributes().">";
    }
}

