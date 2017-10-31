namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialog
//
// The <dialog> tag defines a dialog box or window.  The <dialog> element makes it easy to create
// popup dialogs and modals on a web page.
//
// ex. <table>
//         <tr>
//             <th>January <dialog open>This is an open dialog window</dialog></th>
//             <th>February</th>
//             <th>March</th>
//         </tr>
//         <tr>
//             <td>31</td>
//             <td>28</td>
//             <td>31</td>
//         </tr>
//     </table> 
//
// The <dialog> tag also supports the Global Attributes in HTML.
// The <dialog> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Dialog extends Component{

    private open;    // Specifies that the dialog element is active and that the user can interact with it


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->open);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Open
    //
    // The open attribute is a boolean attribute.  When present, it specifies that the dialog element
    // is active and that the user can interact with it.
    //
    // Syntax: <dialog open>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOpen(){ return this->open; }
    public function setOpen(){ let this->open = "open"; }
    private function generateOpen(){ return (this->open!="") ? this->open : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <dialog></dialog>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = this->generateOpen();
        return "<dialog ".attributes.parent::generateAttributes().">".parent::generateComponents()."</dialog>";
    }
}

