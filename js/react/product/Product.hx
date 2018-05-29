package react.product;
import react.ReactComponent;
import react.ReactMacro.jsx;
import Common;

/**
 * A Product
 * @author fbarbut
 */
class Product extends react.ReactComponentOfProps<{productInfo:ProductInfo}>
{

	public function new(props) 
	{
		super(props);	
	}

	override public function render(){
		var p :ProductInfo = props.productInfo;

		//convert int to enum
		//p.unitType = Type.createEnumIndex(Common.UnitType,cast p.unitType);

		//var unit = ;
		var imgStyle = {width:'64px',height:'64px','backgroundImage':'url("${p.image}")'};
		var divStyle = p.active ? {} : {opacity: 0.4};

		return jsx('<div className="product" style=$divStyle>
			<div src="${p.image}" className="productImg" style=$imgStyle/>
			<div style={{display:"inline-block"}}>
		 		<strong>${p.name}</strong> ${p.qt} ${Formatting.unit(p.unitType)}<br/>
				 ${p.price} &euro;
			 </div>
		</div>');
	}

}	