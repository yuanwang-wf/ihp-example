module Config where

import IHP.Prelude
import IHP.Environment
import IHP.FrameworkConfig

import IHP.View.CSSFramework -- ADD THIS IMPORT
import IHP.View.Types

config :: ConfigBuilder
config = do
    option Development
    option (AppHostname "localhost")
    option tailwind -- ADD THIS OPTION