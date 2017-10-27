namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Del
//
// ex. <p>My favorite color is <del>blue</del> <ins>red</ins>!</p>
//
// The <del> tag also supports the Global Attributes in HTML.
// The <del> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Del extends Component{

    private cite;     // Specifies a URL to a document that explains the reason why the text was deleted.
    private datetime; // Specifies the date and time of when the text was deleted.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->cite);
        unset(this->datetime);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Cite 
    //
    // The cite attribute specifies a URL to a document that explains the reason why the text was deleted.
    //
    // Syntax: <del cite="URL">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getCite(){ return this->cite; }
    public function setCite(string cite){ let this->cite = cite; }
    private function generateCite(){ return (this->cite!="") ? " cite='".this->cite."'" : ""; }

    ////////////////////////////////////////////
    // Datetime
    //
    // The datetime attribute specifies the date and time when the text was deleted.
    //
    // Syntax: <del datetime="YYYY-MM-DDThh:mm:ssTZD">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDatetime(){ return this->datetime; }
    public function setDatetime(string datetime){ let this->datetime = datetime; }
    private function generateDatetime(){ return (this->datetime!="") ? " datetime='".this->datetime."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <del></del>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateCite().this->generateDatetime();
        return "<del ".attributes.parent::generateAttributes().">".parent::generateComponents()."</del>";
    }
}

