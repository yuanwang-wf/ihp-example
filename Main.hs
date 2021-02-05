module Main where
import IHP.Prelude ( IO )

import Config ( config )
import qualified IHP.Server
import IHP.RouterSupport
    ( mountFrontController, FrontController(..) )
import IHP.FrameworkConfig ( RootApplication )
import IHP.Job.Types ( Worker(..) )
import Web.FrontController ()
import Web.Types ( WebApplication(WebApplication) )

instance FrontController RootApplication where
    controllers = [
            mountFrontController WebApplication
        ]

instance Worker RootApplication where
    workers _ = []

main :: IO ()
main = IHP.Server.run config
