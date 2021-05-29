# Hide And Seek - Text Based Game
# by Joanna Bromka and Kate Nelson | 2021 Programming I


# from Locations import Locations
from Characters import Characters
from Items import Item
from Locations import Locs


def setup():
    size(900, 700)
    global img, img1, img2, img3, nessie, moth, bf, yeti, camp, forest, lake, cave, road, loc, loc1, loc2, loc3, loc4
    global lamp, tank, photo, snow, cocoa, tem, tem1, tem2, tem3, tem4, letter, play, screen
   
    # Characters
    nessie = Characters("nessie", "Nessie.png", 75, 75)
    img = loadImage('Nessie.png')
    moth = Characters("moth", "MothMan.png", 75, 75)
    img1 = loadImage('MothMan.png')
    bf = Characters("bf", "Big Foot.png", 75, 75)
    img2 = loadImage('Big Foot.png')
    yeti = Characters("yeti", "Yeti.png", 75, 75)
    img3 = loadImage('Yeti.png')

    # Items/ Hiding places
    lamp = Item("lamp", "Lampost.png", 75, 75)
    tem = loadImage('Lampost.png')
    tank = Item("tank", "WaterTank.png", 75, 75)
    tem1 = loadImage('WaterTank.png')
    photo = Item("photo", "Photo.png", 75, 75)
    tem2 = loadImage('Photo.png')
    snow = Item("snow", "Snow.png", 75, 75)
    tem3 = loadImage('Snow.png')
    cocoa = Item("cocoa", "Cocoa.png", 75, 75)
    tem4 = loadImage('Cocoa.png')
   
    # locations
    camp = Locs("camp", "Camp.png", 75, 75)
    loc = loadImage('Camp.png')
    forest = Locs("forest", "Forest.png", 75, 75)
    loc1 = loadImage('Forest.png')
    lake = Locs("lake", "Lake.png", 75, 75)
    loc2 = loadImage('Lake.png')
    cave = Locs("cave", "Cave.png", 75, 75)
    loc3 = loadImage('Cave.png')
    road = Locs("road", "Roadside.png", 75, 75)
    loc4 = loadImage('Roadside.png')
   
    play = False
    screen = 0
   
def draw():
    background(55)
    global play, screen
    text("Click S to begin . . . ", 200, 500)

 
    if ((key == 's')):
        play = False
        startScreen()
        play = True
#Camp
    if ((key == 'c')):
        screen = 1
        camp.display(loc)
        boxes()
        fill(235, 237, 236)
        text("Hmm, nothing seems to be here, lets try somewhere else ...", 20, 530)
        
# Forest & Mothman
    if ((key == 'f')):
        screen = 2
        forest.display(loc1)
        boxes()
        moth.display(img1)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        fill(235, 237, 236)
        textSize(14)
        text("""
             Key 1: Hi!
             Key 2: Do you know about the bookclub here?
             Key 3: What are you reading?
             """, 10, 500)
        
    elif key == '1' and screen == 2:
        forest.display(loc1)
        boxes()
        moth.display(img1)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Hello to yourself Jack! 
        I hope your journey from the sage desert wasnt too bad, 
        but welcome to my woods 
        """, 10, 120)
        
    elif key == '2' and screen == 2:
        forest.display(loc1)
        boxes()
        moth.display(img1)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Oh goodie! you’ve come over to join the book club, 
    I only joined last year but it has been really fun. 
    I would go talk to Yeti on how to join,
    he should be with his cousin Bigfoot somewhere 
        """, 10, 120)
        
    elif key == '3' and screen == 2:
        forest.display(loc1)
        boxes()
        moth.display(img1)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Oh I’m reading some classic horror stories, 
        the Invisible Man is my favorite 
        """, 10, 120)
        
#Cave & BF 
    if ((key == 'v')):
        screen = 3
        cave.display(loc3)
        bf.display(img2)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        fill(235, 237, 236)
        textSize(14)
        text("""
             Key 1: Hi!
             Key 2: Do you know where yeti is?
             Key 3: What are you reading?
             """, 10, 500)
        
    elif key == '1' and screen == 3:
        cave.display(loc3)
        bf.display(img2)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Hey Jack, 
        I hope you didn’t mind my handwriting in the letter,
        but welcome to my humble cave!
        """, 10, 120)
    elif key == '2' and screen == 3:
        cave.display(loc3)
        bf.display(img2)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Sure, Ill go get him
        """, 10, 120)
        
    elif key == '3' and screen == 3:
        cave.display(loc3)
        bf.display(img2)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" I’ve found some very interesting Histories recently,
        who knew they could be so cool! 
        """, 10, 120)
