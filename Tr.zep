namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Tr
//
// The <tr> tag defines a row in an HTML table.  A <tr> element contains one or more <th> or <td>
// elements.
//
// ex. <table>
//         <tr>
//             <th>Month</th>
//             <th>Savings</th>
//         </tr>
//         <tr>
//             <td>January</td>
//             <td>$100</td>
//         </tr>
//     </table> 
//
// The <tr> tag also supports the Global Attributes in HTML.
// The <tr> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Tr extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <tr></tr>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<tr ".parent::generateAttributes().">".parent::generateComponents()."</tr>";
    }
}

