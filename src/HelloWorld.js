const HelloWorld = () => {
    
    function sayHello(){
        alert('Hello there my gorgeous friend')
    }
    return (
        <div>
            <button onClick={sayHello}>Say Hello!</button>
        </div>
    )
}


export default HelloWorld; 