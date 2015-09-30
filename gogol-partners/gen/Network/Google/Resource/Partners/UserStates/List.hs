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
-- Module      : Network.Google.Resource.Partners.UserStates.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists states for current user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @PartnersUserStatesList@.
module Network.Google.Resource.Partners.UserStates.List
    (
    -- * REST Resource
      UserStatesListResource

    -- * Creating a Request
    , userStatesList'
    , UserStatesList'

    -- * Request Lenses
    , uslXgafv
    , uslQuotaUser
    , uslPrettyPrint
    , uslUploadProtocol
    , uslPp
    , uslAccessToken
    , uslUploadType
    , uslRequestMetadataPartnersSessionId
    , uslBearerToken
    , uslKey
    , uslRequestMetadataLocale
    , uslRequestMetadataExperimentIds
    , uslRequestMetadataUserOverridesIpAddress
    , uslRequestMetadataTrafficSourceTrafficSubId
    , uslOauthToken
    , uslRequestMetadataUserOverridesUserId
    , uslRequestMetadataTrafficSourceTrafficSourceId
    , uslFields
    , uslCallback
    , uslAlt
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @PartnersUserStatesList@ which the
-- 'UserStatesList'' request conforms to.
type UserStatesListResource =
     "v2" :>
       "userStates" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "requestMetadata.partnersSessionId" Text
                         :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "requestMetadata.locale" Text :>
                               QueryParams "requestMetadata.experimentIds" Text
                                 :>
                                 QueryParam
                                   "requestMetadata.userOverrides.ipAddress"
                                   Text
                                   :>
                                   QueryParam
                                     "requestMetadata.trafficSource.trafficSubId"
                                     Text
                                     :>
                                     QueryParam "oauth_token" Text :>
                                       QueryParam
                                         "requestMetadata.userOverrides.userId"
                                         Text
                                         :>
                                         QueryParam
                                           "requestMetadata.trafficSource.trafficSourceId"
                                           Text
                                           :>
                                           QueryParam "fields" Text :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" Text :>
                                                 Get '[JSON]
                                                   ListUserStatesResponse

-- | Lists states for current user.
--
-- /See:/ 'userStatesList'' smart constructor.
data UserStatesList' = UserStatesList'
    { _uslXgafv                                       :: !(Maybe Text)
    , _uslQuotaUser                                   :: !(Maybe Text)
    , _uslPrettyPrint                                 :: !Bool
    , _uslUploadProtocol                              :: !(Maybe Text)
    , _uslPp                                          :: !Bool
    , _uslAccessToken                                 :: !(Maybe Text)
    , _uslUploadType                                  :: !(Maybe Text)
    , _uslRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _uslBearerToken                                 :: !(Maybe Text)
    , _uslKey                                         :: !(Maybe Text)
    , _uslRequestMetadataLocale                       :: !(Maybe Text)
    , _uslRequestMetadataExperimentIds                :: !(Maybe Text)
    , _uslRequestMetadataUserOverridesIpAddress       :: !(Maybe Text)
    , _uslRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _uslOauthToken                                  :: !(Maybe Text)
    , _uslRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _uslRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _uslFields                                      :: !(Maybe Text)
    , _uslCallback                                    :: !(Maybe Text)
    , _uslAlt                                         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserStatesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uslXgafv'
--
-- * 'uslQuotaUser'
--
-- * 'uslPrettyPrint'
--
-- * 'uslUploadProtocol'
--
-- * 'uslPp'
--
-- * 'uslAccessToken'
--
-- * 'uslUploadType'
--
-- * 'uslRequestMetadataPartnersSessionId'
--
-- * 'uslBearerToken'
--
-- * 'uslKey'
--
-- * 'uslRequestMetadataLocale'
--
-- * 'uslRequestMetadataExperimentIds'
--
-- * 'uslRequestMetadataUserOverridesIpAddress'
--
-- * 'uslRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'uslOauthToken'
--
-- * 'uslRequestMetadataUserOverridesUserId'
--
-- * 'uslRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'uslFields'
--
-- * 'uslCallback'
--
-- * 'uslAlt'
userStatesList'
    :: UserStatesList'
userStatesList' =
    UserStatesList'
    { _uslXgafv = Nothing
    , _uslQuotaUser = Nothing
    , _uslPrettyPrint = True
    , _uslUploadProtocol = Nothing
    , _uslPp = True
    , _uslAccessToken = Nothing
    , _uslUploadType = Nothing
    , _uslRequestMetadataPartnersSessionId = Nothing
    , _uslBearerToken = Nothing
    , _uslKey = Nothing
    , _uslRequestMetadataLocale = Nothing
    , _uslRequestMetadataExperimentIds = Nothing
    , _uslRequestMetadataUserOverridesIpAddress = Nothing
    , _uslRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _uslOauthToken = Nothing
    , _uslRequestMetadataUserOverridesUserId = Nothing
    , _uslRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _uslFields = Nothing
    , _uslCallback = Nothing
    , _uslAlt = "json"
    }

-- | V1 error format.
uslXgafv :: Lens' UserStatesList' (Maybe Text)
uslXgafv = lens _uslXgafv (\ s a -> s{_uslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
uslQuotaUser :: Lens' UserStatesList' (Maybe Text)
uslQuotaUser
  = lens _uslQuotaUser (\ s a -> s{_uslQuotaUser = a})

-- | Returns response with indentations and line breaks.
uslPrettyPrint :: Lens' UserStatesList' Bool
uslPrettyPrint
  = lens _uslPrettyPrint
      (\ s a -> s{_uslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uslUploadProtocol :: Lens' UserStatesList' (Maybe Text)
uslUploadProtocol
  = lens _uslUploadProtocol
      (\ s a -> s{_uslUploadProtocol = a})

-- | Pretty-print response.
uslPp :: Lens' UserStatesList' Bool
uslPp = lens _uslPp (\ s a -> s{_uslPp = a})

-- | OAuth access token.
uslAccessToken :: Lens' UserStatesList' (Maybe Text)
uslAccessToken
  = lens _uslAccessToken
      (\ s a -> s{_uslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uslUploadType :: Lens' UserStatesList' (Maybe Text)
uslUploadType
  = lens _uslUploadType
      (\ s a -> s{_uslUploadType = a})

-- | Google Partners session ID.
uslRequestMetadataPartnersSessionId :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataPartnersSessionId
  = lens _uslRequestMetadataPartnersSessionId
      (\ s a ->
         s{_uslRequestMetadataPartnersSessionId = a})

-- | OAuth bearer token.
uslBearerToken :: Lens' UserStatesList' (Maybe Text)
uslBearerToken
  = lens _uslBearerToken
      (\ s a -> s{_uslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uslKey :: Lens' UserStatesList' (Maybe Text)
uslKey = lens _uslKey (\ s a -> s{_uslKey = a})

-- | Locale to use for the current request.
uslRequestMetadataLocale :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataLocale
  = lens _uslRequestMetadataLocale
      (\ s a -> s{_uslRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
uslRequestMetadataExperimentIds :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataExperimentIds
  = lens _uslRequestMetadataExperimentIds
      (\ s a -> s{_uslRequestMetadataExperimentIds = a})

-- | IP address to use instead of the user\'s geo-located IP address.
uslRequestMetadataUserOverridesIpAddress :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataUserOverridesIpAddress
  = lens _uslRequestMetadataUserOverridesIpAddress
      (\ s a ->
         s{_uslRequestMetadataUserOverridesIpAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
uslRequestMetadataTrafficSourceTrafficSubId :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataTrafficSourceTrafficSubId
  = lens _uslRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_uslRequestMetadataTrafficSourceTrafficSubId = a})

-- | OAuth 2.0 token for the current user.
uslOauthToken :: Lens' UserStatesList' (Maybe Text)
uslOauthToken
  = lens _uslOauthToken
      (\ s a -> s{_uslOauthToken = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
uslRequestMetadataUserOverridesUserId :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataUserOverridesUserId
  = lens _uslRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_uslRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
uslRequestMetadataTrafficSourceTrafficSourceId :: Lens' UserStatesList' (Maybe Text)
uslRequestMetadataTrafficSourceTrafficSourceId
  = lens
      _uslRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_uslRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | Selector specifying which fields to include in a partial response.
uslFields :: Lens' UserStatesList' (Maybe Text)
uslFields
  = lens _uslFields (\ s a -> s{_uslFields = a})

-- | JSONP
uslCallback :: Lens' UserStatesList' (Maybe Text)
uslCallback
  = lens _uslCallback (\ s a -> s{_uslCallback = a})

-- | Data format for response.
uslAlt :: Lens' UserStatesList' Text
uslAlt = lens _uslAlt (\ s a -> s{_uslAlt = a})

instance GoogleRequest UserStatesList' where
        type Rs UserStatesList' = ListUserStatesResponse
        request = requestWithRoute defReq partnersURL
        requestWithRoute r u UserStatesList'{..}
          = go _uslXgafv _uslQuotaUser (Just _uslPrettyPrint)
              _uslUploadProtocol
              (Just _uslPp)
              _uslAccessToken
              _uslUploadType
              _uslRequestMetadataPartnersSessionId
              _uslBearerToken
              _uslKey
              _uslRequestMetadataLocale
              _uslRequestMetadataExperimentIds
              _uslRequestMetadataUserOverridesIpAddress
              _uslRequestMetadataTrafficSourceTrafficSubId
              _uslOauthToken
              _uslRequestMetadataUserOverridesUserId
              _uslRequestMetadataTrafficSourceTrafficSourceId
              _uslFields
              _uslCallback
              (Just _uslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserStatesListResource)
                      r
                      u
