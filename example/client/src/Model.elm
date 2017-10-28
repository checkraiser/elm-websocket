module Model exposing (..)


import Api
import Navigation
import Page.CreateTaskPage as CreateTaskPage


type Page
    = Initial
    | CreateTask CreateTaskPage.Model
    | ViewTask Api.Task


type alias Model =
    { location : Navigation.Location
    , allTasks : List Api.Task
    , page : Page }


type Msg
    = Receive (Result String Api.Message)
    | UrlChange Navigation.Location
    | ViewCreateTask
    | CreateTaskMsg CreateTaskPage.Msg
