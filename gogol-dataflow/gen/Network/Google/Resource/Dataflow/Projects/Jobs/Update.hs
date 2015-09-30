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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the state of an existing dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsUpdate@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Update
    (
    -- * REST Resource
      ProjectsJobsUpdateResource

    -- * Creating a Request
    , projectsJobsUpdate'
    , ProjectsJobsUpdate'

    -- * Request Lenses
    , pjuXgafv
    , pjuQuotaUser
    , pjuPrettyPrint
    , pjuJobId
    , pjuUploadProtocol
    , pjuPp
    , pjuAccessToken
    , pjuUploadType
    , pjuBearerToken
    , pjuKey
    , pjuProjectId
    , pjuOauthToken
    , pjuFields
    , pjuCallback
    , pjuAlt
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsUpdate@ which the
-- 'ProjectsJobsUpdate'' request conforms to.
type ProjectsJobsUpdateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
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
                                       QueryParam "alt" Text :> Put '[JSON] Job

-- | Updates the state of an existing dataflow job.
--
-- /See:/ 'projectsJobsUpdate'' smart constructor.
data ProjectsJobsUpdate' = ProjectsJobsUpdate'
    { _pjuXgafv          :: !(Maybe Text)
    , _pjuQuotaUser      :: !(Maybe Text)
    , _pjuPrettyPrint    :: !Bool
    , _pjuJobId          :: !Text
    , _pjuUploadProtocol :: !(Maybe Text)
    , _pjuPp             :: !Bool
    , _pjuAccessToken    :: !(Maybe Text)
    , _pjuUploadType     :: !(Maybe Text)
    , _pjuBearerToken    :: !(Maybe Text)
    , _pjuKey            :: !(Maybe Text)
    , _pjuProjectId      :: !Text
    , _pjuOauthToken     :: !(Maybe Text)
    , _pjuFields         :: !(Maybe Text)
    , _pjuCallback       :: !(Maybe Text)
    , _pjuAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjuXgafv'
--
-- * 'pjuQuotaUser'
--
-- * 'pjuPrettyPrint'
--
-- * 'pjuJobId'
--
-- * 'pjuUploadProtocol'
--
-- * 'pjuPp'
--
-- * 'pjuAccessToken'
--
-- * 'pjuUploadType'
--
-- * 'pjuBearerToken'
--
-- * 'pjuKey'
--
-- * 'pjuProjectId'
--
-- * 'pjuOauthToken'
--
-- * 'pjuFields'
--
-- * 'pjuCallback'
--
-- * 'pjuAlt'
projectsJobsUpdate'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsUpdate'
projectsJobsUpdate' pPjuJobId_ pPjuProjectId_ =
    ProjectsJobsUpdate'
    { _pjuXgafv = Nothing
    , _pjuQuotaUser = Nothing
    , _pjuPrettyPrint = True
    , _pjuJobId = pPjuJobId_
    , _pjuUploadProtocol = Nothing
    , _pjuPp = True
    , _pjuAccessToken = Nothing
    , _pjuUploadType = Nothing
    , _pjuBearerToken = Nothing
    , _pjuKey = Nothing
    , _pjuProjectId = pPjuProjectId_
    , _pjuOauthToken = Nothing
    , _pjuFields = Nothing
    , _pjuCallback = Nothing
    , _pjuAlt = "json"
    }

-- | V1 error format.
pjuXgafv :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuXgafv = lens _pjuXgafv (\ s a -> s{_pjuXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjuQuotaUser :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuQuotaUser
  = lens _pjuQuotaUser (\ s a -> s{_pjuQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjuPrettyPrint :: Lens' ProjectsJobsUpdate' Bool
pjuPrettyPrint
  = lens _pjuPrettyPrint
      (\ s a -> s{_pjuPrettyPrint = a})

-- | Identifies a single job.
pjuJobId :: Lens' ProjectsJobsUpdate' Text
pjuJobId = lens _pjuJobId (\ s a -> s{_pjuJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjuUploadProtocol :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuUploadProtocol
  = lens _pjuUploadProtocol
      (\ s a -> s{_pjuUploadProtocol = a})

-- | Pretty-print response.
pjuPp :: Lens' ProjectsJobsUpdate' Bool
pjuPp = lens _pjuPp (\ s a -> s{_pjuPp = a})

-- | OAuth access token.
pjuAccessToken :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuAccessToken
  = lens _pjuAccessToken
      (\ s a -> s{_pjuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjuUploadType :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuUploadType
  = lens _pjuUploadType
      (\ s a -> s{_pjuUploadType = a})

-- | OAuth bearer token.
pjuBearerToken :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuBearerToken
  = lens _pjuBearerToken
      (\ s a -> s{_pjuBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjuKey :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuKey = lens _pjuKey (\ s a -> s{_pjuKey = a})

-- | The project which owns the job.
pjuProjectId :: Lens' ProjectsJobsUpdate' Text
pjuProjectId
  = lens _pjuProjectId (\ s a -> s{_pjuProjectId = a})

-- | OAuth 2.0 token for the current user.
pjuOauthToken :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuOauthToken
  = lens _pjuOauthToken
      (\ s a -> s{_pjuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjuFields :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuFields
  = lens _pjuFields (\ s a -> s{_pjuFields = a})

-- | JSONP
pjuCallback :: Lens' ProjectsJobsUpdate' (Maybe Text)
pjuCallback
  = lens _pjuCallback (\ s a -> s{_pjuCallback = a})

-- | Data format for response.
pjuAlt :: Lens' ProjectsJobsUpdate' Text
pjuAlt = lens _pjuAlt (\ s a -> s{_pjuAlt = a})

instance GoogleRequest ProjectsJobsUpdate' where
        type Rs ProjectsJobsUpdate' = Job
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsUpdate'{..}
          = go _pjuXgafv _pjuQuotaUser (Just _pjuPrettyPrint)
              _pjuJobId
              _pjuUploadProtocol
              (Just _pjuPp)
              _pjuAccessToken
              _pjuUploadType
              _pjuBearerToken
              _pjuKey
              _pjuProjectId
              _pjuOauthToken
              _pjuFields
              _pjuCallback
              (Just _pjuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsUpdateResource)
                      r
                      u
