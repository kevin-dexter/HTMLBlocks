namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Time
//
// The <time> tag defines a human-readable date/time.  This element can also be used to encode dates
// and times in a machine-readable way so that user agents can offer to add birthday reminders or
// scheduled events to the user's calendar, and search engines can produce smarter search results.
//
// ex. <p>I have a date on <time datetime="2008-02-14 20:00">Valentines day</time>.</p>
//
// The <time> tag also supports the Global Attributes in HTML.
// The <time> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Time extends Component{

    private datetime;    // Represent a machine-readable date/time of the <time> element.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->datetime);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Datetime
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDatetime(){ return this->datetime; }
    public function setDatetime(string datetime){ let this->span = datetime; }
    private function generateDatetime(){ return (this->datetime!="") ? " datetime='".this->datetime."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <time></time>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateDatetime();
        return "<time ".attributes.parent::generateAttributes().">".parent::generateComponents()."</time>";
    }
}

