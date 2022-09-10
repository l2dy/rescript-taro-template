module General = {
  type callbackResult = {errMsg: string}
}

// Framework API

module Framework = {
  type page = {
    route: option<string>,
    __route__: option<string>,
  }
}

@module("@tarojs/taro")
external getCurrentPages: unit => array<Framework.page> = "getCurrentPages"

// Device API

@obj
external setClipboardDataOption: (
  ~data: string,
  ~success: General.callbackResult => unit=?,
  ~fail: General.callbackResult => unit=?,
  unit,
) => _ = ""

@module("@tarojs/taro")
external setClipboardData: 'a => Js.Promise.t<General.callbackResult> = "setClipboardData"

// Network API

module Network = {
  type method = [
    | #GET
    | #POST
    | #PUT
  ]

  type response<'data>

  type dataType = [
    | #json
  ]

  type responseType = [
    | #text
    | #arraybuffer
  ]

  type successCallbackResult<'data> = {
    data: response<'data>,
    header: Js.Dict.t<string>,
    statusCode: int,
    errMsg: string,
  }
}

@obj
external requestOption: (
  ~url: string,
  ~header: Js.Dict.t<string>=?,
  ~method: Network.method=?,
  ~data: 'a=?,
  ~dataType: Network.dataType=?,
  ~responseType: Network.responseType=?,
  ~success: Network.successCallbackResult<'data> => unit=?,
  ~fail: General.callbackResult => unit=?,
  unit,
) => _ = ""

@module("@tarojs/taro")
external request: 'a => Js.Promise.t<Network.successCallbackResult<'data>> = "request"

// System API

module System = {
  type systemInfo = {
    "system": string,
    "platform": string,
    "version": string,
    "screenHeight": int,
    "screenWidth": int,
  }
}

@module("@tarojs/taro")
external getSystemInfo: 'a => Js.Promise.t<System.systemInfo> = "getSystemInfo"
