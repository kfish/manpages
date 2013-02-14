module Man.Types (
        Man (..),
) where

import Data.Default

import System.Console.GetOpt (OptDescr)

import UI.Command.Command

------------------------------------------------------------
-- Man class
--

-- | It is often simpler to use the default implementation of Man, and
-- override it with the details you choose to use.
-- For example, an implementation of the ''hello'' command:
--
-- > hello = def {
-- >         manName = "hello",
-- >         manVersion = "0.1",
-- >         manAuthors = ["Joe R. Hacker"],
-- >         manBugEmail = "bugs@example.com",
-- >         manShortDesc = "manpages example program",
-- >         manLongDesc = longDesc,
-- >         manCategories = ["Greetings", "Cat Math"],
-- >         manSeeAlso = ["tractorgen"],
-- >         manProject = "Haskell",
-- >         manCmds = [world, times]
-- > }
-- > 
-- > longDesc = "a demonstration program for manpages."
--
data Man = Man {
    -- | Name of the program
    manName :: String,

    -- | Software version
    manVersion :: String,

    -- | Email address to report bugs to
    manBugEmail :: String,

    -- | Names of authors
    manAuthors :: [String],

    -- | One-line description of the command
    manShortDesc :: String,

    -- | Long description of the command
    manLongDesc :: String,

    -- | Categories to show in help text, in order of manearance
    manCategories :: [String],

    -- | Project that this command is part of
    manProject :: String,

    -- | Related commands
    manSeeAlso :: [String],
}

instance Default Man where
    def = Man "<undocumented command>" "0.0" def def def def def def def

