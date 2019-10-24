def createTree(data, labels):
  classList = [example[-1] for example in data]
  
  # Stop when all classes are equal
  if classList.count(classList[0]) == len(classList):
    return classList[0]
  
  # When no more features, return majority
  if len(data[0]) == 1:
    # A function that returns the class that occurs with the greatest frequency
    # You can write your own
    return majorityCount(classList)
  
  bestFeat = chooseBestFeatureToSplit(data)
  bestFeatLabel = labels[bestFeat]
  myTree = {bestFeatLabel:{}}
  
  # Get list of unique values
  del(labels[bestFeat])
  featValues = [example[bestFeat] for example in data]
  uniqueVals = set(featValues)
  
  for value in uniqueVals:
    subLabels = labels[:]
    myTree[bestFeatLabel][value] = createTree(splitDataset(data, bestFeat, value), subLabels)
    
  return myTree
