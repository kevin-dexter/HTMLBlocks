namespace HtmlBlocks;

class SplitPanel extends Component{
    /*
    const PANEL_LEFT  = 0;
    const PANEL_RIGHT = 1;
    
    private $left_panel;
    private $right_panel;
    private $divider = 20;
    private $left_margin = 2;
    
    function __construct($divider){
        parent::__construct();
        
        $this->left_panel = new Panel("", "");
        $this->right_panel = new Panel("", "");
        if(isset($divider)) $this->divider = $divider;
    }
    
    function __destruct(){
        unset($this->left_panel);
        unset($this->right_panel);
        unset($this->divider);
    
        parent::__destruct();
    }
    
    public function setDivider($divider){ $this->divider = $divider; }
    
    public function addPanelComponent($component, $panel){
        switch($panel){
        	case 0:
        	    $this->left_panel->addComponent($component, Panel::PANEL_BODY);
        	    break;
        	case 1:
        	    $this->right_panel->addComponent($component, Panel::PANEL_BODY);
        	    break;
        }
    }
    
    public function addClass($class, $panel){
        switch($panel){
        	case 0:
        	    $this->left_panel->addClass($class, Panel::PANEL_BODY);
        	    break;
        	case 1:
        	    $this->right_panel->addClass($class, Panel::PANEL_BODY);
        	    break;
        }
    }
    public function setLeftMargin($margin){
        $this->left_margin = $margin;
    }
    
    public function generate(){
        $rt = (int)$this->divider;
        $lt = (int)$this->divider+$this->left_margin;
        
        $split_panel = "<div style='float: left;width: $rt%;'>";
        $split_panel .= $this->left_panel->generate();
        $split_panel .= "</div>";
    	
        $split_panel .= "<div style='margin-left: $lt%;'>";
        $split_panel .= $this->right_panel->generate();
        $split_panel .= "</div>";
        $split_panel .= "<br style='clear:both;'/>";
        
        return $split_panel;
    }
    
    public function render(){
        echo $this->generate();
    }
    */



    ////////////////////////////////////////////
    // __construct
    //
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __construct(string component_class, string component_id){
        call_user_func(["parent", "__construct()"]);

        parent::setClass(component_class);
        parent::setId(component_id);
    }

    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////

    public function __destruct(){
        call_user_func(["parent", "__destruct()"]);
    }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        return "<article " . parent::generateAttributes() . ">" . parent::generateComponents() . "</article>";
    }
}
