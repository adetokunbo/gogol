{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Networks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a network resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksInsert@.
module Compute.Networks.Insert
    (
    -- * REST Resource
      NetworksInsertAPI

    -- * Creating a Request
    , networksInsert
    , NetworksInsert

    -- * Request Lenses
    , niQuotaUser
    , niPrettyPrint
    , niProject
    , niUserIp
    , niKey
    , niOauthToken
    , niFields
    , niAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksInsert@ which the
-- 'NetworksInsert' request conforms to.
type NetworksInsertAPI =
     Capture "project" Text :>
       "global" :> "networks" :> Post '[JSON] Operation

-- | Creates a network resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'networksInsert' smart constructor.
data NetworksInsert = NetworksInsert
    { _niQuotaUser   :: !(Maybe Text)
    , _niPrettyPrint :: !Bool
    , _niProject     :: !Text
    , _niUserIp      :: !(Maybe Text)
    , _niKey         :: !(Maybe Text)
    , _niOauthToken  :: !(Maybe Text)
    , _niFields      :: !(Maybe Text)
    , _niAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niQuotaUser'
--
-- * 'niPrettyPrint'
--
-- * 'niProject'
--
-- * 'niUserIp'
--
-- * 'niKey'
--
-- * 'niOauthToken'
--
-- * 'niFields'
--
-- * 'niAlt'
networksInsert
    :: Text -- ^ 'project'
    -> NetworksInsert
networksInsert pNiProject_ =
    NetworksInsert
    { _niQuotaUser = Nothing
    , _niPrettyPrint = True
    , _niProject = pNiProject_
    , _niUserIp = Nothing
    , _niKey = Nothing
    , _niOauthToken = Nothing
    , _niFields = Nothing
    , _niAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
niQuotaUser :: Lens' NetworksInsert' (Maybe Text)
niQuotaUser
  = lens _niQuotaUser (\ s a -> s{_niQuotaUser = a})

-- | Returns response with indentations and line breaks.
niPrettyPrint :: Lens' NetworksInsert' Bool
niPrettyPrint
  = lens _niPrettyPrint
      (\ s a -> s{_niPrettyPrint = a})

-- | Project ID for this request.
niProject :: Lens' NetworksInsert' Text
niProject
  = lens _niProject (\ s a -> s{_niProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
niUserIp :: Lens' NetworksInsert' (Maybe Text)
niUserIp = lens _niUserIp (\ s a -> s{_niUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
niKey :: Lens' NetworksInsert' (Maybe Text)
niKey = lens _niKey (\ s a -> s{_niKey = a})

-- | OAuth 2.0 token for the current user.
niOauthToken :: Lens' NetworksInsert' (Maybe Text)
niOauthToken
  = lens _niOauthToken (\ s a -> s{_niOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
niFields :: Lens' NetworksInsert' (Maybe Text)
niFields = lens _niFields (\ s a -> s{_niFields = a})

-- | Data format for the response.
niAlt :: Lens' NetworksInsert' Text
niAlt = lens _niAlt (\ s a -> s{_niAlt = a})

instance GoogleRequest NetworksInsert' where
        type Rs NetworksInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u NetworksInsert{..}
          = go _niQuotaUser _niPrettyPrint _niProject _niUserIp
              _niKey
              _niOauthToken
              _niFields
              _niAlt
          where go
                  = clientWithRoute (Proxy :: Proxy NetworksInsertAPI)
                      r
                      u