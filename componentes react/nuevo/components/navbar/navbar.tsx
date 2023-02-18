import './navbar.scss';

import logo from '../../assets/logo-osde.png'

import Dropdown from './Dropdown/dropdown'
import { useState } from 'react';

const Navbar = () => {
    const [selected, setSelected] = useState("");
    return (
        <header>
            <div className='logo-container'>
                <div className='logo'>
                    <img src={logo} />  
                </div>
                <div className='titulo-container'>
                    <h3>| IACO {'>>'} Administracion y consultas</h3>
                </div>
            </div>
            <div className='menu'>
                 <Dropdown/> 
            </div>
        </header>)
}

export default Navbar;

