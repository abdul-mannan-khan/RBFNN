function newWeights = updateWeights_v3(weights, deltaWeight, etaWeight)
    newWeights = weights + (etaWeight * deltaWeight);
end
