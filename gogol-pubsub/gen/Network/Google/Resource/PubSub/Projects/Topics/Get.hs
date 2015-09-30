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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the configuration of a topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsGet@.
module Network.Google.Resource.PubSub.Projects.Topics.Get
    (
    -- * REST Resource
      ProjectsTopicsGetResource

    -- * Creating a Request
    , projectsTopicsGet'
    , ProjectsTopicsGet'

    -- * Request Lenses
    , ptgXgafv
    , ptgQuotaUser
    , ptgPrettyPrint
    , ptgUploadProtocol
    , ptgPp
    , ptgAccessToken
    , ptgUploadType
    , ptgTopic
    , ptgBearerToken
    , ptgKey
    , ptgOauthToken
    , ptgFields
    , ptgCallback
    , ptgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsGet@ which the
-- 'ProjectsTopicsGet'' request conforms to.
type ProjectsTopicsGetResource =
     "v1beta2" :>
       "{+topic}" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Topic

-- | Gets the configuration of a topic.
--
-- /See:/ 'projectsTopicsGet'' smart constructor.
data ProjectsTopicsGet' = ProjectsTopicsGet'
    { _ptgXgafv          :: !(Maybe Text)
    , _ptgQuotaUser      :: !(Maybe Text)
    , _ptgPrettyPrint    :: !Bool
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgPp             :: !Bool
    , _ptgAccessToken    :: !(Maybe Text)
    , _ptgUploadType     :: !(Maybe Text)
    , _ptgTopic          :: !Text
    , _ptgBearerToken    :: !(Maybe Text)
    , _ptgKey            :: !(Maybe Text)
    , _ptgOauthToken     :: !(Maybe Text)
    , _ptgFields         :: !(Maybe Text)
    , _ptgCallback       :: !(Maybe Text)
    , _ptgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgXgafv'
--
-- * 'ptgQuotaUser'
--
-- * 'ptgPrettyPrint'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgPp'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgTopic'
--
-- * 'ptgBearerToken'
--
-- * 'ptgKey'
--
-- * 'ptgOauthToken'
--
-- * 'ptgFields'
--
-- * 'ptgCallback'
--
-- * 'ptgAlt'
projectsTopicsGet'
    :: Text -- ^ 'topic'
    -> ProjectsTopicsGet'
projectsTopicsGet' pPtgTopic_ =
    ProjectsTopicsGet'
    { _ptgXgafv = Nothing
    , _ptgQuotaUser = Nothing
    , _ptgPrettyPrint = True
    , _ptgUploadProtocol = Nothing
    , _ptgPp = True
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgTopic = pPtgTopic_
    , _ptgBearerToken = Nothing
    , _ptgKey = Nothing
    , _ptgOauthToken = Nothing
    , _ptgFields = Nothing
    , _ptgCallback = Nothing
    , _ptgAlt = "json"
    }

-- | V1 error format.
ptgXgafv :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptgQuotaUser :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgQuotaUser
  = lens _ptgQuotaUser (\ s a -> s{_ptgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptgPrettyPrint :: Lens' ProjectsTopicsGet' Bool
ptgPrettyPrint
  = lens _ptgPrettyPrint
      (\ s a -> s{_ptgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | Pretty-print response.
ptgPp :: Lens' ProjectsTopicsGet' Bool
ptgPp = lens _ptgPp (\ s a -> s{_ptgPp = a})

-- | OAuth access token.
ptgAccessToken :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | The name of the topic to get.
ptgTopic :: Lens' ProjectsTopicsGet' Text
ptgTopic = lens _ptgTopic (\ s a -> s{_ptgTopic = a})

-- | OAuth bearer token.
ptgBearerToken :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgBearerToken
  = lens _ptgBearerToken
      (\ s a -> s{_ptgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptgKey :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgKey = lens _ptgKey (\ s a -> s{_ptgKey = a})

-- | OAuth 2.0 token for the current user.
ptgOauthToken :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgOauthToken
  = lens _ptgOauthToken
      (\ s a -> s{_ptgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptgFields :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgFields
  = lens _ptgFields (\ s a -> s{_ptgFields = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTopicsGet' (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

-- | Data format for response.
ptgAlt :: Lens' ProjectsTopicsGet' Text
ptgAlt = lens _ptgAlt (\ s a -> s{_ptgAlt = a})

instance GoogleRequest ProjectsTopicsGet' where
        type Rs ProjectsTopicsGet' = Topic
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsGet'{..}
          = go _ptgXgafv _ptgQuotaUser (Just _ptgPrettyPrint)
              _ptgUploadProtocol
              (Just _ptgPp)
              _ptgAccessToken
              _ptgUploadType
              _ptgTopic
              _ptgBearerToken
              _ptgKey
              _ptgOauthToken
              _ptgFields
              _ptgCallback
              (Just _ptgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsGetResource)
                      r
                      u
