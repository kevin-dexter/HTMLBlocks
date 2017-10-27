namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Body
//
// bdo stands for Bi-Directional Override.  The <bdo> tag is used to override the current text
// direction.
//
// ex. <html>
//         <head>
//             <title>Title of the document</title>
//         </head>
//         <body>
//             The content of the document......
//         </body>
//     </html> 
//
// The <body> tag also supports the Global Attributes in HTML.
// The <body> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Body extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<body " . parent::generateAttributes() . ">" . parent::generateComponents() . "</body>";
    }
}

