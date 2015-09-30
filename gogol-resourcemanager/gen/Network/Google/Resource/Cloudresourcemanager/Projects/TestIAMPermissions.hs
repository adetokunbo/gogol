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
-- Module      : Network.Google.Resource.Cloudresourcemanager.Projects.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Tests the specified permissions against the IAM access control policy
-- for the specified project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudresourcemanagerProjectsTestIAMPermissions@.
module Network.Google.Resource.Cloudresourcemanager.Projects.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsTestIAMPermissions'
    , ProjectsTestIAMPermissions'

    -- * Request Lenses
    , ptipXgafv
    , ptipQuotaUser
    , ptipPrettyPrint
    , ptipUploadProtocol
    , ptipPp
    , ptipAccessToken
    , ptipUploadType
    , ptipBearerToken
    , ptipKey
    , ptipResource
    , ptipOauthToken
    , ptipFields
    , ptipCallback
    , ptipAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudresourcemanagerProjectsTestIAMPermissions@ which the
-- 'ProjectsTestIAMPermissions'' request conforms to.
type ProjectsTestIAMPermissionsResource =
     "v1beta1" :>
       "projects" :>
         "{resource}:testIamPermissions" :>
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
                                   QueryParam "alt" Text :>
                                     Post '[JSON] TestIAMPermissionsResponse

-- | Tests the specified permissions against the IAM access control policy
-- for the specified project.
--
-- /See:/ 'projectsTestIAMPermissions'' smart constructor.
data ProjectsTestIAMPermissions' = ProjectsTestIAMPermissions'
    { _ptipXgafv          :: !(Maybe Text)
    , _ptipQuotaUser      :: !(Maybe Text)
    , _ptipPrettyPrint    :: !Bool
    , _ptipUploadProtocol :: !(Maybe Text)
    , _ptipPp             :: !Bool
    , _ptipAccessToken    :: !(Maybe Text)
    , _ptipUploadType     :: !(Maybe Text)
    , _ptipBearerToken    :: !(Maybe Text)
    , _ptipKey            :: !(Maybe Text)
    , _ptipResource       :: !Text
    , _ptipOauthToken     :: !(Maybe Text)
    , _ptipFields         :: !(Maybe Text)
    , _ptipCallback       :: !(Maybe Text)
    , _ptipAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTestIAMPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptipXgafv'
--
-- * 'ptipQuotaUser'
--
-- * 'ptipPrettyPrint'
--
-- * 'ptipUploadProtocol'
--
-- * 'ptipPp'
--
-- * 'ptipAccessToken'
--
-- * 'ptipUploadType'
--
-- * 'ptipBearerToken'
--
-- * 'ptipKey'
--
-- * 'ptipResource'
--
-- * 'ptipOauthToken'
--
-- * 'ptipFields'
--
-- * 'ptipCallback'
--
-- * 'ptipAlt'
projectsTestIAMPermissions'
    :: Text -- ^ 'resource'
    -> ProjectsTestIAMPermissions'
projectsTestIAMPermissions' pPtipResource_ =
    ProjectsTestIAMPermissions'
    { _ptipXgafv = Nothing
    , _ptipQuotaUser = Nothing
    , _ptipPrettyPrint = True
    , _ptipUploadProtocol = Nothing
    , _ptipPp = True
    , _ptipAccessToken = Nothing
    , _ptipUploadType = Nothing
    , _ptipBearerToken = Nothing
    , _ptipKey = Nothing
    , _ptipResource = pPtipResource_
    , _ptipOauthToken = Nothing
    , _ptipFields = Nothing
    , _ptipCallback = Nothing
    , _ptipAlt = "json"
    }

-- | V1 error format.
ptipXgafv :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipXgafv
  = lens _ptipXgafv (\ s a -> s{_ptipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptipQuotaUser :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipQuotaUser
  = lens _ptipQuotaUser
      (\ s a -> s{_ptipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptipPrettyPrint :: Lens' ProjectsTestIAMPermissions' Bool
ptipPrettyPrint
  = lens _ptipPrettyPrint
      (\ s a -> s{_ptipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptipUploadProtocol :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipUploadProtocol
  = lens _ptipUploadProtocol
      (\ s a -> s{_ptipUploadProtocol = a})

-- | Pretty-print response.
ptipPp :: Lens' ProjectsTestIAMPermissions' Bool
ptipPp = lens _ptipPp (\ s a -> s{_ptipPp = a})

-- | OAuth access token.
ptipAccessToken :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipAccessToken
  = lens _ptipAccessToken
      (\ s a -> s{_ptipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptipUploadType :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipUploadType
  = lens _ptipUploadType
      (\ s a -> s{_ptipUploadType = a})

-- | OAuth bearer token.
ptipBearerToken :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipBearerToken
  = lens _ptipBearerToken
      (\ s a -> s{_ptipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptipKey :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipKey = lens _ptipKey (\ s a -> s{_ptipKey = a})

-- | REQUIRED: The resource for which policy detail is being requested.
-- \`resource\` is usually specified as a path, such as,
-- \`projects\/{project}\`.
ptipResource :: Lens' ProjectsTestIAMPermissions' Text
ptipResource
  = lens _ptipResource (\ s a -> s{_ptipResource = a})

-- | OAuth 2.0 token for the current user.
ptipOauthToken :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipOauthToken
  = lens _ptipOauthToken
      (\ s a -> s{_ptipOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptipFields :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipFields
  = lens _ptipFields (\ s a -> s{_ptipFields = a})

-- | JSONP
ptipCallback :: Lens' ProjectsTestIAMPermissions' (Maybe Text)
ptipCallback
  = lens _ptipCallback (\ s a -> s{_ptipCallback = a})

-- | Data format for response.
ptipAlt :: Lens' ProjectsTestIAMPermissions' Text
ptipAlt = lens _ptipAlt (\ s a -> s{_ptipAlt = a})

instance GoogleRequest ProjectsTestIAMPermissions'
         where
        type Rs ProjectsTestIAMPermissions' =
             TestIAMPermissionsResponse
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsTestIAMPermissions'{..}
          = go _ptipXgafv _ptipQuotaUser
              (Just _ptipPrettyPrint)
              _ptipUploadProtocol
              (Just _ptipPp)
              _ptipAccessToken
              _ptipUploadType
              _ptipBearerToken
              _ptipKey
              _ptipResource
              _ptipOauthToken
              _ptipFields
              _ptipCallback
              (Just _ptipAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTestIAMPermissionsResource)
                      r
                      u
