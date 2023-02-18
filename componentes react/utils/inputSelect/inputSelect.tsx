import { Fragment,useState } from "react";
import './inputSelect.scss';


const InputSelect = (props:any) => {

    const [isActive, setIsActive] = useState(false);
    const [data,setData]= useState("");
     const options: InputOption[] = props.options;


    const handlerInput =(value:string) =>{
        setData(value);
        props.handlerInputChange(value);
        setIsActive(false);
    }
    
    return (<Fragment>
        <div className="inputSelect-container">
          <div className="form-label form-css-label">
                    <fieldset>
                        <input  id={props.name} name={props.name} defaultValue={props.content}  required onClick={e => setIsActive(!isActive)} />
                        <label >{props.label}</label>
                        {isActive && (
                            <div className="dropdown-select" >
                                <div className="dropdown-content" >
                                    {options.map(option =>
                                        <div className="dropdown-item" key={option.nombre} onClick={e => handlerInput(option.valor)} >
                                            {option.nombre}
                                        </div>
                                    )}
                                </div>
                            </div>
                        )}
                    </fieldset>
                </div>
                </div>
    </Fragment>)
}
interface InputOption{
    nombre:string
    valor:string
}
export default InputSelect;