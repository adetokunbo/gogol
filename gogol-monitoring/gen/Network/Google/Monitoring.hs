{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Monitoring
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for accessing Google Cloud and API monitoring data.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference>
module Network.Google.Monitoring
    (
    -- * API
      MonitoringAPI
    , monitoringAPI
    , monitoringURL

    -- * Service Methods

    -- * REST Resources

    -- ** CloudmonitoringMetricDescriptorsCreate
    , module Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Create

    -- ** CloudmonitoringMetricDescriptorsDelete
    , module Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Delete

    -- ** CloudmonitoringMetricDescriptorsList
    , module Network.Google.Resource.Cloudmonitoring.MetricDescriptors.List

    -- ** CloudmonitoringTimeseriesList
    , module Network.Google.Resource.Cloudmonitoring.Timeseries.List

    -- ** CloudmonitoringTimeseriesWrite
    , module Network.Google.Resource.Cloudmonitoring.Timeseries.Write

    -- ** CloudmonitoringTimeseriesDescriptorsList
    , module Network.Google.Resource.Cloudmonitoring.TimeseriesDescriptors.List

    -- * Types

    -- ** MetricDescriptorTypeDescriptor
    , MetricDescriptorTypeDescriptor
    , metricDescriptorTypeDescriptor
    , mdtdMetricType
    , mdtdValueType

    -- ** ListTimeseriesResponse
    , ListTimeseriesResponse
    , listTimeseriesResponse
    , ltrNextPageToken
    , ltrKind
    , ltrOldest
    , ltrYoungest
    , ltrTimeseries

    -- ** MetricDescriptor
    , MetricDescriptor
    , metricDescriptor
    , mdProject
    , mdTypeDescriptor
    , mdName
    , mdLabels
    , mdDescription

    -- ** MetricDescriptorLabelDescriptor
    , MetricDescriptorLabelDescriptor
    , metricDescriptorLabelDescriptor
    , mdldKey
    , mdldDescription

    -- ** PointDistributionUnderflowBucket
    , PointDistributionUnderflowBucket
    , pointDistributionUnderflowBucket
    , pdubUpperBound
    , pdubCount

    -- ** WriteTimeseriesRequestCommonLabels
    , WriteTimeseriesRequestCommonLabels
    , writeTimeseriesRequestCommonLabels

    -- ** WriteTimeseriesRequest
    , WriteTimeseriesRequest
    , writeTimeseriesRequest
    , wtrCommonLabels
    , wtrTimeseries

    -- ** ListMetricDescriptorsResponse
    , ListMetricDescriptorsResponse
    , listMetricDescriptorsResponse
    , lmdrMetrics
    , lmdrNextPageToken
    , lmdrKind

    -- ** ListTimeseriesDescriptorsRequest
    , ListTimeseriesDescriptorsRequest
    , listTimeseriesDescriptorsRequest
    , ltdrKind

    -- ** WriteTimeseriesResponse
    , WriteTimeseriesResponse
    , writeTimeseriesResponse
    , wtrKind

    -- ** TimeseriesDescriptorLabels
    , TimeseriesDescriptorLabels
    , timeseriesDescriptorLabels

    -- ** PointDistributionBucket
    , PointDistributionBucket
    , pointDistributionBucket
    , pdbUpperBound
    , pdbCount
    , pdbLowerBound

    -- ** CloudmonitoringTimeseriesListAggregator
    , CloudmonitoringTimeseriesListAggregator (..)

    -- ** CloudmonitoringTimeseriesDescriptorsListAggregator
    , CloudmonitoringTimeseriesDescriptorsListAggregator (..)

    -- ** TimeseriesDescriptorLabel
    , TimeseriesDescriptorLabel
    , timeseriesDescriptorLabel
    , tdlValue
    , tdlKey

    -- ** PointDistribution
    , PointDistribution
    , pointDistribution
    , pdOverflowBucket
    , pdBuckets
    , pdUnderflowBucket

    -- ** Point
    , Point
    , point
    , pBoolValue
    , pStart
    , pDoubleValue
    , pStringValue
    , pDistributionValue
    , pEnd
    , pInt64Value

    -- ** PointDistributionOverflowBucket
    , PointDistributionOverflowBucket
    , pointDistributionOverflowBucket
    , pdobCount
    , pdobLowerBound

    -- ** ListTimeseriesDescriptorsResponse
    , ListTimeseriesDescriptorsResponse
    , listTimeseriesDescriptorsResponse
    , lNextPageToken
    , lKind
    , lOldest
    , lYoungest
    , lTimeseries

    -- ** ListMetricDescriptorsRequest
    , ListMetricDescriptorsRequest
    , listMetricDescriptorsRequest
    , lisKind

    -- ** TimeseriesPoint
    , TimeseriesPoint
    , timeseriesPoint
    , tpPoint
    , tpTimeseriesDesc

    -- ** TimeseriesDescriptor
    , TimeseriesDescriptor
    , timeseriesDescriptor
    , tdProject
    , tdMetric
    , tdLabels

    -- ** ListTimeseriesRequest
    , ListTimeseriesRequest
    , listTimeseriesRequest
    , ltrtKind

    -- ** DeleteMetricDescriptorResponse
    , DeleteMetricDescriptorResponse
    , deleteMetricDescriptorResponse
    , dmdrKind

    -- ** Timeseries
    , Timeseries
    , timeseries
    , tPoints
    , tTimeseriesDesc

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Create
import           Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Delete
import           Network.Google.Resource.Cloudmonitoring.MetricDescriptors.List
import           Network.Google.Resource.Cloudmonitoring.Timeseries.List
import           Network.Google.Resource.Cloudmonitoring.Timeseries.Write
import           Network.Google.Resource.Cloudmonitoring.TimeseriesDescriptors.List

{- $resources
TODO
-}

type MonitoringAPI =
     MetricDescriptorsListResource :<|>
       MetricDescriptorsCreateResource
       :<|> MetricDescriptorsDeleteResource
       :<|> TimeseriesDescriptorsListResource
       :<|> TimeseriesListResource
       :<|> TimeseriesWriteResource

monitoringAPI :: Proxy MonitoringAPI
monitoringAPI = Proxy
