console.log('hello world!')
document.querySelector('button#mobile-menu').addEventListener('click', ()=>{
    console.log('hamburger click')
    let dropdown = document.querySelector('div.drop-down')

    if(dropdown.classList.contains('hidden')){
        console.log('hidden')
        dropdown.classList.remove('hidden') 
        dropdown.style.display = 'block'
        //dropdown.setAttribute('hidden', 'false')
    }else{
        console.log('not hidden')
        dropdown.classList.add('hidden') 
        dropdown.style.display = 'none'
        //dropdown.setAttribute('hidden', 'true')
    }

})

window.addEventListener('resize', ()=>{
    let dropdown = document.querySelector('div.drop-down')
    dropdown.classList.add('hidden') 
    dropdown.style.display = 'none'

})