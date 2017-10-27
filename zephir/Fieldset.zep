namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Fieldset
//
// The <fieldset> tag is used to group related elements in a form.  The <fieldset> tag draws a box
// around the related elements.
//
// ex. <form>
//         <fieldset>
//             <legend>Personalia:</legend>
//             Name: <input type="text"><br>
//             Email: <input type="text"><br>
//             Date of birth: <input type="text">
//         </fieldset>
//     </form> 
//
// The <fieldset> tag also supports the Global Attributes in HTML.
// The <fieldset> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Fieldset extends Component{

    private disabled;  // Specifies that a group of related form elements should be disabled.
    private form;      // Specifies one or more forms the fieldset belongs to.
    private name;      // Specifies a name for the fieldset.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->disabled);
        unset(this->form);
        unset(this->name);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Disabled
    //
    // The disabled attribute is a boolean attribute.  When present, it specifies that a group of
    // related form elements (a fieldset) should be disabled.  A disabled fieldset is unusable and
    // un-clickable.  The disabled attribute can be set to keep a user from using the fields until
    // some other condition has been met (like selecting a checkbox, etc.). Then, a JavaScript could
    // remove the disabled value, and make the fieldset usable.
    //
    // Syntax: <fieldset disabled>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDisabled(){ return this->disabled; }
    public function setDisabled(){ let this->span = "disabled"; }
    private function generateDisabled(){ return (this->disabled!="") ? this->disabled : ""; }

    ////////////////////////////////////////////
    // Form
    //
    // The form attribute specifies one or more forms the fieldset belongs to.
    //
    // Syntax: <fieldset form="form_id">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getForm(){ return this->form; }
    public function setForm(string form){ let this->form = form; }
    private function generateForm(){ return (this->form!="") ? " form='".this->form."'" : ""; }

    ////////////////////////////////////////////
    // Name
    //
    // The name attribute specifies a name for a fieldset.  The name attribute is used to reference
    // elements in a JavaScript, or to reference form data after a form is submitted.
    //
    // Syntax: <fieldset name="text">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getName(){ return this->name; }
    public function setName(string name){ let this->name = name; }
    private function generateName(){ return (this->name!="") ? " name='".this->name."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateDisabled().this->generateForm().this->generateName();
        return "<fieldset ".attributes.parent::generateAttributes().">".parent::generateComponents()."</fieldset>";
    }
}

