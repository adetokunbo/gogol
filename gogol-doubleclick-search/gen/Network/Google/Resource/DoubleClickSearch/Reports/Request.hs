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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Request
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a report request into the reporting system.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleclicksearchReportsRequest@.
module Network.Google.Resource.DoubleClickSearch.Reports.Request
    (
    -- * REST Resource
      ReportsRequestResource

    -- * Creating a Request
    , reportsRequest'
    , ReportsRequest'

    -- * Request Lenses
    , rrQuotaUser
    , rrPrettyPrint
    , rrUserIp
    , rrKey
    , rrOauthToken
    , rrFields
    , rrAlt
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclicksearchReportsRequest@ which the
-- 'ReportsRequest'' request conforms to.
type ReportsRequestResource =
     "reports" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Report

-- | Inserts a report request into the reporting system.
--
-- /See:/ 'reportsRequest'' smart constructor.
data ReportsRequest' = ReportsRequest'
    { _rrQuotaUser   :: !(Maybe Text)
    , _rrPrettyPrint :: !Bool
    , _rrUserIp      :: !(Maybe Text)
    , _rrKey         :: !(Maybe Text)
    , _rrOauthToken  :: !(Maybe Text)
    , _rrFields      :: !(Maybe Text)
    , _rrAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsRequest'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrQuotaUser'
--
-- * 'rrPrettyPrint'
--
-- * 'rrUserIp'
--
-- * 'rrKey'
--
-- * 'rrOauthToken'
--
-- * 'rrFields'
--
-- * 'rrAlt'
reportsRequest'
    :: ReportsRequest'
reportsRequest' =
    ReportsRequest'
    { _rrQuotaUser = Nothing
    , _rrPrettyPrint = True
    , _rrUserIp = Nothing
    , _rrKey = Nothing
    , _rrOauthToken = Nothing
    , _rrFields = Nothing
    , _rrAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrQuotaUser :: Lens' ReportsRequest' (Maybe Text)
rrQuotaUser
  = lens _rrQuotaUser (\ s a -> s{_rrQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrPrettyPrint :: Lens' ReportsRequest' Bool
rrPrettyPrint
  = lens _rrPrettyPrint
      (\ s a -> s{_rrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrUserIp :: Lens' ReportsRequest' (Maybe Text)
rrUserIp = lens _rrUserIp (\ s a -> s{_rrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrKey :: Lens' ReportsRequest' (Maybe Text)
rrKey = lens _rrKey (\ s a -> s{_rrKey = a})

-- | OAuth 2.0 token for the current user.
rrOauthToken :: Lens' ReportsRequest' (Maybe Text)
rrOauthToken
  = lens _rrOauthToken (\ s a -> s{_rrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrFields :: Lens' ReportsRequest' (Maybe Text)
rrFields = lens _rrFields (\ s a -> s{_rrFields = a})

-- | Data format for the response.
rrAlt :: Lens' ReportsRequest' Alt
rrAlt = lens _rrAlt (\ s a -> s{_rrAlt = a})

instance GoogleRequest ReportsRequest' where
        type Rs ReportsRequest' = Report
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ReportsRequest'{..}
          = go _rrQuotaUser (Just _rrPrettyPrint) _rrUserIp
              _rrKey
              _rrOauthToken
              _rrFields
              (Just _rrAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsRequestResource)
                      r
                      u
