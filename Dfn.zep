namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Dfn
//
// The <dfn> tag represents the defining instance of a term in HTML.  The defining instance is often
// the first use of a term in a document.  The nearest parent of the <dfn> tag must also contain the
// definition/explanation for the term inside <dfn>.  The term inside the <dfn> tag can be any of the
// following: 
//    1. The content of the <dfn> element (without a title attribute):
//    2. The title attribute of the <dfn> tag:
//    3. The title attribute of an <abbr> tag inside the <dfn> element:
// You can also add an id attribute to the <dfn> element. Then, whenever a term is used, it can refer
// back to the definition using an <a> tag:
//
// ex. <p><dfn>HTML</dfn> is the standard markup language for creating web pages.</p>
//
// The <Dfn> tag also supports the Global Attributes in HTML.
// The <Dfn> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Dfn extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<dfn ".parent::generateAttributes().">".parent::generateComponents()."</dfn>";
    }
}

