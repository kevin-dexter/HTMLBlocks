namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Head
//
// The <head> element is a container for all the head elements.  The <head> element can include a
// title for the document, scripts, styles, meta information, and more.  The following elements can
// go inside the <head> element:
//    <title> (this element is required in an HTML document)
//    <style>
//    <base>
//    <link>
//    <meta>
//    <script>
//    <noscript>
//
//
// ex. <head>
//         <title>Title of the document</title>
//    </head>
//
// The <head> tag also supports the Global Attributes in HTML.
// The <head> tag DOES NOT support the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Head extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <head></head>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<head ".parent::generateAttributes().">".parent::generateComponents()."</head>";
    }
}

