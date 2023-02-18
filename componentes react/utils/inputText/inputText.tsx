import { Fragment } from "react";

const InputText = (props:any) => {

    return (<Fragment>
          <div className="form-label form-css-label">
                    <fieldset>
                        <input id={props.name}name={props.name}type="text"  value={props.content} required onChange={props.handlerInputChange} />
                        <label >{props.label}:</label>
                    </fieldset>
                </div>
    </Fragment>)
}
export default InputText;