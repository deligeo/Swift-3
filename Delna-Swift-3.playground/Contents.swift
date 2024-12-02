import UIKit


// ==============================>>
// ====== Computer Class ====>>
class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int // in GB
    
    init(brand: String, processor: String, ram: Int){
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func getBrand() -> String {
        return self.brand
    }
    func getProcessor() -> String {
        return self.processor
    }
    func getRam() -> Int {
        return self.ram
    }
    
    func displaySpecs() {
        print("Brand: \(brand), Processor: \(processor), RAM: \(ram)GB")
    }
}


// ============================>>
// ====== Laptop Class ====>>
class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool){
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        print("\nLaptop Specs:")
        print("Brand: \(super.getBrand()), Processor: \(super.getProcessor()), RAM: \(super.getRam())GB\nTouchscreen: \(self.isTouchscreen ? "Yes" : "No")")
    }
}


// =============================>>
// ====== Desktop Class ====>>
class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool){
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        print("\nDesktop Specs:")
        print("Brand: \(super.getBrand()), Processor: \(super.getProcessor()), RAM: \(super.getRam())GB\nDedicated GPU: \(self.hasDedicatedGPU ? "Yes" : "No")")
    }
}


// ============================>>
// ====== Server Class ====>>
class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int){
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        print("\nServer Specs:")
        print("Brand: \(super.getBrand()), Processor: \(super.getProcessor()), RAM: \(super.getRam())GB\nRackUnits: \(self.rackUnits)")
    }
}

// ===================================>>
// ======== Output Testing ========>>

var macDesktop = Desktop(brand: "Apple", processor: "Apple M1", ram: 16, hasDedicatedGPU: true)
macDesktop.displaySpecs()

var hpServer: Server = Server(brand: "HP", processor: "Intel Xeon", ram: 32, rackUnits: 2)
hpServer.displaySpecs()

var dellLaptop: Laptop = Laptop(brand: "Dell", processor: "Intel Core i3", ram: 8, isTouchscreen: false)
dellLaptop.displaySpecs()
