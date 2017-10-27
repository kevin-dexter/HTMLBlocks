namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Th
//
// The <th> tag defines a header cell in an HTML table.  An HTML table has two kinds of cells:  Header
// cells - contains header information (created with the <th> element), Standard cells - contains data
// (created with the <td> element).  The text in <th> elements are bold and centered by default.
//
// ex. <table>
//         <tr>
//             <th abbr="Make">Toy manufacturer</th>
//             <th abbr="Model">Vehicle model</th>
//         </tr>
//         <tr>
//             <td>Bruder Toys</td>
//             <td>Cross Country Vehicle</td>
//         </tr>
//         <tr>
//             <td>Bruder Toys</td>
//             <td>DHL Lorry</td>
//         </tr>
//     </table> 
//
// The <th> tag also supports the Global Attributes in HTML.
// The <th> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Th extends Component{

    private abbr;     // Specifies an abbreviated version of the content in a header cell.
    private colspan;  // Specifies the number of columns a header cell should span.
    private headers;  // Specifies one or more header cells a cell is related to.
    private rowspan;  // Specifies the number of rows a header cell should span.
    private scope;    // Specifies whether a header cell is a header for a column, row, or group of columns or rows.
    private sorted;   // Defines the sort direction of a column.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Abbr
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAbbr(){ return this->span; }
    public function setAbbr(var span){ let this->span = span; }
    private function generateAbbr(){ return (this->span!="") ? " span='".this->span."'" : ""; }
    
    ////////////////////////////////////////////
    // Colspan
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getColspan(){ return this->span; }
    public function setColspan(var span){ let this->span = span; }
    private function generateColspan(){ return (this->span!="") ? " span='".this->span."'" : ""; }
    
    ////////////////////////////////////////////
    // Headers
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeaders(){ return this->span; }
    public function setHeaders(var span){ let this->span = span; }
    private function generateHeaders(){ return (this->span!="") ? " span='".this->span."'" : ""; }
    
    ////////////////////////////////////////////
    // Rowspan
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getRowspan(){ return this->span; }
    public function setRowspan(var span){ let this->span = span; }
    private function generateRowspan(){ return (this->span!="") ? " span='".this->span."'" : ""; }
    
    ////////////////////////////////////////////
    // Scope
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getScope(){ return this->span; }
    public function setScope(var span){ let this->span = span; }
    private function generateScope(){ return (this->span!="") ? " span='".this->span."'" : ""; }
    
    ////////////////////////////////////////////
    // Sorted
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSorted(){ return this->span; }
    public function setSorted(var span){ let this->span = span; }
    private function generateSorted(){ return (this->span!="") ? " span='".this->span."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <th></th>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateAbbr().this->generateColspan().this->generateHeaders().
                         this->generateRowspan().this->generateScope().this->generateSorted();
        return "<th ".attributes.parent::generateAttributes().">".parent::generateComponents()."</th>";
    }
}

