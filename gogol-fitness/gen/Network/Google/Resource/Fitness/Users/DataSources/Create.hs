{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new data source that is unique across all data sources
-- belonging to this user. The data stream ID field can be omitted and will
-- be generated by the server with the correct format. The data stream ID
-- is an ordered combination of some fields from the data source. In
-- addition to the data source fields reflected into the data source ID,
-- the developer project number that is authenticated when creating the
-- data source is included. This developer project number is obfuscated
-- when read by any other developer reading public data types.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.create@.
module Network.Google.Resource.Fitness.Users.DataSources.Create
    (
    -- * REST Resource
      UsersDataSourcesCreateResource

    -- * Creating a Request
    , usersDataSourcesCreate
    , UsersDataSourcesCreate

    -- * Request Lenses
    , udscPayload
    , udscUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.create@ method which the
-- 'UsersDataSourcesCreate' request conforms to.
type UsersDataSourcesCreateResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DataSource :> Post '[JSON] DataSource

-- | Creates a new data source that is unique across all data sources
-- belonging to this user. The data stream ID field can be omitted and will
-- be generated by the server with the correct format. The data stream ID
-- is an ordered combination of some fields from the data source. In
-- addition to the data source fields reflected into the data source ID,
-- the developer project number that is authenticated when creating the
-- data source is included. This developer project number is obfuscated
-- when read by any other developer reading public data types.
--
-- /See:/ 'usersDataSourcesCreate' smart constructor.
data UsersDataSourcesCreate = UsersDataSourcesCreate
    { _udscPayload :: !DataSource
    , _udscUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udscPayload'
--
-- * 'udscUserId'
usersDataSourcesCreate
    :: DataSource -- ^ 'udscPayload'
    -> Text -- ^ 'udscUserId'
    -> UsersDataSourcesCreate
usersDataSourcesCreate pUdscPayload_ pUdscUserId_ =
    UsersDataSourcesCreate
    { _udscPayload = pUdscPayload_
    , _udscUserId = pUdscUserId_
    }

-- | Multipart request metadata.
udscPayload :: Lens' UsersDataSourcesCreate DataSource
udscPayload
  = lens _udscPayload (\ s a -> s{_udscPayload = a})

-- | Create the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udscUserId :: Lens' UsersDataSourcesCreate Text
udscUserId
  = lens _udscUserId (\ s a -> s{_udscUserId = a})

instance GoogleRequest UsersDataSourcesCreate where
        type Rs UsersDataSourcesCreate = DataSource
        requestClient UsersDataSourcesCreate{..}
          = go _udscUserId (Just AltJSON) _udscPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesCreateResource)
                      mempty
