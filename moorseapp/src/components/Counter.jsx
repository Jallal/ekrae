import React from 'react';
import { useState } from 'react';

function Counter() {

let count =0;
const [currentState,updatedState] = useState(count);
const handleClick = () => {

    updatedState(currentState + 1);
}


    return (
    <>
    <h3>This is a count</h3>
    <button onClick={handleClick}>{currentState}</button>
    </>
    );


}
export default Counter;