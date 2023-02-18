import { useState } from 'react';
import './dropdown.scss';

const Dropdown = () => {

    const [isActive, setIsActive] = useState(false);


    return (
        <div>
            <div className="dropdown-btn" onClick={e => setIsActive(!isActive)}>
                ☰
            </div>
            {isActive &&(
            <div className="dropdown" >
            <div className="dropdown-content">
                <div className="dropdown-item"onClick={e => setIsActive(!isActive)} >
                    React
                </div>
                <div className="dropdown-item" onClick={e => setIsActive(!isActive)}>
                Vue
                </div>
            </div>
            </div>
            )}
        </div>
    )
}

export default Dropdown;