# Cave & Yeti
    if key == '2' and screen ==3:  
        screen = 5   
        cave.display(loc3)
        yeti.display(img3)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        textSize(14)
        text("""
             Key 1: Hi!
             Key 2: How do I join the book club?
             Key 3: What are you reading?
             """, 10, 500)
        
    elif key == '1' and screen == 5:
        cave.display(loc3)
        yeti.display(img3)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text("""Hello my four-pawed friend, 
        what can I do for you?
        """, 10, 120)
    elif key == '2' and screen == 5:
        cave.display(loc3)
        yeti.display(img3)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Oh You’re looking to join? That’s great!
        all you need to do is have a chat with all the other members
        and get to know them, 
        you have already done that? 
        Great! Welcome to the club!
        """, 10, 120)
    elif key == '3' and screen == 5:
        cave.display(loc3)
        yeti.display(img3)
        boxes()
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text("""I really enjoy sci-fi stories such as Alien,
        They are so unique 
        """, 10, 120)
        text("""Thanks for letting me join, see y'all
        next week!
        """, 10, 160)
        
#Lake & Nessie      
    if ((key == 'l')):
        screen = 4
        lake.display(loc2)
        boxes()
        nessie.display(img)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        fill(235, 237, 236)
        textSize(14)
        text("""
             Key 1: Hi!
             Key 2: Do you know about the bookclub here?
             Key 3: What are you reading?
             """, 10, 500)

    elif key == '1' and screen == 4:
        lake.display(loc2)
        boxes()
        nessie.display(img)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text(""" Hello Jackie-Jackalope, what brings you
        to my pond?""", 10, 120)
        
    elif key == '2' and screen == 4:
        lake.display(loc2)
        boxes()
        nessie.display(img)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text("""Youre looking to join, 
        That’s great! I hope you brought some real page-turners, 
    to be initiated you should talk to Yeti in the cave,
    he is the leader of the club. 
 """, 10, 120)
        
    elif key == '3' and screen == 4:
        lake.display(loc2)
        boxes()
        nessie.display(img)
        blend(loc,0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST)
        textSize(14)
        fill(235, 237, 236)
        text("""I have a set of romance novels 
             Im planning on introducing the 
             group to soon, they are really sweet""", 10, 120)


def startScreen():
            play == False
            # InteractBox
            strokeWeight(7)
            stroke(235, 237, 236)
            fill(0)
            rect(0,0,300,480)

            letter = loadImage("Letter.png")
            image(letter, 0, 0)
            fill(235, 237, 236)
            text("Dear Jack, ", 10, 300)
            start = "We have invited you to join the Cryptid Book Club! Meet all the other members at the Curious Campgrounds to join us, and make sure to bring some good books!";
            text(start, 20, 315, 280, 400)
            instruct = "- Sincerly, CBC Cryptids"
            text(instruct, 20, 390, 280, 420)
            instruct = "Use the 1, 2, & 3 keys to ineract and C, L, F, V keys to switch locations. Click the C to begin"
            text(instruct, 20, 420, 280, 420)
           
            # chatBox
            strokeWeight(7)
            stroke(235, 237, 236)
            fill(0)
            rect(0, 480, 920, 240 )
           
def boxes():
    
 # InteractBox
    strokeWeight(7)
    stroke(235, 237, 236)
    fill(0)
    rect(0,0,320,480)
  # chatBox
    strokeWeight(7)
    stroke(235, 237, 236)
    fill(0)
    rect(0, 480, 930, 240 )
