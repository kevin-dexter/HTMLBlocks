namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Html
//
// The <html> tag tells the browser that this is an HTML document.  The <html> tag represents the
// root of an HTML document.  The <html> tag is the container for all other HTML elements (except
// for the <!DOCTYPE> tag).
//
// ex. <!DOCTYPE HTML>
//     <html>
//         <head>
//             <title>Title of the document</title>
//         </head>
//
//         <body>
//             The content of the document......
//         </body>
//     </html> 
//
// The <html> tag also supports the Global Attributes in HTML.
// The <html> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Html extends Component{

    private manifest;  // Specifies the address of the document's cache manifest (for offline browsing).
    private xmlns;     // Specifies the XML namespace attribute (If you need your content to conform to XHTML).


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->manifest);
        unset(this->xmlns);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Manifest
    //
    // The manifest attribute specifies the location of the document's cache manifest. HTML5 introduces
    // application cache, which means that a web application is cached, and accessible without an
    // internet connection.  Application cache gives an application three advantages:
    //     Offline browsing - users can use the application when they're offline
    //     Speed - cached resources load faster
    //     Reduced server load - the browser will only download updated/changed resources from the server
    // The manifest attribute should be included on every page of your web application that you want cached.
    // The manifest file is a simple text file that lists the resources the browser should cache for offline access.
    //
    // Syntax: <html manifest="URL">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getManifest(){ return this->manifest; }
    public function setManifest(string manifest){ let this->manifest = manifest; }
    private function generateManifest(){ return (this->manifest!="") ? " span='".this->manifest."'" : ""; }
    
    ////////////////////////////////////////////
    // Xmlns
    //
    // The xmlns attribute specifies the xml namespace for a document.
    //
    // Syntax: <html xmlns="http://www.w3.org/1999/xhtml">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getXmlns(){ return this->xmlns; }
    public function setXmlns(string xmlns){ let this->xmlns = xmlns; }
    private function generateXmlns(){ return (this->xmlns!="") ? " xmlns='".this->xmlns."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <html></html>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateManifest().this->generateXmlns();
        return "<html ".attributes.parent::generateAttributes().">".parent::generateComponents()."</html>";
    }
}

