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
-- Module      : Network.Google.Resource.BigQuery.Tables.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesUpdate@.
module Network.Google.Resource.BigQuery.Tables.Update
    (
    -- * REST Resource
      TablesUpdateResource

    -- * Creating a Request
    , tablesUpdate'
    , TablesUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIp
    , tuKey
    , tuDatasetId
    , tuProjectId
    , tuOauthToken
    , tuTableId
    , tuFields
    , tuAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesUpdate@ which the
-- 'TablesUpdate'' request conforms to.
type TablesUpdateResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Put '[JSON] Table

-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource.
--
-- /See:/ 'tablesUpdate'' smart constructor.
data TablesUpdate' = TablesUpdate'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuUserIp      :: !(Maybe Text)
    , _tuKey         :: !(Maybe Text)
    , _tuDatasetId   :: !Text
    , _tuProjectId   :: !Text
    , _tuOauthToken  :: !(Maybe Text)
    , _tuTableId     :: !Text
    , _tuFields      :: !(Maybe Text)
    , _tuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuDatasetId'
--
-- * 'tuProjectId'
--
-- * 'tuOauthToken'
--
-- * 'tuTableId'
--
-- * 'tuFields'
--
-- * 'tuAlt'
tablesUpdate'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesUpdate'
tablesUpdate' pTuDatasetId_ pTuProjectId_ pTuTableId_ =
    TablesUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuDatasetId = pTuDatasetId_
    , _tuProjectId = pTuProjectId_
    , _tuOauthToken = Nothing
    , _tuTableId = pTuTableId_
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TablesUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TablesUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TablesUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TablesUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | Dataset ID of the table to update
tuDatasetId :: Lens' TablesUpdate' Text
tuDatasetId
  = lens _tuDatasetId (\ s a -> s{_tuDatasetId = a})

-- | Project ID of the table to update
tuProjectId :: Lens' TablesUpdate' Text
tuProjectId
  = lens _tuProjectId (\ s a -> s{_tuProjectId = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TablesUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | Table ID of the table to update
tuTableId :: Lens' TablesUpdate' Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TablesUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TablesUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TablesUpdate' where
        type Rs TablesUpdate' = Table
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIp
              _tuKey
              _tuDatasetId
              _tuProjectId
              _tuOauthToken
              _tuTableId
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesUpdateResource)
                      r
                      u
