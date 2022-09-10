module View = {
  @module("@tarojs/components") @react.component
  external make: (~className: string=?, ~onClick: ReactEvent.Mouse.t => unit=?, ~children: 'children=?) => React.element = "View"
}

module Text = {
  @module("@tarojs/components") @react.component
  external make: (~className: string=?, ~children: 'children=?) => React.element = "Text"
}

module Button = {
  @module("@tarojs/components") @react.component
  external make: (~className: string=?, ~children: 'children=?) => React.element = "Button"
}
