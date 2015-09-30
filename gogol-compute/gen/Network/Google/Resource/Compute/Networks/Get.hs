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
-- Module      : Network.Google.Resource.Compute.Networks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified network resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksGet@.
module Network.Google.Resource.Compute.Networks.Get
    (
    -- * REST Resource
      NetworksGetResource

    -- * Creating a Request
    , networksGet'
    , NetworksGet'

    -- * Request Lenses
    , ngQuotaUser
    , ngPrettyPrint
    , ngProject
    , ngUserIp
    , ngNetwork
    , ngKey
    , ngOauthToken
    , ngFields
    , ngAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksGet@ which the
-- 'NetworksGet'' request conforms to.
type NetworksGetResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           Capture "network" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Network

-- | Returns the specified network resource.
--
-- /See:/ 'networksGet'' smart constructor.
data NetworksGet' = NetworksGet'
    { _ngQuotaUser   :: !(Maybe Text)
    , _ngPrettyPrint :: !Bool
    , _ngProject     :: !Text
    , _ngUserIp      :: !(Maybe Text)
    , _ngNetwork     :: !Text
    , _ngKey         :: !(Maybe Text)
    , _ngOauthToken  :: !(Maybe Text)
    , _ngFields      :: !(Maybe Text)
    , _ngAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngQuotaUser'
--
-- * 'ngPrettyPrint'
--
-- * 'ngProject'
--
-- * 'ngUserIp'
--
-- * 'ngNetwork'
--
-- * 'ngKey'
--
-- * 'ngOauthToken'
--
-- * 'ngFields'
--
-- * 'ngAlt'
networksGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'network'
    -> NetworksGet'
networksGet' pNgProject_ pNgNetwork_ =
    NetworksGet'
    { _ngQuotaUser = Nothing
    , _ngPrettyPrint = True
    , _ngProject = pNgProject_
    , _ngUserIp = Nothing
    , _ngNetwork = pNgNetwork_
    , _ngKey = Nothing
    , _ngOauthToken = Nothing
    , _ngFields = Nothing
    , _ngAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ngQuotaUser :: Lens' NetworksGet' (Maybe Text)
ngQuotaUser
  = lens _ngQuotaUser (\ s a -> s{_ngQuotaUser = a})

-- | Returns response with indentations and line breaks.
ngPrettyPrint :: Lens' NetworksGet' Bool
ngPrettyPrint
  = lens _ngPrettyPrint
      (\ s a -> s{_ngPrettyPrint = a})

-- | Project ID for this request.
ngProject :: Lens' NetworksGet' Text
ngProject
  = lens _ngProject (\ s a -> s{_ngProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ngUserIp :: Lens' NetworksGet' (Maybe Text)
ngUserIp = lens _ngUserIp (\ s a -> s{_ngUserIp = a})

-- | Name of the network resource to return.
ngNetwork :: Lens' NetworksGet' Text
ngNetwork
  = lens _ngNetwork (\ s a -> s{_ngNetwork = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ngKey :: Lens' NetworksGet' (Maybe Text)
ngKey = lens _ngKey (\ s a -> s{_ngKey = a})

-- | OAuth 2.0 token for the current user.
ngOauthToken :: Lens' NetworksGet' (Maybe Text)
ngOauthToken
  = lens _ngOauthToken (\ s a -> s{_ngOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ngFields :: Lens' NetworksGet' (Maybe Text)
ngFields = lens _ngFields (\ s a -> s{_ngFields = a})

-- | Data format for the response.
ngAlt :: Lens' NetworksGet' Alt
ngAlt = lens _ngAlt (\ s a -> s{_ngAlt = a})

instance GoogleRequest NetworksGet' where
        type Rs NetworksGet' = Network
        request = requestWithRoute defReq computeURL
        requestWithRoute r u NetworksGet'{..}
          = go _ngQuotaUser (Just _ngPrettyPrint) _ngProject
              _ngUserIp
              _ngNetwork
              _ngKey
              _ngOauthToken
              _ngFields
              (Just _ngAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NetworksGetResource)
                      r
                      u
