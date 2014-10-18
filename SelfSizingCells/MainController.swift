import UIKit

class MainController: UITableViewController {

    let reuseIdentifier = "Cell"
    let cellContent =
    [
        "Cat ipsum dolor sit amet, scamper and stand in front of the computer screen kick up litter.",
        "Leave hair everywhere use lap as chair jump off balcony, onto stranger's head but pooping rainbow while flying in a toasted bread costume in space use lap as chair.",
        "Hopped up on catnip always hungry shove bum in owner's face like camera lens but need to chase tail hunt by meowing loudly at 5am next to human slave food dispenser play riveting piece on synthesizer keyboard lick butt.",
        "Intently stare at the same spot hate dog stretch burrow under covers, yet under the bed, or sleep on keyboard. Use lap as chair sun bathe stick butt in face use lap as chair. Throwup on your pillow purr while eating. Hide when guests come over hunt by meowing loudly at 5am next to human slave food dispenser and chase dog then run away yet leave fur on owners clothes but hopped up on catnip. ",
        "Use lap as chair nap all day cat snacks always hungry i like big cats and i can not lie i like big cats and i can not lie. Nap all day hide when guests come over, so who's the baby. Run in circles find something else more interesting sleep nap lick arm hair make muffins swat at dog, yet hide when guests come over.",
        "Chase mice. Plan steps for world domination use lap as chair, so present belly, scratch hand when stroked run in circles, and intently stare at the same spot.",
        "Burrow under covers leave fur on owners clothes hack up furballs or sleep on keyboard, for flop over, or curl into a furry donut. Leave fur on owners clothes leave dead animals as gifts, but chase mice. Vommit food and eat it again give attitude. Claw drapes hopped up on catnip, but roll on the floor purring your whiskers off.",
        "Have secret plans hack up furballs so always hungry. Hunt by meowing loudly at 5am next to human slave food dispenser run in circles. Leave dead animals as gifts i like big cats and i can not lie and intrigued by the shower has closed eyes but still sees you chase ball of string. Intrigued by the shower stretch stick butt in face chase dog then run away and chase imaginary bugs, for sweet beast, yet plan steps for world domination. Eat grass, throw it back up destroy couch, but poop on grasses, missing until dinner time, but peer out window, chatter at birds, lure them to mouth. Make muffins sleep in the bathroom sink need to chase tail who's the baby.",
        "Claw drapes use lap as chair stare at the wall, play with food and get confused by dust, and present belly, scratch hand when stroked sun bathe meow all night having their mate disturbing sleeping humans chase mice. Climb leg shake treat bag lick arm hair for play riveting piece on synthesizer keyboard",
        "Cat ipsum dolor sit amet, scamper and stand in front of the computer screen kick up litter.",
        "Leave hair everywhere use lap as chair jump off balcony, onto stranger's head but pooping rainbow while flying in a toasted bread costume in space use lap as chair.",
        "Hopped up on catnip always hungry shove bum in owner's face like camera lens but need to chase tail hunt by meowing loudly at 5am next to human slave food dispenser play riveting piece on synthesizer keyboard lick butt.",
        "Intently stare at the same spot hate dog stretch burrow under covers, yet under the bed, or sleep on keyboard. Use lap as chair sun bathe stick butt in face use lap as chair. Throwup on your pillow purr while eating. Hide when guests come over hunt by meowing loudly at 5am next to human slave food dispenser and chase dog then run away yet leave fur on owners clothes but hopped up on catnip. ",
        "Use lap as chair nap all day cat snacks always hungry i like big cats and i can not lie i like big cats and i can not lie. Nap all day hide when guests come over, so who's the baby. Run in circles find something else more interesting sleep nap lick arm hair make muffins swat at dog, yet hide when guests come over.",
        "Chase mice. Plan steps for world domination use lap as chair, so present belly, scratch hand when stroked run in circles, and intently stare at the same spot.",
        "Burrow under covers leave fur on owners clothes hack up furballs or sleep on keyboard, for flop over, or curl into a furry donut. Leave fur on owners clothes leave dead animals as gifts, but chase mice. Vommit food and eat it again give attitude. Claw drapes hopped up on catnip, but roll on the floor purring your whiskers off.",
        "Have secret plans hack up furballs so always hungry. Hunt by meowing loudly at 5am next to human slave food dispenser run in circles. Leave dead animals as gifts i like big cats and i can not lie and intrigued by the shower has closed eyes but still sees you chase ball of string. Intrigued by the shower stretch stick butt in face chase dog then run away and chase imaginary bugs, for sweet beast, yet plan steps for world domination. Eat grass, throw it back up destroy couch, but poop on grasses, missing until dinner time, but peer out window, chatter at birds, lure them to mouth. Make muffins sleep in the bathroom sink need to chase tail who's the baby.",
        "Claw drapes use lap as chair stare at the wall, play with food and get confused by dust, and present belly, scratch hand when stroked sun bathe meow all night having their mate disturbing sleeping humans chase mice. Climb leg shake treat bag lick arm hair for play riveting piece on synthesizer keyboard",
        "Cat ipsum dolor sit amet, scamper and stand in front of the computer screen kick up litter.",
        "Leave hair everywhere use lap as chair jump off balcony, onto stranger's head but pooping rainbow while flying in a toasted bread costume in space use lap as chair.",
        "Hopped up on catnip always hungry shove bum in owner's face like camera lens but need to chase tail hunt by meowing loudly at 5am next to human slave food dispenser play riveting piece on synthesizer keyboard lick butt.",
        "Intently stare at the same spot hate dog stretch burrow under covers, yet under the bed, or sleep on keyboard. Use lap as chair sun bathe stick butt in face use lap as chair. Throwup on your pillow purr while eating. Hide when guests come over hunt by meowing loudly at 5am next to human slave food dispenser and chase dog then run away yet leave fur on owners clothes but hopped up on catnip. ",
        "Use lap as chair nap all day cat snacks always hungry i like big cats and i can not lie i like big cats and i can not lie. Nap all day hide when guests come over, so who's the baby. Run in circles find something else more interesting sleep nap lick arm hair make muffins swat at dog, yet hide when guests come over.",
        "Chase mice. Plan steps for world domination use lap as chair, so present belly, scratch hand when stroked run in circles, and intently stare at the same spot.",
        "Burrow under covers leave fur on owners clothes hack up furballs or sleep on keyboard, for flop over, or curl into a furry donut. Leave fur on owners clothes leave dead animals as gifts, but chase mice. Vommit food and eat it again give attitude. Claw drapes hopped up on catnip, but roll on the floor purring your whiskers off.",
        "Have secret plans hack up furballs so always hungry. Hunt by meowing loudly at 5am next to human slave food dispenser run in circles. Leave dead animals as gifts i like big cats and i can not lie and intrigued by the shower has closed eyes but still sees you chase ball of string. Intrigued by the shower stretch stick butt in face chase dog then run away and chase imaginary bugs, for sweet beast, yet plan steps for world domination. Eat grass, throw it back up destroy couch, but poop on grasses, missing until dinner time, but peer out window, chatter at birds, lure them to mouth. Make muffins sleep in the bathroom sink need to chase tail who's the baby.",
        "Claw drapes use lap as chair stare at the wall, play with food and get confused by dust, and present belly, scratch hand when stroked sun bathe meow all night having their mate disturbing sleeping humans chase mice. Climb leg shake treat bag lick arm hair for play riveting piece on synthesizer keyboard",
        "Cat ipsum dolor sit amet, scamper and stand in front of the computer screen kick up litter.",
        "Leave hair everywhere use lap as chair jump off balcony, onto stranger's head but pooping rainbow while flying in a toasted bread costume in space use lap as chair.",
        "Hopped up on catnip always hungry shove bum in owner's face like camera lens but need to chase tail hunt by meowing loudly at 5am next to human slave food dispenser play riveting piece on synthesizer keyboard lick butt.",
        "Intently stare at the same spot hate dog stretch burrow under covers, yet under the bed, or sleep on keyboard. Use lap as chair sun bathe stick butt in face use lap as chair. Throwup on your pillow purr while eating. Hide when guests come over hunt by meowing loudly at 5am next to human slave food dispenser and chase dog then run away yet leave fur on owners clothes but hopped up on catnip. ",
        "Use lap as chair nap all day cat snacks always hungry i like big cats and i can not lie i like big cats and i can not lie. Nap all day hide when guests come over, so who's the baby. Run in circles find something else more interesting sleep nap lick arm hair make muffins swat at dog, yet hide when guests come over.",
        "Chase mice. Plan steps for world domination use lap as chair, so present belly, scratch hand when stroked run in circles, and intently stare at the same spot.",
        "Burrow under covers leave fur on owners clothes hack up furballs or sleep on keyboard, for flop over, or curl into a furry donut. Leave fur on owners clothes leave dead animals as gifts, but chase mice. Vommit food and eat it again give attitude. Claw drapes hopped up on catnip, but roll on the floor purring your whiskers off.",
        "Have secret plans hack up furballs so always hungry. Hunt by meowing loudly at 5am next to human slave food dispenser run in circles. Leave dead animals as gifts i like big cats and i can not lie and intrigued by the shower has closed eyes but still sees you chase ball of string. Intrigued by the shower stretch stick butt in face chase dog then run away and chase imaginary bugs, for sweet beast, yet plan steps for world domination. Eat grass, throw it back up destroy couch, but poop on grasses, missing until dinner time, but peer out window, chatter at birds, lure them to mouth. Make muffins sleep in the bathroom sink need to chase tail who's the baby.",
        "Claw drapes use lap as chair stare at the wall, play with food and get confused by dust, and present belly, scratch hand when stroked sun bathe meow all night having their mate disturbing sleeping humans chase mice. Climb leg shake treat bag lick arm hair for play riveting piece on synthesizer keyboard",
        "Cat ipsum dolor sit amet, scamper and stand in front of the computer screen kick up litter.",
        "Leave hair everywhere use lap as chair jump off balcony, onto stranger's head but pooping rainbow while flying in a toasted bread costume in space use lap as chair.",
        "Hopped up on catnip always hungry shove bum in owner's face like camera lens but need to chase tail hunt by meowing loudly at 5am next to human slave food dispenser play riveting piece on synthesizer keyboard lick butt.",
        "Intently stare at the same spot hate dog stretch burrow under covers, yet under the bed, or sleep on keyboard. Use lap as chair sun bathe stick butt in face use lap as chair. Throwup on your pillow purr while eating. Hide when guests come over hunt by meowing loudly at 5am next to human slave food dispenser and chase dog then run away yet leave fur on owners clothes but hopped up on catnip. ",
        "Use lap as chair nap all day cat snacks always hungry i like big cats and i can not lie i like big cats and i can not lie. Nap all day hide when guests come over, so who's the baby. Run in circles find something else more interesting sleep nap lick arm hair make muffins swat at dog, yet hide when guests come over.",
        "Chase mice. Plan steps for world domination use lap as chair, so present belly, scratch hand when stroked run in circles, and intently stare at the same spot.",
        "Burrow under covers leave fur on owners clothes hack up furballs or sleep on keyboard, for flop over, or curl into a furry donut. Leave fur on owners clothes leave dead animals as gifts, but chase mice. Vommit food and eat it again give attitude. Claw drapes hopped up on catnip, but roll on the floor purring your whiskers off.",
        "Have secret plans hack up furballs so always hungry. Hunt by meowing loudly at 5am next to human slave food dispenser run in circles. Leave dead animals as gifts i like big cats and i can not lie and intrigued by the shower has closed eyes but still sees you chase ball of string. Intrigued by the shower stretch stick butt in face chase dog then run away and chase imaginary bugs, for sweet beast, yet plan steps for world domination. Eat grass, throw it back up destroy couch, but poop on grasses, missing until dinner time, but peer out window, chatter at birds, lure them to mouth. Make muffins sleep in the bathroom sink need to chase tail who's the baby.",
        "Claw drapes use lap as chair stare at the wall, play with food and get confused by dust, and present belly, scratch hand when stroked sun bathe meow all night having their mate disturbing sleeping humans chase mice. Climb leg shake treat bag lick arm hair for play riveting piece on synthesizer keyboard"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // grab cell from xib
        var cellNib = UINib (nibName: "Cell", bundle: nil)
        tableView.registerNib(cellNib!, forCellReuseIdentifier: reuseIdentifier)
        // set up tableview for self-sizing cells
        tableView.estimatedRowHeight = 100.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("contentOffset.y when tableView appears: \(tableView.contentOffset.y)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as Cell
        cell.labelText = cellContent[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("contentOffset.y when seguing to MoreController: \(tableView.contentOffset.y)")
    }
}
