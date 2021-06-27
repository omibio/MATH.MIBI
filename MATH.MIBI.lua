math.MIBI = function(num, pos)
    local num = tostring(num)
    local calc = 3 - pos
    if pos == 2 then
        calc = 2
    end
    local nu = string.sub(num, 0, -pos - calc)
    local find = string.find(num, ".")
    local tnum = #num
    local int = string.sub(num, 0, -tnum - 1 + find)
    local dc = string.sub(num, tonumber(int) + 1, -1)
    local enum = {5, 6, 7, 8, 9}
    local encontrar = false
    nnint = int .. "." .. "000"

    int = int * 1000
    if #dc == pos then
        return num
    end
    repeat
        for k, v in pairs(enum) do
            local nv = 0
            local npos = dc:find(v)
            if npos then
                local k = 1
                local newint = "0."
                local ncalc = 10 - v
                repeat
                    k = k + 1
                    if not n then
                        n = newint
                    end
                    n = n .. "0"
                    if k == #dc then
                        n = n .. v
                        break
                    end
                    num = tostring(tonumber(n) + num)
                    dc = string.sub(num, 3, -2)
                    dc = tostring(dc + 1)
                    encontrar = true
                until (k == #dc)
                break
            end
        end
    until not npos
    if encontrar then
        encontrar = 1
    else
        encontrar = 0
    end
    int = tostring(tonumber("0" .. "." .. dc) + nnint)
    int = tonumber(int:sub(0, -pos + encontrar))
    return int
end
