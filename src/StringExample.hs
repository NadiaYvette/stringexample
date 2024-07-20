{-# LANGUAGE BlockArguments             #-}
{-# LANGUAGE CPP                        #-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveAnyClass             #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DuplicateRecordFields      #-}
{-# LANGUAGE EmptyCase                  #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE NamedFieldPuns             #-}
{-# LANGUAGE PartialTypeSignatures      #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE TupleSections              #-}
{-# LANGUAGE TypeApplications           #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}

{-# OPTIONS_GHC -Wall                              #-}

#if defined(ERROR_ON_WARNINGS)
{-# OPTIONS_GHC -Werror                            #-}
#if defined(ERROR_SOFTEN_WHITELIST)
{-# OPTIONS_GHC -Wno-error=incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-error=partial-type-signatures #-}
{-# OPTIONS_GHC -Wno-error=unused-imports          #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas          #-}
#endif /* ERROR_SOFTEN_WHITELIST */
#endif /* ERROR_ON_WARNINGS */

#if defined(HLINT_SOFTEN)
{- HLINT ignore "Unused LANGUAGE pragma" -}
{- HLINT ignore "Avoid lambda using `infix`" -}
#endif /* HLINT_SOFTEN */

module  StringExample where

#if defined (AUXILIARY_IMPORTS)
import           Control.Arrow ((|||), (&&&), (+++), (***))
import qualified Control.Arrow as Arrow (first, second)
import qualified Data.Either as Either (fromRight)
import           Data.Function ((&))
import qualified Data.List as List (foldl', null)
import qualified Data.Maybe as Maybe (catMaybes, fromMaybe, mapMaybe)
#endif /* AUXILIARY_IMPORTS */


import           Data.String (IsString (..))


#if defined(AUXILIARY_IMPORTS)
import qualified Data.String as String (fromString)
import           Data.Text (Text)
import qualified Data.Text as Text (pack)
import qualified Data.Text.IO as Text (putStrLn)


import qualified System.Exit as Exit (die)
import qualified System.IO as IO (print)
#endif /* AUXILIARY_IMPORTS */


drepSigningKeyString :: IsString s => s
drepSigningKeyString = "{\
    \\\"type\": \"undisclosed type descriptor\",\
    \\\"description\": \"undisclosed description\",\
    \\\"cborHex\": \"5820ac0757312cf883baa809d8cf6c3c48e86acc70db9c6eb5511666c8b128d9020a\"\
    \\}"
