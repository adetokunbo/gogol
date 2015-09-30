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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Resume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resumes a transfer operation that is paused.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StoragetransferTransferOperationsResume@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Resume
    (
    -- * REST Resource
      TransferOperationsResumeResource

    -- * Creating a Request
    , transferOperationsResume'
    , TransferOperationsResume'

    -- * Request Lenses
    , torXgafv
    , torQuotaUser
    , torPrettyPrint
    , torUploadProtocol
    , torPp
    , torAccessToken
    , torUploadType
    , torBearerToken
    , torKey
    , torName
    , torOauthToken
    , torFields
    , torCallback
    , torAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StoragetransferTransferOperationsResume@ which the
-- 'TransferOperationsResume'' request conforms to.
type TransferOperationsResumeResource =
     "v1" :>
       "{+name}:resume" :>
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
                                 QueryParam "alt" Text :> Post '[JSON] Empty

-- | Resumes a transfer operation that is paused.
--
-- /See:/ 'transferOperationsResume'' smart constructor.
data TransferOperationsResume' = TransferOperationsResume'
    { _torXgafv          :: !(Maybe Text)
    , _torQuotaUser      :: !(Maybe Text)
    , _torPrettyPrint    :: !Bool
    , _torUploadProtocol :: !(Maybe Text)
    , _torPp             :: !Bool
    , _torAccessToken    :: !(Maybe Text)
    , _torUploadType     :: !(Maybe Text)
    , _torBearerToken    :: !(Maybe Text)
    , _torKey            :: !(Maybe Text)
    , _torName           :: !Text
    , _torOauthToken     :: !(Maybe Text)
    , _torFields         :: !(Maybe Text)
    , _torCallback       :: !(Maybe Text)
    , _torAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsResume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'torXgafv'
--
-- * 'torQuotaUser'
--
-- * 'torPrettyPrint'
--
-- * 'torUploadProtocol'
--
-- * 'torPp'
--
-- * 'torAccessToken'
--
-- * 'torUploadType'
--
-- * 'torBearerToken'
--
-- * 'torKey'
--
-- * 'torName'
--
-- * 'torOauthToken'
--
-- * 'torFields'
--
-- * 'torCallback'
--
-- * 'torAlt'
transferOperationsResume'
    :: Text -- ^ 'name'
    -> TransferOperationsResume'
transferOperationsResume' pTorName_ =
    TransferOperationsResume'
    { _torXgafv = Nothing
    , _torQuotaUser = Nothing
    , _torPrettyPrint = True
    , _torUploadProtocol = Nothing
    , _torPp = True
    , _torAccessToken = Nothing
    , _torUploadType = Nothing
    , _torBearerToken = Nothing
    , _torKey = Nothing
    , _torName = pTorName_
    , _torOauthToken = Nothing
    , _torFields = Nothing
    , _torCallback = Nothing
    , _torAlt = "json"
    }

-- | V1 error format.
torXgafv :: Lens' TransferOperationsResume' (Maybe Text)
torXgafv = lens _torXgafv (\ s a -> s{_torXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
torQuotaUser :: Lens' TransferOperationsResume' (Maybe Text)
torQuotaUser
  = lens _torQuotaUser (\ s a -> s{_torQuotaUser = a})

-- | Returns response with indentations and line breaks.
torPrettyPrint :: Lens' TransferOperationsResume' Bool
torPrettyPrint
  = lens _torPrettyPrint
      (\ s a -> s{_torPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
torUploadProtocol :: Lens' TransferOperationsResume' (Maybe Text)
torUploadProtocol
  = lens _torUploadProtocol
      (\ s a -> s{_torUploadProtocol = a})

-- | Pretty-print response.
torPp :: Lens' TransferOperationsResume' Bool
torPp = lens _torPp (\ s a -> s{_torPp = a})

-- | OAuth access token.
torAccessToken :: Lens' TransferOperationsResume' (Maybe Text)
torAccessToken
  = lens _torAccessToken
      (\ s a -> s{_torAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
torUploadType :: Lens' TransferOperationsResume' (Maybe Text)
torUploadType
  = lens _torUploadType
      (\ s a -> s{_torUploadType = a})

-- | OAuth bearer token.
torBearerToken :: Lens' TransferOperationsResume' (Maybe Text)
torBearerToken
  = lens _torBearerToken
      (\ s a -> s{_torBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
torKey :: Lens' TransferOperationsResume' (Maybe Text)
torKey = lens _torKey (\ s a -> s{_torKey = a})

-- | The name of the transfer operation. Required.
torName :: Lens' TransferOperationsResume' Text
torName = lens _torName (\ s a -> s{_torName = a})

-- | OAuth 2.0 token for the current user.
torOauthToken :: Lens' TransferOperationsResume' (Maybe Text)
torOauthToken
  = lens _torOauthToken
      (\ s a -> s{_torOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
torFields :: Lens' TransferOperationsResume' (Maybe Text)
torFields
  = lens _torFields (\ s a -> s{_torFields = a})

-- | JSONP
torCallback :: Lens' TransferOperationsResume' (Maybe Text)
torCallback
  = lens _torCallback (\ s a -> s{_torCallback = a})

-- | Data format for response.
torAlt :: Lens' TransferOperationsResume' Text
torAlt = lens _torAlt (\ s a -> s{_torAlt = a})

instance GoogleRequest TransferOperationsResume'
         where
        type Rs TransferOperationsResume' = Empty
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u TransferOperationsResume'{..}
          = go _torXgafv _torQuotaUser (Just _torPrettyPrint)
              _torUploadProtocol
              (Just _torPp)
              _torAccessToken
              _torUploadType
              _torBearerToken
              _torKey
              _torName
              _torOauthToken
              _torFields
              _torCallback
              (Just _torAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransferOperationsResumeResource)
                      r
                      u
