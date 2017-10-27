namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Footer
//
// The <footer> tag defines a footer for a document or section.  A <footer> element should contain
// information about its containing element.
// A <footer> element typically contains:
//    authorship information
//    copyright information
//    contact information
//    sitemap
//    back to top links
//    related documents
//
// You can have several <footer> elements in one document.
//
// ex. <footer>
//         <p>Posted by: Hege Refsnes</p>
//         <p>Contact information: <a href="mailto:someone@example.com">
//             someone@example.com</a>.</p>
//     </footer> 
//
// The <footer> tag also supports the Global Attributes in HTML.
// The <footer> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Footer extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <footer></footer>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<footer ".parent::generateAttributes().">".parent::generateComponents()."</footer>";
    }
}

