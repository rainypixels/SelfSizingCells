## Title
Unpredictable sizing/positioning issues for UICollectionView cells that use self-sizing (iOS8, estimatedItemSize)

## Description
This sample attempts to recreate a tableview layout using UICollectionView by setting the flow layout to vertical, and registering a custom cell (CollectionViewCell.xib) with a label and some constraints. 

The flow layout initially uses a fixed itemSize equal to (screenWidth, 200). This produces a layout that’s closest to ideal with the one expected issue that cells whose intrinsic content height is less than 200pts leaves whitespace below the label. 

Tapping the left bar button toggles the flow layout to use an estimatedItemSize of (screenWidth, 200). This produces a layout where, while cells appear one below the other and determine correct heights, their widths and positions are incorrect and seemingly random. 

Tapping the left bar button again toggles the flow layout to use an estimatedItemSize of (screenWidth, 10). This produces the same width and positioning issues outlined in the prior paragraph. In addition, half of the cells don’t show up in the collection view. I assume they’re positioned off-screen.

## Steps to Reproduce
1. Run sample app
2. Tap “UICV” right bar button to invoke a modal segue to the collectionview
3. Scroll to bottom to verify 44 cells
4. Tap “itemSize (screenWidth, 200)” left bar button to reload collectionview with estimatedItemSize of (screenWidth, 200)
5. Scroll to examine sizing and positioning issues
6. Tap “estimatedItemSize (screenWidth, 200)” left bar button to reload collectionview with estimatedItemSize of (screenWidth, 10)
7. Scroll to examine sizing and positioning issues

## Expected Results
The two layouts that use estimatedItemSize should be identical to the first layout that uses a fixed itemSize with the exception that their heights should self-size. 

## Actual Results
When the estimatedItemSize is (screenWidth, 200), cells have randomly incorrect widths and positions. When the estimatedItemSize is (screenWidth, 10), cells have randomly incorrect widths and positions, and half of the cells are not loaded.

## Configuration
iOS 6 Simulator & iPhone 6 64GB (and iPhone 5S 32GB) AT&T

## Version & Build
iOS 8.1 (12B411)

## Additional Notes
This app also serves as the sample app submitted along with currently open rdar://18698008
