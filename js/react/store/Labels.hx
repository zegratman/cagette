package react.store;

import Common;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.store.SubCateg;
import mui.core.Tooltip;

class Labels extends react.ReactComponentOfProps<{product:ProductInfo}> {

    public function new(props) {
		super(props);
	}

    override public function render() {

        var style = {
            fontSize:20,
            color:mui.CagetteTheme.CGColors.Secondfont,
            marginRight:8
        };

        var labels = [];

        //bio
        if(props.product.organic){
            labels.push( label("bio","Agriculture biologique",style) );
        }

        //variable-weight
        if(props.product.variablePrice){
            labels.push( label("scale","Prix variable selon pesée",style) );
        }

        //bulk
        if(props.product.bulk){
            labels.push( label("bulk","Vendu en vrac : pensez à prendre un contenant",style) );
        }

        //wholesale
        if(props.product.bulk){
            labels.push( label("wholesale","Ce produit est commandé en gros",style) );
        }
        

        return labels;
    }

    function label(iconId,name,style){
        return jsx('<Tooltip key=$iconId title=$name placement=${mui.core.popper.PopperPlacement.Top}>
            ${mui.CagetteIcon.get(iconId,style)}
        </Tooltip>');
    }
}