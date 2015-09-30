{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new data source that is unique across all data sources
-- belonging to this user. The data stream ID field can be omitted and will
-- be generated by the server with the correct format. The data stream ID
-- is an ordered combination of some fields from the data source. In
-- addition to the data source fields reflected into the data source ID,
-- the developer project number that is authenticated when creating the
-- data source is included. This developer project number is obfuscated
-- when read by any other developer reading public data types.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesCreate@.
module Network.Google.Resource.Fitness.Users.DataSources.Create
    (
    -- * REST Resource
      UsersDataSourcesCreateResource

    -- * Creating a Request
    , usersDataSourcesCreate'
    , UsersDataSourcesCreate'

    -- * Request Lenses
    , udscQuotaUser
    , udscPrettyPrint
    , udscUserIp
    , udscUserId
    , udscKey
    , udscOauthToken
    , udscFields
    , udscAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesCreate@ which the
-- 'UsersDataSourcesCreate'' request conforms to.
type UsersDataSourcesCreateResource =
     Capture "userId" Text :>
       "dataSources" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] DataSource

-- | Creates a new data source that is unique across all data sources
-- belonging to this user. The data stream ID field can be omitted and will
-- be generated by the server with the correct format. The data stream ID
-- is an ordered combination of some fields from the data source. In
-- addition to the data source fields reflected into the data source ID,
-- the developer project number that is authenticated when creating the
-- data source is included. This developer project number is obfuscated
-- when read by any other developer reading public data types.
--
-- /See:/ 'usersDataSourcesCreate'' smart constructor.
data UsersDataSourcesCreate' = UsersDataSourcesCreate'
    { _udscQuotaUser   :: !(Maybe Text)
    , _udscPrettyPrint :: !Bool
    , _udscUserIp      :: !(Maybe Text)
    , _udscUserId      :: !Text
    , _udscKey         :: !(Maybe Text)
    , _udscOauthToken  :: !(Maybe Text)
    , _udscFields      :: !(Maybe Text)
    , _udscAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udscQuotaUser'
--
-- * 'udscPrettyPrint'
--
-- * 'udscUserIp'
--
-- * 'udscUserId'
--
-- * 'udscKey'
--
-- * 'udscOauthToken'
--
-- * 'udscFields'
--
-- * 'udscAlt'
usersDataSourcesCreate'
    :: Text -- ^ 'userId'
    -> UsersDataSourcesCreate'
usersDataSourcesCreate' pUdscUserId_ =
    UsersDataSourcesCreate'
    { _udscQuotaUser = Nothing
    , _udscPrettyPrint = True
    , _udscUserIp = Nothing
    , _udscUserId = pUdscUserId_
    , _udscKey = Nothing
    , _udscOauthToken = Nothing
    , _udscFields = Nothing
    , _udscAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udscQuotaUser :: Lens' UsersDataSourcesCreate' (Maybe Text)
udscQuotaUser
  = lens _udscQuotaUser
      (\ s a -> s{_udscQuotaUser = a})

-- | Returns response with indentations and line breaks.
udscPrettyPrint :: Lens' UsersDataSourcesCreate' Bool
udscPrettyPrint
  = lens _udscPrettyPrint
      (\ s a -> s{_udscPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udscUserIp :: Lens' UsersDataSourcesCreate' (Maybe Text)
udscUserIp
  = lens _udscUserIp (\ s a -> s{_udscUserIp = a})

-- | Create the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udscUserId :: Lens' UsersDataSourcesCreate' Text
udscUserId
  = lens _udscUserId (\ s a -> s{_udscUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udscKey :: Lens' UsersDataSourcesCreate' (Maybe Text)
udscKey = lens _udscKey (\ s a -> s{_udscKey = a})

-- | OAuth 2.0 token for the current user.
udscOauthToken :: Lens' UsersDataSourcesCreate' (Maybe Text)
udscOauthToken
  = lens _udscOauthToken
      (\ s a -> s{_udscOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udscFields :: Lens' UsersDataSourcesCreate' (Maybe Text)
udscFields
  = lens _udscFields (\ s a -> s{_udscFields = a})

-- | Data format for the response.
udscAlt :: Lens' UsersDataSourcesCreate' Alt
udscAlt = lens _udscAlt (\ s a -> s{_udscAlt = a})

instance GoogleRequest UsersDataSourcesCreate' where
        type Rs UsersDataSourcesCreate' = DataSource
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesCreate'{..}
          = go _udscQuotaUser (Just _udscPrettyPrint)
              _udscUserIp
              _udscUserId
              _udscKey
              _udscOauthToken
              _udscFields
              (Just _udscAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesCreateResource)
                      r
                      u
