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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of placement groups, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementGroupsList@.
module Network.Google.Resource.DFAReporting.PlacementGroups.List
    (
    -- * REST Resource
      PlacementGroupsListResource

    -- * Creating a Request
    , placementGroupsList'
    , PlacementGroupsList'

    -- * Request Lenses
    , pglPlacementStrategyIds
    , pglQuotaUser
    , pglPrettyPrint
    , pglContentCategoryIds
    , pglMaxEndDate
    , pglUserIp
    , pglCampaignIds
    , pglPricingTypes
    , pglSearchString
    , pglIds
    , pglProfileId
    , pglPlacementGroupType
    , pglDirectorySiteIds
    , pglSortOrder
    , pglKey
    , pglSiteIds
    , pglPageToken
    , pglSortField
    , pglMaxStartDate
    , pglOauthToken
    , pglAdvertiserIds
    , pglMinStartDate
    , pglArchived
    , pglMaxResults
    , pglMinEndDate
    , pglFields
    , pglAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsList@ which the
-- 'PlacementGroupsList'' request conforms to.
type PlacementGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           QueryParams "placementStrategyIds" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParams "contentCategoryIds" Int64 :>
                   QueryParam "maxEndDate" Text :>
                     QueryParam "userIp" Text :>
                       QueryParams "campaignIds" Int64 :>
                         QueryParams "pricingTypes"
                           DfareportingPlacementGroupsListPricingTypes
                           :>
                           QueryParam "searchString" Text :>
                             QueryParams "ids" Int64 :>
                               QueryParam "placementGroupType"
                                 DfareportingPlacementGroupsListPlacementGroupType
                                 :>
                                 QueryParams "directorySiteIds" Int64 :>
                                   QueryParam "sortOrder"
                                     DfareportingPlacementGroupsListSortOrder
                                     :>
                                     QueryParam "key" Text :>
                                       QueryParams "siteIds" Int64 :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "sortField"
                                             DfareportingPlacementGroupsListSortField
                                             :>
                                             QueryParam "maxStartDate" Text :>
                                               QueryParam "oauth_token" Text :>
                                                 QueryParams "advertiserIds"
                                                   Int64
                                                   :>
                                                   QueryParam "minStartDate"
                                                     Text
                                                     :>
                                                     QueryParam "archived" Bool
                                                       :>
                                                       QueryParam "maxResults"
                                                         Int32
                                                         :>
                                                         QueryParam "minEndDate"
                                                           Text
                                                           :>
                                                           QueryParam "fields"
                                                             Text
                                                             :>
                                                             QueryParam "alt"
                                                               Alt
                                                               :>
                                                               Get '[JSON]
                                                                 PlacementGroupsListResponse

-- | Retrieves a list of placement groups, possibly filtered.
--
-- /See:/ 'placementGroupsList'' smart constructor.
data PlacementGroupsList' = PlacementGroupsList'
    { _pglPlacementStrategyIds :: !(Maybe Int64)
    , _pglQuotaUser            :: !(Maybe Text)
    , _pglPrettyPrint          :: !Bool
    , _pglContentCategoryIds   :: !(Maybe Int64)
    , _pglMaxEndDate           :: !(Maybe Text)
    , _pglUserIp               :: !(Maybe Text)
    , _pglCampaignIds          :: !(Maybe Int64)
    , _pglPricingTypes         :: !(Maybe DfareportingPlacementGroupsListPricingTypes)
    , _pglSearchString         :: !(Maybe Text)
    , _pglIds                  :: !(Maybe Int64)
    , _pglProfileId            :: !Int64
    , _pglPlacementGroupType   :: !(Maybe DfareportingPlacementGroupsListPlacementGroupType)
    , _pglDirectorySiteIds     :: !(Maybe Int64)
    , _pglSortOrder            :: !(Maybe DfareportingPlacementGroupsListSortOrder)
    , _pglKey                  :: !(Maybe Text)
    , _pglSiteIds              :: !(Maybe Int64)
    , _pglPageToken            :: !(Maybe Text)
    , _pglSortField            :: !(Maybe DfareportingPlacementGroupsListSortField)
    , _pglMaxStartDate         :: !(Maybe Text)
    , _pglOauthToken           :: !(Maybe Text)
    , _pglAdvertiserIds        :: !(Maybe Int64)
    , _pglMinStartDate         :: !(Maybe Text)
    , _pglArchived             :: !(Maybe Bool)
    , _pglMaxResults           :: !(Maybe Int32)
    , _pglMinEndDate           :: !(Maybe Text)
    , _pglFields               :: !(Maybe Text)
    , _pglAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pglPlacementStrategyIds'
--
-- * 'pglQuotaUser'
--
-- * 'pglPrettyPrint'
--
-- * 'pglContentCategoryIds'
--
-- * 'pglMaxEndDate'
--
-- * 'pglUserIp'
--
-- * 'pglCampaignIds'
--
-- * 'pglPricingTypes'
--
-- * 'pglSearchString'
--
-- * 'pglIds'
--
-- * 'pglProfileId'
--
-- * 'pglPlacementGroupType'
--
-- * 'pglDirectorySiteIds'
--
-- * 'pglSortOrder'
--
-- * 'pglKey'
--
-- * 'pglSiteIds'
--
-- * 'pglPageToken'
--
-- * 'pglSortField'
--
-- * 'pglMaxStartDate'
--
-- * 'pglOauthToken'
--
-- * 'pglAdvertiserIds'
--
-- * 'pglMinStartDate'
--
-- * 'pglArchived'
--
-- * 'pglMaxResults'
--
-- * 'pglMinEndDate'
--
-- * 'pglFields'
--
-- * 'pglAlt'
placementGroupsList'
    :: Int64 -- ^ 'profileId'
    -> PlacementGroupsList'
placementGroupsList' pPglProfileId_ =
    PlacementGroupsList'
    { _pglPlacementStrategyIds = Nothing
    , _pglQuotaUser = Nothing
    , _pglPrettyPrint = True
    , _pglContentCategoryIds = Nothing
    , _pglMaxEndDate = Nothing
    , _pglUserIp = Nothing
    , _pglCampaignIds = Nothing
    , _pglPricingTypes = Nothing
    , _pglSearchString = Nothing
    , _pglIds = Nothing
    , _pglProfileId = pPglProfileId_
    , _pglPlacementGroupType = Nothing
    , _pglDirectorySiteIds = Nothing
    , _pglSortOrder = Nothing
    , _pglKey = Nothing
    , _pglSiteIds = Nothing
    , _pglPageToken = Nothing
    , _pglSortField = Nothing
    , _pglMaxStartDate = Nothing
    , _pglOauthToken = Nothing
    , _pglAdvertiserIds = Nothing
    , _pglMinStartDate = Nothing
    , _pglArchived = Nothing
    , _pglMaxResults = Nothing
    , _pglMinEndDate = Nothing
    , _pglFields = Nothing
    , _pglAlt = JSON
    }

-- | Select only placement groups that are associated with these placement
-- strategies.
pglPlacementStrategyIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglPlacementStrategyIds
  = lens _pglPlacementStrategyIds
      (\ s a -> s{_pglPlacementStrategyIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pglQuotaUser :: Lens' PlacementGroupsList' (Maybe Text)
pglQuotaUser
  = lens _pglQuotaUser (\ s a -> s{_pglQuotaUser = a})

-- | Returns response with indentations and line breaks.
pglPrettyPrint :: Lens' PlacementGroupsList' Bool
pglPrettyPrint
  = lens _pglPrettyPrint
      (\ s a -> s{_pglPrettyPrint = a})

-- | Select only placement groups that are associated with these content
-- categories.
pglContentCategoryIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglContentCategoryIds
  = lens _pglContentCategoryIds
      (\ s a -> s{_pglContentCategoryIds = a})

-- | Select only placements or placement groups whose end date is on or
-- before the specified maxEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMaxEndDate :: Lens' PlacementGroupsList' (Maybe Text)
pglMaxEndDate
  = lens _pglMaxEndDate
      (\ s a -> s{_pglMaxEndDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pglUserIp :: Lens' PlacementGroupsList' (Maybe Text)
pglUserIp
  = lens _pglUserIp (\ s a -> s{_pglUserIp = a})

-- | Select only placement groups that belong to these campaigns.
pglCampaignIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglCampaignIds
  = lens _pglCampaignIds
      (\ s a -> s{_pglCampaignIds = a})

-- | Select only placement groups with these pricing types.
pglPricingTypes :: Lens' PlacementGroupsList' (Maybe DfareportingPlacementGroupsListPricingTypes)
pglPricingTypes
  = lens _pglPricingTypes
      (\ s a -> s{_pglPricingTypes = a})

-- | Allows searching for placement groups by name or ID. Wildcards (*) are
-- allowed. For example, \"placement*2015\" will return placement groups
-- with names like \"placement group June 2015\", \"placement group May
-- 2015\", or simply \"placements 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"placementgroup\" will match placement
-- groups with name \"my placementgroup\", \"placementgroup 2015\", or
-- simply \"placementgroup\".
pglSearchString :: Lens' PlacementGroupsList' (Maybe Text)
pglSearchString
  = lens _pglSearchString
      (\ s a -> s{_pglSearchString = a})

-- | Select only placement groups with these IDs.
pglIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglIds = lens _pglIds (\ s a -> s{_pglIds = a})

-- | User profile ID associated with this request.
pglProfileId :: Lens' PlacementGroupsList' Int64
pglProfileId
  = lens _pglProfileId (\ s a -> s{_pglProfileId = a})

-- | Select only placement groups belonging with this group type. A package
-- is a simple group of placements that acts as a single pricing point for
-- a group of tags. A roadblock is a group of placements that not only acts
-- as a single pricing point but also assumes that all the tags in it will
-- be served at the same time. A roadblock requires one of its assigned
-- placements to be marked as primary for reporting.
pglPlacementGroupType :: Lens' PlacementGroupsList' (Maybe DfareportingPlacementGroupsListPlacementGroupType)
pglPlacementGroupType
  = lens _pglPlacementGroupType
      (\ s a -> s{_pglPlacementGroupType = a})

-- | Select only placement groups that are associated with these directory
-- sites.
pglDirectorySiteIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglDirectorySiteIds
  = lens _pglDirectorySiteIds
      (\ s a -> s{_pglDirectorySiteIds = a})

-- | Order of sorted results, default is ASCENDING.
pglSortOrder :: Lens' PlacementGroupsList' (Maybe DfareportingPlacementGroupsListSortOrder)
pglSortOrder
  = lens _pglSortOrder (\ s a -> s{_pglSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pglKey :: Lens' PlacementGroupsList' (Maybe Text)
pglKey = lens _pglKey (\ s a -> s{_pglKey = a})

-- | Select only placement groups that are associated with these sites.
pglSiteIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglSiteIds
  = lens _pglSiteIds (\ s a -> s{_pglSiteIds = a})

-- | Value of the nextPageToken from the previous result page.
pglPageToken :: Lens' PlacementGroupsList' (Maybe Text)
pglPageToken
  = lens _pglPageToken (\ s a -> s{_pglPageToken = a})

-- | Field by which to sort the list.
pglSortField :: Lens' PlacementGroupsList' (Maybe DfareportingPlacementGroupsListSortField)
pglSortField
  = lens _pglSortField (\ s a -> s{_pglSortField = a})

-- | Select only placements or placement groups whose start date is on or
-- before the specified maxStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMaxStartDate :: Lens' PlacementGroupsList' (Maybe Text)
pglMaxStartDate
  = lens _pglMaxStartDate
      (\ s a -> s{_pglMaxStartDate = a})

-- | OAuth 2.0 token for the current user.
pglOauthToken :: Lens' PlacementGroupsList' (Maybe Text)
pglOauthToken
  = lens _pglOauthToken
      (\ s a -> s{_pglOauthToken = a})

-- | Select only placement groups that belong to these advertisers.
pglAdvertiserIds :: Lens' PlacementGroupsList' (Maybe Int64)
pglAdvertiserIds
  = lens _pglAdvertiserIds
      (\ s a -> s{_pglAdvertiserIds = a})

-- | Select only placements or placement groups whose start date is on or
-- after the specified minStartDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMinStartDate :: Lens' PlacementGroupsList' (Maybe Text)
pglMinStartDate
  = lens _pglMinStartDate
      (\ s a -> s{_pglMinStartDate = a})

-- | Select only archived placements. Don\'t set this field to select both
-- archived and non-archived placements.
pglArchived :: Lens' PlacementGroupsList' (Maybe Bool)
pglArchived
  = lens _pglArchived (\ s a -> s{_pglArchived = a})

-- | Maximum number of results to return.
pglMaxResults :: Lens' PlacementGroupsList' (Maybe Int32)
pglMaxResults
  = lens _pglMaxResults
      (\ s a -> s{_pglMaxResults = a})

-- | Select only placements or placement groups whose end date is on or after
-- the specified minEndDate. The date should be formatted as
-- \"yyyy-MM-dd\".
pglMinEndDate :: Lens' PlacementGroupsList' (Maybe Text)
pglMinEndDate
  = lens _pglMinEndDate
      (\ s a -> s{_pglMinEndDate = a})

-- | Selector specifying which fields to include in a partial response.
pglFields :: Lens' PlacementGroupsList' (Maybe Text)
pglFields
  = lens _pglFields (\ s a -> s{_pglFields = a})

-- | Data format for the response.
pglAlt :: Lens' PlacementGroupsList' Alt
pglAlt = lens _pglAlt (\ s a -> s{_pglAlt = a})

instance GoogleRequest PlacementGroupsList' where
        type Rs PlacementGroupsList' =
             PlacementGroupsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementGroupsList'{..}
          = go _pglPlacementStrategyIds _pglQuotaUser
              (Just _pglPrettyPrint)
              _pglContentCategoryIds
              _pglMaxEndDate
              _pglUserIp
              _pglCampaignIds
              _pglPricingTypes
              _pglSearchString
              _pglIds
              _pglProfileId
              _pglPlacementGroupType
              _pglDirectorySiteIds
              _pglSortOrder
              _pglKey
              _pglSiteIds
              _pglPageToken
              _pglSortField
              _pglMaxStartDate
              _pglOauthToken
              _pglAdvertiserIds
              _pglMinStartDate
              _pglArchived
              _pglMaxResults
              _pglMinEndDate
              _pglFields
              (Just _pglAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementGroupsListResource)
                      r
                      u
