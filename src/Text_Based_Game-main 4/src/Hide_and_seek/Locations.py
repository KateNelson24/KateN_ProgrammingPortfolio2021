class Locs:
    
    def __init__(self, name, imageName, x,y):
        self.name = name
        self.imageName = imageName
        camp = loadImage(imageName)
        cave = loadImage(imageName)
        forest = loadImage(imageName)
        lake = loadImage(imageName)
        self.x = x
        self.y = y

    def display(self, loc):
        l = image(loc, 300, 0)
       
