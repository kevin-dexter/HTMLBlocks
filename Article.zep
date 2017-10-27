namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Article
//
// The <article> tag specifies independent, self-contained content.  An article should make sense on
// its own and it should be possible to distribute it independently from the rest of the site.
// Potential sources for the <article> element: Forum post, Blog post, News story, Comment.
//
// ex.  <article>
//          <h1>Google Chrome</h1>
//          <p>Google Chrome is a free, open-source web browser developed by Google, released in 2008.</p>
//      </article> 
//
// The <article> tag also supports the Global Attributes in HTML.
// The <article> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Article extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <article></article>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<article " . parent::generateAttributes() . ">" . parent::generateComponents() . "</article>";
    }
}
