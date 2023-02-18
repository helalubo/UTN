import './search.scss';
import { useState } from 'react';
import { OPTIONSDOC } from "./optionsDocumentos.json";

import InputText from "../../../utils/inputText/inputText";
import InputSelect from "../../../utils/inputSelect/inputSelect";

const Search = () => {
    const [afiliado, setAfiliado] = useState({
        apellido: '',
        nombre: '',
        tipoDoc: '',
        nroDoc: '',
    });
    const handlerInputChange = (event: any) => {
        setAfiliado({
            ...afiliado,
            [event.target.name]: event.target.value
        })
    }
    const [isActive, setIsActive] = useState(false);
    const options:any = OPTIONSDOC;
    const handlerTipoDoc = (valor: string) => {
        setIsActive(!isActive);
        if (valor === "") {
            setAfiliado({
                ...afiliado,
                ['nroDoc']: '',
                ['tipoDoc']: ''
            })
        }else{
            setAfiliado({
                ...afiliado,
                ['tipoDoc']: valor
            })
        }
    }

    const handlerLimpiar = () => {
        setAfiliado({
            apellido: '',
            nombre: '',
            tipoDoc: '',
            nroDoc: '',
        })
    }
    const handlerBusqueda = () => {
        console.log(afiliado);
    }
    return (
        <div className='search-container'>
            <div className='input-container'>
            <InputText  name="apellido" label="Apellido"  content={afiliado.apellido} validate={"text"} handlerInputChange={handlerInputChange}/>
            <InputText name="nombre" label="Nombre"  content={afiliado.nombre} validate={"text"} handlerInputChange={handlerInputChange}/>
            <InputSelect name="tipoDoc" label="Tipo Doc:" options={options} content={afiliado.tipoDoc} handlerInputChange={handlerTipoDoc}  />
                {afiliado.tipoDoc !== "" && (
                     <InputText name="nroDoc" label="Número doc" content={afiliado.nroDoc} validate={"number"} handlerInputChange={handlerInputChange}/>
                    )}
            </div>
            <div className='actions'>
                <button className='btn' onClick={() => handlerBusqueda()} >Buscar</button>
                <button className='btn limpiar' onClick={() => handlerLimpiar()} >Limpiar</button>
            </div>
        </div>)
}

export default Search;

