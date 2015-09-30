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
-- Module      : Network.Google.Resource.Directory.Groups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsGet@.
module Network.Google.Resource.Directory.Groups.Get
    (
    -- * REST Resource
      GroupsGetResource

    -- * Creating a Request
    , groupsGet'
    , GroupsGet'

    -- * Request Lenses
    , ggQuotaUser
    , ggPrettyPrint
    , ggUserIp
    , ggGroupKey
    , ggKey
    , ggOauthToken
    , ggFields
    , ggAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsGet@ which the
-- 'GroupsGet'' request conforms to.
type GroupsGetResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Group

-- | Retrieve Group
--
-- /See:/ 'groupsGet'' smart constructor.
data GroupsGet' = GroupsGet'
    { _ggQuotaUser   :: !(Maybe Text)
    , _ggPrettyPrint :: !Bool
    , _ggUserIp      :: !(Maybe Text)
    , _ggGroupKey    :: !Text
    , _ggKey         :: !(Maybe Text)
    , _ggOauthToken  :: !(Maybe Text)
    , _ggFields      :: !(Maybe Text)
    , _ggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggQuotaUser'
--
-- * 'ggPrettyPrint'
--
-- * 'ggUserIp'
--
-- * 'ggGroupKey'
--
-- * 'ggKey'
--
-- * 'ggOauthToken'
--
-- * 'ggFields'
--
-- * 'ggAlt'
groupsGet'
    :: Text -- ^ 'groupKey'
    -> GroupsGet'
groupsGet' pGgGroupKey_ =
    GroupsGet'
    { _ggQuotaUser = Nothing
    , _ggPrettyPrint = True
    , _ggUserIp = Nothing
    , _ggGroupKey = pGgGroupKey_
    , _ggKey = Nothing
    , _ggOauthToken = Nothing
    , _ggFields = Nothing
    , _ggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ggQuotaUser :: Lens' GroupsGet' (Maybe Text)
ggQuotaUser
  = lens _ggQuotaUser (\ s a -> s{_ggQuotaUser = a})

-- | Returns response with indentations and line breaks.
ggPrettyPrint :: Lens' GroupsGet' Bool
ggPrettyPrint
  = lens _ggPrettyPrint
      (\ s a -> s{_ggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ggUserIp :: Lens' GroupsGet' (Maybe Text)
ggUserIp = lens _ggUserIp (\ s a -> s{_ggUserIp = a})

-- | Email or immutable Id of the group
ggGroupKey :: Lens' GroupsGet' Text
ggGroupKey
  = lens _ggGroupKey (\ s a -> s{_ggGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ggKey :: Lens' GroupsGet' (Maybe Text)
ggKey = lens _ggKey (\ s a -> s{_ggKey = a})

-- | OAuth 2.0 token for the current user.
ggOauthToken :: Lens' GroupsGet' (Maybe Text)
ggOauthToken
  = lens _ggOauthToken (\ s a -> s{_ggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ggFields :: Lens' GroupsGet' (Maybe Text)
ggFields = lens _ggFields (\ s a -> s{_ggFields = a})

-- | Data format for the response.
ggAlt :: Lens' GroupsGet' Alt
ggAlt = lens _ggAlt (\ s a -> s{_ggAlt = a})

instance GoogleRequest GroupsGet' where
        type Rs GroupsGet' = Group
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsGet'{..}
          = go _ggQuotaUser (Just _ggPrettyPrint) _ggUserIp
              _ggGroupKey
              _ggKey
              _ggOauthToken
              _ggFields
              (Just _ggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsGetResource)
                      r
                      u
