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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of managed instance groups, and groups them by
-- project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersAggregatedList@.
module Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
    (
    -- * REST Resource
      InstanceGroupManagersAggregatedListResource

    -- * Creating a Request
    , instanceGroupManagersAggregatedList'
    , InstanceGroupManagersAggregatedList'

    -- * Request Lenses
    , igmalQuotaUser
    , igmalPrettyPrint
    , igmalProject
    , igmalUserIp
    , igmalKey
    , igmalFilter
    , igmalPageToken
    , igmalOauthToken
    , igmalMaxResults
    , igmalFields
    , igmalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersAggregatedList@ which the
-- 'InstanceGroupManagersAggregatedList'' request conforms to.
type InstanceGroupManagersAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "instanceGroupManagers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] InstanceGroupManagerAggregatedList

-- | Retrieves the list of managed instance groups, and groups them by
-- project and zone.
--
-- /See:/ 'instanceGroupManagersAggregatedList'' smart constructor.
data InstanceGroupManagersAggregatedList' = InstanceGroupManagersAggregatedList'
    { _igmalQuotaUser   :: !(Maybe Text)
    , _igmalPrettyPrint :: !Bool
    , _igmalProject     :: !Text
    , _igmalUserIp      :: !(Maybe Text)
    , _igmalKey         :: !(Maybe Text)
    , _igmalFilter      :: !(Maybe Text)
    , _igmalPageToken   :: !(Maybe Text)
    , _igmalOauthToken  :: !(Maybe Text)
    , _igmalMaxResults  :: !Word32
    , _igmalFields      :: !(Maybe Text)
    , _igmalAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmalQuotaUser'
--
-- * 'igmalPrettyPrint'
--
-- * 'igmalProject'
--
-- * 'igmalUserIp'
--
-- * 'igmalKey'
--
-- * 'igmalFilter'
--
-- * 'igmalPageToken'
--
-- * 'igmalOauthToken'
--
-- * 'igmalMaxResults'
--
-- * 'igmalFields'
--
-- * 'igmalAlt'
instanceGroupManagersAggregatedList'
    :: Text -- ^ 'project'
    -> InstanceGroupManagersAggregatedList'
instanceGroupManagersAggregatedList' pIgmalProject_ =
    InstanceGroupManagersAggregatedList'
    { _igmalQuotaUser = Nothing
    , _igmalPrettyPrint = True
    , _igmalProject = pIgmalProject_
    , _igmalUserIp = Nothing
    , _igmalKey = Nothing
    , _igmalFilter = Nothing
    , _igmalPageToken = Nothing
    , _igmalOauthToken = Nothing
    , _igmalMaxResults = 500
    , _igmalFields = Nothing
    , _igmalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmalQuotaUser :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalQuotaUser
  = lens _igmalQuotaUser
      (\ s a -> s{_igmalQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmalPrettyPrint :: Lens' InstanceGroupManagersAggregatedList' Bool
igmalPrettyPrint
  = lens _igmalPrettyPrint
      (\ s a -> s{_igmalPrettyPrint = a})

-- | The project ID for this request.
igmalProject :: Lens' InstanceGroupManagersAggregatedList' Text
igmalProject
  = lens _igmalProject (\ s a -> s{_igmalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmalUserIp :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalUserIp
  = lens _igmalUserIp (\ s a -> s{_igmalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmalKey :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalKey = lens _igmalKey (\ s a -> s{_igmalKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
igmalFilter :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalFilter
  = lens _igmalFilter (\ s a -> s{_igmalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igmalPageToken :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalPageToken
  = lens _igmalPageToken
      (\ s a -> s{_igmalPageToken = a})

-- | OAuth 2.0 token for the current user.
igmalOauthToken :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalOauthToken
  = lens _igmalOauthToken
      (\ s a -> s{_igmalOauthToken = a})

-- | Maximum count of results to be returned.
igmalMaxResults :: Lens' InstanceGroupManagersAggregatedList' Word32
igmalMaxResults
  = lens _igmalMaxResults
      (\ s a -> s{_igmalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
igmalFields :: Lens' InstanceGroupManagersAggregatedList' (Maybe Text)
igmalFields
  = lens _igmalFields (\ s a -> s{_igmalFields = a})

-- | Data format for the response.
igmalAlt :: Lens' InstanceGroupManagersAggregatedList' Alt
igmalAlt = lens _igmalAlt (\ s a -> s{_igmalAlt = a})

instance GoogleRequest
         InstanceGroupManagersAggregatedList' where
        type Rs InstanceGroupManagersAggregatedList' =
             InstanceGroupManagerAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersAggregatedList'{..}
          = go _igmalQuotaUser (Just _igmalPrettyPrint)
              _igmalProject
              _igmalUserIp
              _igmalKey
              _igmalFilter
              _igmalPageToken
              _igmalOauthToken
              (Just _igmalMaxResults)
              _igmalFields
              (Just _igmalAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersAggregatedListResource)
                      r
                      u
