namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Blockquote
//
// The <blockquote> tag specifies a section that is quoted from another source.  Browsers usually
// indent <blockquote> elements.
//
// ex. <blockquote cite="http://www.worldwildlife.org/who/index.html">
//         For 50 years, WWF has been protecting the future of nature. The world's leading conservation organization,
//         WWF works in 100 countries and is supported by 1.2 million members in the United States and close to 5 million globally.
//     </blockquote> 
//
// The <blockquote> tag also supports the Global Attributes in HTML.
// The <blockquote> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Blockquote extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <area>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<blockquote ".parent::generateAttributes().">".parent::generateComponents()."</blockquote>";
    }
}
