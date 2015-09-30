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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one advertiser by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersGet@.
module Network.Google.Resource.DFAReporting.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetResource

    -- * Creating a Request
    , advertisersGet'
    , AdvertisersGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agProfileId
    , agKey
    , agId
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersGet@ which the
-- 'AdvertisersGet'' request conforms to.
type AdvertisersGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Advertiser

-- | Gets one advertiser by ID.
--
-- /See:/ 'advertisersGet'' smart constructor.
data AdvertisersGet' = AdvertisersGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIp      :: !(Maybe Text)
    , _agProfileId   :: !Int64
    , _agKey         :: !(Maybe Text)
    , _agId          :: !Int64
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agProfileId'
--
-- * 'agKey'
--
-- * 'agId'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
advertisersGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertisersGet'
advertisersGet' pAgProfileId_ pAgId_ =
    AdvertisersGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agProfileId = pAgProfileId_
    , _agKey = Nothing
    , _agId = pAgId_
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AdvertisersGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AdvertisersGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AdvertisersGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | User profile ID associated with this request.
agProfileId :: Lens' AdvertisersGet' Int64
agProfileId
  = lens _agProfileId (\ s a -> s{_agProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AdvertisersGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | Advertiser ID.
agId :: Lens' AdvertisersGet' Int64
agId = lens _agId (\ s a -> s{_agId = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AdvertisersGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AdvertisersGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AdvertisersGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AdvertisersGet' where
        type Rs AdvertisersGet' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agUserIp
              _agProfileId
              _agKey
              _agId
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersGetResource)
                      r
                      u
