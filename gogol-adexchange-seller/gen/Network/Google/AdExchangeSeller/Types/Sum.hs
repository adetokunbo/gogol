{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeSeller.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeSeller.Types.Sum where

import           Network.Google.Prelude

-- | Data format for the response.
data Alt
    = CSV
      -- ^ @csv@
      -- Responses with Content-Type of text\/csv
    | JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "csv" -> Just CSV
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        CSV -> "csv"
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
