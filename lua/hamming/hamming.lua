Hamming = {}

function Hamming.compute(dna, dna2)
    --gmatch returns functions WTF lua?
    words_a = {};
    words_b = {};
    for i in string.gmatch(dna, ".") do
        words_a[#words_a + 1] = i;
    end
    for i in string.gmatch(dna2, ".") do
        words_b[#words_b + 1] = i;
    end  
    distance = 0
    for i, a in ipairs(words_a) do
        if a ~= words_b[i] and words_b[i] then
            distance = distance + 1
        end
    end
    return distance
end

return Hamming
