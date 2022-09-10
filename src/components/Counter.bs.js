// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Components from "@tarojs/components";

function reducer(state, action) {
  if (action) {
    return {
            count: state.count - 1 | 0
          };
  } else {
    return {
            count: state.count + 1 | 0
          };
  }
}

function Counter(Props) {
  var match = React.useReducer(reducer, {
        count: 0
      });
  var dispatch = match[1];
  return React.createElement(Components.View, {
              className: "flex flex-col items-center",
              children: React.createElement(Components.View, {
                    className: "flex gap-x-4",
                    children: null
                  }, React.createElement(Components.View, {
                        className: "h-full w-4",
                        onClick: (function (param) {
                            Curry._1(dispatch, /* Dec */1);
                          }),
                        children: React.createElement(Components.Button, {
                              children: "-"
                            })
                      }), React.createElement(Components.Text, {
                        children: String(match[0].count)
                      }), React.createElement(Components.View, {
                        className: "h-full w-4",
                        onClick: (function (param) {
                            Curry._1(dispatch, /* Inc */0);
                          }),
                        children: React.createElement(Components.Button, {
                              children: "+"
                            })
                      }))
            });
}

var make = Counter;

var $$default = Counter;

export {
  reducer ,
  make ,
  $$default ,
  $$default as default,
}
/* react Not a pure module */