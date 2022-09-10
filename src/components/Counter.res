open TaroComponents

type action = Inc | Dec
type state = {count: int}

let reducer = (state, action) => {
  switch action {
  | Inc => {count: state.count + 1}
  | Dec => {count: state.count - 1}
  }
}

@genType
@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(reducer, {count: 0})

  <View className="flex flex-col items-center">
    <View className="flex gap-x-4">
      <View className="h-full w-4" onClick={_ => dispatch(Dec)}><Button>{React.string("-")}</Button></View>
      <Text>{React.string(Belt.Int.toString(state.count))}</Text>
      <View className="h-full w-4" onClick={_ => dispatch(Inc)}><Button>{React.string("+")}</Button></View>
    </View>
  </View>
}

@genType let default = make
