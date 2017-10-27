namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Address
//
// The <address> tag defines the contact information for the author/owner of a document or an article.
// If the <address> element is inside the <body> element, it represents contact information for the document.
// If the <address> element is inside an <article> element, it represents contact information for that article.
// The text in the <address> element usually renders in italic. Most browsers will add a line break before
// and after the address element.
//
// ex.  <address>
//          Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br>
//          Visit us at:<br>
//          Example.com<br>
//          Box 564, Disneyland<br>
//          USA
//      </address> 
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Address extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <address></address>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<address " . parent::generateAttributes() . ">" . parent::generateComponents() . "</address>";
    }
}
