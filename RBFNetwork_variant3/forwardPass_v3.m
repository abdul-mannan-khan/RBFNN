function [network, phi] = forwardPass_v3(networkDef, input, centres, sigma, weights, bias)
    network = createNetwork_v3(networkDef);
    
    network{1} = input';
    
    network{2} = (weights * network{1}) + bias;
    
    network{3} = sqrt(sum((((network{2} * ones(1,networkDef(3)))' - centres).^2),2));
    
    phi = gaussRadFunc_v3(network{3}, sigma);
    
    
end

