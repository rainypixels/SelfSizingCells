This repo contains a sample app to help repro the bug detailed below. 

## Radar Info
* [rdar://18698008](rdar://18698008)
* [http://openradar.appspot.com/10958564](http://openradar.appspot.com/10958564)

## Title
Stuttering & incorrect contentOffset issues when segueing back to a UITableView using self-sizing cells (iOS8)

## Description
Demonstrates an issue with UITableView self-sizing cells where segueing away and back to the tableView (e.g. by presenting a view controller modally, and then having it dismiss itself) does not preserve the contentOffset of the tableView before the segue was performed. 

The less severe outcome here is that the user loses their place in tableView after, say, segueing away for a few seconds into a detail view. 

The more severe outcome, however, is that scrolling performance for the tableView upon returning becomes terrible. Specifically, scrolling begins to stutter quite a bit as tableView cell heights are calculated and the tableView attempts to adjusts its size in real-time as the user is scrolling. It feels particularly bad when the tableView cells are very content rich, e.g. a social feed-like interface full of images, variable-sized bodies of text, avatars, etc. 

I am marking this as a serious bug as this stuttering issue renders the self-sizing feature unusable especially in cases like mine where I’m presenting the user with a rich feed of content, and I am expecting that they navigate into and out of posts within that feed. I would, unfortunately, have to resort to prior methods for providing cell heights.

## Steps to Reproduce
1. Run sample app on device (the stuttering becomes far more obvious on a real device)
2. Scroll to a random point in the tableView
3. Tap the “More” button
4. Tap the “Dismiss” button 
5. Scroll upwards (towards initial contentOffset)
6. Repeat from step 2 with a different scroll offset

## Expect Results
1. The contentOffset printed to the debugger output should always be identical before and after the segue
2. No stuttering (apart from frame rate rendering issues) should be visible during scrolling

## Actual Results
1. The contentOffset printed to the debugger output is usually different before and after segue, sometimes by a significant amount. It’s not so unusual to see the same contentOffset, though, but a few tries through the repro steps will definitely expose the issue. 
2. Lots of stuttering the first time you scroll upwards after a segue. The stuttering can be observed even when the contentOffset reported is the same. 

## Configuration
iPhone 6 64GB (and iPhone 5S 32GB) AT&T

## Version & Build
iOS 8.0.2 (12A405)

## Additional Notes
The stuttering and contentOffset issues vary quite a bit based on the `estimatedRowHeight` value for the tableView. They improve when you try to get to a true estimatedValue, but the result is still far from shippable imo. 