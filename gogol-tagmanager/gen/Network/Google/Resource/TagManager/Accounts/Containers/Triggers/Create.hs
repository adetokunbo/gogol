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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTriggersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
    (
    -- * REST Resource
      AccountsContainersTriggersCreateResource

    -- * Creating a Request
    , accountsContainersTriggersCreate'
    , AccountsContainersTriggersCreate'

    -- * Request Lenses
    , actccQuotaUser
    , actccPrettyPrint
    , actccContainerId
    , actccUserIp
    , actccAccountId
    , actccKey
    , actccOauthToken
    , actccFields
    , actccAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTriggersCreate@ which the
-- 'AccountsContainersTriggersCreate'' request conforms to.
type AccountsContainersTriggersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Trigger

-- | Creates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersCreate'' smart constructor.
data AccountsContainersTriggersCreate' = AccountsContainersTriggersCreate'
    { _actccQuotaUser   :: !(Maybe Text)
    , _actccPrettyPrint :: !Bool
    , _actccContainerId :: !Text
    , _actccUserIp      :: !(Maybe Text)
    , _actccAccountId   :: !Text
    , _actccKey         :: !(Maybe Text)
    , _actccOauthToken  :: !(Maybe Text)
    , _actccFields      :: !(Maybe Text)
    , _actccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actccQuotaUser'
--
-- * 'actccPrettyPrint'
--
-- * 'actccContainerId'
--
-- * 'actccUserIp'
--
-- * 'actccAccountId'
--
-- * 'actccKey'
--
-- * 'actccOauthToken'
--
-- * 'actccFields'
--
-- * 'actccAlt'
accountsContainersTriggersCreate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersCreate'
accountsContainersTriggersCreate' pActccContainerId_ pActccAccountId_ =
    AccountsContainersTriggersCreate'
    { _actccQuotaUser = Nothing
    , _actccPrettyPrint = True
    , _actccContainerId = pActccContainerId_
    , _actccUserIp = Nothing
    , _actccAccountId = pActccAccountId_
    , _actccKey = Nothing
    , _actccOauthToken = Nothing
    , _actccFields = Nothing
    , _actccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actccQuotaUser :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccQuotaUser
  = lens _actccQuotaUser
      (\ s a -> s{_actccQuotaUser = a})

-- | Returns response with indentations and line breaks.
actccPrettyPrint :: Lens' AccountsContainersTriggersCreate' Bool
actccPrettyPrint
  = lens _actccPrettyPrint
      (\ s a -> s{_actccPrettyPrint = a})

-- | The GTM Container ID.
actccContainerId :: Lens' AccountsContainersTriggersCreate' Text
actccContainerId
  = lens _actccContainerId
      (\ s a -> s{_actccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actccUserIp :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccUserIp
  = lens _actccUserIp (\ s a -> s{_actccUserIp = a})

-- | The GTM Account ID.
actccAccountId :: Lens' AccountsContainersTriggersCreate' Text
actccAccountId
  = lens _actccAccountId
      (\ s a -> s{_actccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actccKey :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccKey = lens _actccKey (\ s a -> s{_actccKey = a})

-- | OAuth 2.0 token for the current user.
actccOauthToken :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccOauthToken
  = lens _actccOauthToken
      (\ s a -> s{_actccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actccFields :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccFields
  = lens _actccFields (\ s a -> s{_actccFields = a})

-- | Data format for the response.
actccAlt :: Lens' AccountsContainersTriggersCreate' Alt
actccAlt = lens _actccAlt (\ s a -> s{_actccAlt = a})

instance GoogleRequest
         AccountsContainersTriggersCreate' where
        type Rs AccountsContainersTriggersCreate' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersCreate'{..}
          = go _actccQuotaUser (Just _actccPrettyPrint)
              _actccContainerId
              _actccUserIp
              _actccAccountId
              _actccKey
              _actccOauthToken
              _actccFields
              (Just _actccAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersTriggersCreateResource)
                      r
                      u
