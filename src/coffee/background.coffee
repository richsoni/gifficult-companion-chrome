rules = {
  conditions: [
    new chrome.declarativeContent.PageStateMatcher
      pageUrl:
        hostEquals: 'www.reddit.com'

  ],
  actions: [new chrome.declarativeContent.ShowPageAction() ]
}

_onPageChangeRemove = () ->
  chrome.declarativeContent.onPageChanged.addRules([rules])

_onInstalled = () ->
  chrome.declarativeContent.onPageChanged.removeRules(undefined, _onPageChangeRemove )

chrome.runtime.onInstalled.addListener(_onInstalled)
