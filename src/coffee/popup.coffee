q = {
  active: true
  lastFocusedWindow: true
}

_tabsResult = (tabs) ->
  url = tabs[0].url
  url = url.replace('reddit', 'gifficult')
  chrome.tabs.create({url: url}) 

chrome.tabs.query(q, _tabsResult)
