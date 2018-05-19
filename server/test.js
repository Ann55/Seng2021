class Test {
    constructor(str) {
        this.cat = str
        this.printMe = () => console.log(this.cat)
    }
}

const cat = new Test('poop')
cat.printMe()

const cats = ['cat1', 'cat2']
const dog = cats.includes('cat22')
if(dog) console.log('fuk u u gud')
else console.log('fuck u u bad')