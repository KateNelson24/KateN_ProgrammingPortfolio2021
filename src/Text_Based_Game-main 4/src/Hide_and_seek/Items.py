class Item:
    
    def __init__(self, name, imageName, x,y):
        self.name = name
        self.imageName = imageName
        lamp = loadImage(imageName)
        tank = loadImage(imageName)
        photo = loadImage(imageName)
        snow = loadImage(imageName)
        cocoa = loadImage(imageName)
        self.x = x
        self.y = y

    def display(self, tem):
        t = image(tem, 300, 0)
       

