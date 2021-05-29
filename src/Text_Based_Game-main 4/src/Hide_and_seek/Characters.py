class Characters:
    
    def __init__(self, name, imageName, x,y):
        self.name = name
        self.imageName = imageName
        nessie = loadImage(imageName)
        moth = loadImage(imageName)
        bf = loadImage(imageName)
        yeti = loadImage(imageName)
        self.x = x
        self.y = y

    def display(self, img):
       n = image(img, 400, 50)
