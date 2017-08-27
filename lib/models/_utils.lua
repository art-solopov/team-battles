local utils = {}

function utils.assign(dest, source)
    for k, v in pairs(source) do
        dest[k] = v
    end
end

return utils
