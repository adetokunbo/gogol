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
-- Module      : Network.Google.Resource.Storage.Buckets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of buckets for a given project.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageBucketsList@.
module Network.Google.Resource.Storage.Buckets.List
    (
    -- * REST Resource
      BucketsListResource

    -- * Creating a Request
    , bucketsList'
    , BucketsList'

    -- * Request Lenses
    , blQuotaUser
    , blPrettyPrint
    , blProject
    , blUserIp
    , blKey
    , blProjection
    , blPageToken
    , blOauthToken
    , blMaxResults
    , blFields
    , blAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketsList@ which the
-- 'BucketsList'' request conforms to.
type BucketsListResource =
     "b" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "project" Text :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "projection" StorageBucketsListProjection
                   :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Buckets

-- | Retrieves a list of buckets for a given project.
--
-- /See:/ 'bucketsList'' smart constructor.
data BucketsList' = BucketsList'
    { _blQuotaUser   :: !(Maybe Text)
    , _blPrettyPrint :: !Bool
    , _blProject     :: !Text
    , _blUserIp      :: !(Maybe Text)
    , _blKey         :: !(Maybe Text)
    , _blProjection  :: !(Maybe StorageBucketsListProjection)
    , _blPageToken   :: !(Maybe Text)
    , _blOauthToken  :: !(Maybe Text)
    , _blMaxResults  :: !(Maybe Word32)
    , _blFields      :: !(Maybe Text)
    , _blAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blQuotaUser'
--
-- * 'blPrettyPrint'
--
-- * 'blProject'
--
-- * 'blUserIp'
--
-- * 'blKey'
--
-- * 'blProjection'
--
-- * 'blPageToken'
--
-- * 'blOauthToken'
--
-- * 'blMaxResults'
--
-- * 'blFields'
--
-- * 'blAlt'
bucketsList'
    :: Text -- ^ 'project'
    -> BucketsList'
bucketsList' pBlProject_ =
    BucketsList'
    { _blQuotaUser = Nothing
    , _blPrettyPrint = True
    , _blProject = pBlProject_
    , _blUserIp = Nothing
    , _blKey = Nothing
    , _blProjection = Nothing
    , _blPageToken = Nothing
    , _blOauthToken = Nothing
    , _blMaxResults = Nothing
    , _blFields = Nothing
    , _blAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
blQuotaUser :: Lens' BucketsList' (Maybe Text)
blQuotaUser
  = lens _blQuotaUser (\ s a -> s{_blQuotaUser = a})

-- | Returns response with indentations and line breaks.
blPrettyPrint :: Lens' BucketsList' Bool
blPrettyPrint
  = lens _blPrettyPrint
      (\ s a -> s{_blPrettyPrint = a})

-- | A valid API project identifier.
blProject :: Lens' BucketsList' Text
blProject
  = lens _blProject (\ s a -> s{_blProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
blUserIp :: Lens' BucketsList' (Maybe Text)
blUserIp = lens _blUserIp (\ s a -> s{_blUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blKey :: Lens' BucketsList' (Maybe Text)
blKey = lens _blKey (\ s a -> s{_blKey = a})

-- | Set of properties to return. Defaults to noAcl.
blProjection :: Lens' BucketsList' (Maybe StorageBucketsListProjection)
blProjection
  = lens _blProjection (\ s a -> s{_blProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
blPageToken :: Lens' BucketsList' (Maybe Text)
blPageToken
  = lens _blPageToken (\ s a -> s{_blPageToken = a})

-- | OAuth 2.0 token for the current user.
blOauthToken :: Lens' BucketsList' (Maybe Text)
blOauthToken
  = lens _blOauthToken (\ s a -> s{_blOauthToken = a})

-- | Maximum number of buckets to return.
blMaxResults :: Lens' BucketsList' (Maybe Word32)
blMaxResults
  = lens _blMaxResults (\ s a -> s{_blMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
blFields :: Lens' BucketsList' (Maybe Text)
blFields = lens _blFields (\ s a -> s{_blFields = a})

-- | Data format for the response.
blAlt :: Lens' BucketsList' Alt
blAlt = lens _blAlt (\ s a -> s{_blAlt = a})

instance GoogleRequest BucketsList' where
        type Rs BucketsList' = Buckets
        request = requestWithRoute defReq storageURL
        requestWithRoute r u BucketsList'{..}
          = go _blQuotaUser (Just _blPrettyPrint)
              (Just _blProject)
              _blUserIp
              _blKey
              _blProjection
              _blPageToken
              _blOauthToken
              _blMaxResults
              _blFields
              (Just _blAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BucketsListResource)
                      r
                      u
