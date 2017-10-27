namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Datalist
//
// The <datalist> tag specifies a list of pre-defined options for an <input> element.  The <datalist>
// tag is used to provide an "autocomplete" feature on <input> elements. Users will see a drop-down
// list of pre-defined options as they input data.  Use the <input> element's list attribute to bind
// it together with a <datalist> element.
//
// ex. <input list="browsers">
//
//     <datalist id="browsers">
//         <option value="Internet Explorer">
//         <option value="Firefox">
//         <option value="Chrome">
//         <option value="Opera">
//         <option value="Safari">
//     </datalist> 
//
// The <datalist> tag also supports the Global Attributes in HTML.
// The <datalist> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Datalist extends Component{

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <datalist></datalist>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<datalist ".parent::generateAttributes().">".parent::generateComponents()."</datalist>";
    }
}

