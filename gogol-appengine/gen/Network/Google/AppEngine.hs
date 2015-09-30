{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngine
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google App Engine Admin API enables developers to provision and
-- manage their App Engine applications.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference>
module Network.Google.AppEngine
    (
    -- * API
      AppEngineAPI
    , appEngineAPI
    , appEngineURL

    -- * Service Methods

    -- * REST Resources

    -- ** AppengineAppsGet
    , module Network.Google.Resource.AppEngine.Apps.Get

    -- ** AppengineAppsModulesDelete
    , module Network.Google.Resource.AppEngine.Apps.Modules.Delete

    -- ** AppengineAppsModulesGet
    , module Network.Google.Resource.AppEngine.Apps.Modules.Get

    -- ** AppengineAppsModulesList
    , module Network.Google.Resource.AppEngine.Apps.Modules.List

    -- ** AppengineAppsModulesPatch
    , module Network.Google.Resource.AppEngine.Apps.Modules.Patch

    -- ** AppengineAppsModulesVersionsCreate
    , module Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create

    -- ** AppengineAppsModulesVersionsDelete
    , module Network.Google.Resource.AppEngine.Apps.Modules.Versions.Delete

    -- ** AppengineAppsModulesVersionsGet
    , module Network.Google.Resource.AppEngine.Apps.Modules.Versions.Get

    -- ** AppengineAppsModulesVersionsList
    , module Network.Google.Resource.AppEngine.Apps.Modules.Versions.List

    -- ** AppengineAppsOperationsGet
    , module Network.Google.Resource.AppEngine.Apps.Operations.Get

    -- ** AppengineAppsOperationsList
    , module Network.Google.Resource.AppEngine.Apps.Operations.List

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** Library
    , Library
    , library
    , lName
    , lVersion

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- ** ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- ** URLMap
    , URLMap
    , uRLMap
    , umScript
    , umSecurityLevel
    , umApiEndpoint
    , umUrlRegex
    , umRedirectHttpResponseCode
    , umAuthFailAction
    , umStaticFiles
    , umLogin
    , umStaticDirectory

    -- ** APIConfigHandler
    , APIConfigHandler
    , aPIConfigHandler
    , achScript
    , achSecurityLevel
    , achUrl
    , achAuthFailAction
    , achLogin

    -- ** Application
    , Application
    , application
    , aLocation
    , aCodeBucket
    , aName
    , aDispatchRules
    , aId

    -- ** VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcDisableHealthCheck
    , hcCheckInterval
    , hcRestartThreshold
    , hcHost
    , hcTimeout
    , hcUnhealthyThreshold

    -- ** URLDispatchRule
    , URLDispatchRule
    , uRLDispatchRule
    , udrPath
    , udrDomain
    , udrModule

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings

    -- ** StaticDirectoryHandlerHTTPHeaders
    , StaticDirectoryHandlerHTTPHeaders
    , staticDirectoryHandlerHTTPHeaders

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** ListModulesResponse
    , ListModulesResponse
    , listModulesResponse
    , lmrNextPageToken
    , lmrModules

    -- ** FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceUrl

    -- ** AutomaticScaling
    , AutomaticScaling
    , automaticScaling
    , asMaxTotalInstances
    , asMinIdleInstances
    , asMinPendingLatency
    , asCpuUtilization
    , asMaxIdleInstances
    , asMinTotalInstances
    , asMaxConcurrentRequests
    , asCoolDownPeriod
    , asMaxPendingLatency

    -- ** APIEndpointHandler
    , APIEndpointHandler
    , aPIEndpointHandler
    , aehScriptPath

    -- ** StatusDetails
    , StatusDetails
    , statusDetails

    -- ** Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- ** Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCpu

    -- ** StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders

    -- ** CPUUtilization
    , CPUUtilization
    , cPUUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- ** DeploymentFiles
    , DeploymentFiles
    , deploymentFiles

    -- ** TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations

    -- ** ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- ** BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- ** Version
    , Version
    , version
    , vCreationTime
    , vRuntime
    , vDeployer
    , vNobuildFilesRegex
    , vInstanceClass
    , vHealthCheck
    , vEnv
    , vDefaultExpiration
    , vAutomaticScaling
    , vErrorHandlers
    , vVm
    , vHandlers
    , vInboundServices
    , vNetwork
    , vResources
    , vName
    , vThreadsafe
    , vBetaSettings
    , vBasicScaling
    , vManualScaling
    , vApiConfig
    , vId
    , vEnvVariables
    , vServingStatus
    , vLibraries
    , vDeployment

    -- ** Module
    , Module
    , module'
    , mSplit
    , mName
    , mId

    -- ** StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHttpHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- ** ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** OperationResponse
    , OperationResponse
    , operationResponse

    -- ** ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- ** Deployment
    , Deployment
    , deployment
    , dContainer
    , dFiles
    , dSourceReferences

    -- ** StaticDirectoryHandler
    , StaticDirectoryHandler
    , staticDirectoryHandler
    , sdhHttpHeaders
    , sdhRequireMatchingFile
    , sdhExpiration
    , sdhMimeType
    , sdhApplicationReadable
    , sdhDirectory
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppEngine.Apps.Get
import           Network.Google.Resource.AppEngine.Apps.Modules.Delete
import           Network.Google.Resource.AppEngine.Apps.Modules.Get
import           Network.Google.Resource.AppEngine.Apps.Modules.List
import           Network.Google.Resource.AppEngine.Apps.Modules.Patch
import           Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create
import           Network.Google.Resource.AppEngine.Apps.Modules.Versions.Delete
import           Network.Google.Resource.AppEngine.Apps.Modules.Versions.Get
import           Network.Google.Resource.AppEngine.Apps.Modules.Versions.List
import           Network.Google.Resource.AppEngine.Apps.Operations.Get
import           Network.Google.Resource.AppEngine.Apps.Operations.List

{- $resources
TODO
-}

type AppEngineAPI =
     AppsModulesVersionsListResource :<|>
       AppsModulesVersionsGetResource
       :<|> AppsModulesVersionsCreateResource
       :<|> AppsModulesVersionsDeleteResource
       :<|> AppsModulesListResource
       :<|> AppsModulesPatchResource
       :<|> AppsModulesGetResource
       :<|> AppsModulesDeleteResource
       :<|> AppsOperationsListResource
       :<|> AppsOperationsGetResource
       :<|> AppsGetResource

appEngineAPI :: Proxy AppEngineAPI
appEngineAPI = Proxy
