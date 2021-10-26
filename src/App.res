open Render

// Eleva o nível dos componentes
// 1. JSX
// 2. Pattern Matching
// 3. ADTS
// 4. Type system + Props

type result =
  | Loading
  | Data(string)
  | Error
  | Empty

module List = {
  @react.component
  let make = (~result) => {
    <div>
      {switch result {
      | Loading => "Loading..."->s
      | Data(name) => `Name: ${name}`->s
      | Error => errorMessage->s
      | Empty => "Empty state..."->s
      }}
    </div>
  }
}

@react.component
let make = () => {
  let result = Loading
  <div> <p> {"List component"->s} </p> <List result /> </div>
}
