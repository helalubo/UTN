import { Fragment, useState } from "react";

const InputText = (props: any) => {

    const [content, setContent] = useState("")
    const handleChangeInput = (event: any) => {
        const { value } = event.target;

        if (props.validate == "text") {
            let regex = new RegExp("^[ñíóáéú a-zA-Z ]*$");
            if (regex.test(value)) {
                setContent(value);
                props.handlerInputChange(event);
            }
        }
        if (props.validate == "number") {
            let regex = new RegExp("^[0-9]*$");
            if (regex.test(value)) {
                setContent(value);
                props.handlerInputChange(event);
            }
        }
    }

    return (<Fragment>
        <div className="form-label form-css-label">
            <fieldset>
                {/* <input id={props.name}name={props.name}type="text"  value={props.content} required onChange={props.handlerInputChange} /> */}
                <input id={props.name} name={props.name} type="text" value={props.content} required onChange={handleChangeInput} />
                <label >{props.label}:</label>
            </fieldset>
        </div>
    </Fragment>)
}
export default InputText;