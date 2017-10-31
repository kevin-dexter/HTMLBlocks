namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Header
//
// The <header> element represents a container for introductory content or a set of navigational links.
// A <header> element typically contains one or more heading elements (<h1> - <h6>), logo or icon and/or
// authorship information.  You can have several <header> elements in one document.
//
// Note: A <header> tag cannot be placed within a <footer>, <address> or another <header> element.
//
// ex. <article>
//         <header>
//             <h1>Most important heading here</h1>
//             <h3>Less important heading here</h3>
//             <p>Some additional information here</p>
//         </header>
//         <p>Lorem Ipsum dolor set amet....</p>
//     </article>
//
// The <header> tag also supports the Global Attributes in HTML.
// The <header> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Header extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<header ".parent::generateAttributes().">".parent::generateComponents()."</header>";
    }
}

