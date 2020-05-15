.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

.field public availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field public fullBandAllSingleScanListenerResults:I

.field public hardwareRevision:Ljava/lang/String;

.field public installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

.field public isLocationEnabled:Z

.field public isMacRandomizationOn:Z

.field public isScanningAlwaysEnabled:Z

.field public isWifiNetworksAvailableNotificationOn:Z

.field public numBackgroundScans:I

.field public numClientInterfaceDown:I

.field public numConnectivityOneshotScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numExternalAppOneshotScanRequests:I

.field public numExternalBackgroundAppOneshotScanRequestsThrottled:I

.field public numExternalForegroundAppOneshotScanRequestsThrottled:I

.field public numHalCrashes:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHostapdCrashes:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotHasDfsChannelScans:I

.field public numOneshotScans:I

.field public numOpenNetworkConnectMessageFailedToSend:I

.field public numOpenNetworkRecommendationUpdates:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPasspointProviderInstallSuccess:I

.field public numPasspointProviderInstallation:I

.field public numPasspointProviderUninstallSuccess:I

.field public numPasspointProviderUninstallation:I

.field public numPasspointProviders:I

.field public numPasspointProvidersSuccessfullyConnected:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numRadioModeChangeToDbs:I

.field public numRadioModeChangeToMcc:I

.field public numRadioModeChangeToSbs:I

.field public numRadioModeChangeToScc:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numSetupClientInterfaceFailureDueToHal:I

.field public numSetupClientInterfaceFailureDueToSupplicant:I

.field public numSetupClientInterfaceFailureDueToWificond:I

.field public numSetupSoftApInterfaceFailureDueToHal:I

.field public numSetupSoftApInterfaceFailureDueToHostapd:I

.field public numSetupSoftApInterfaceFailureDueToWificond:I

.field public numSoftApInterfaceDown:I

.field public numSoftApUserBandPreferenceUnsatisfied:I

.field public numSupplicantCrashes:I

.field public numTotalScanResults:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public numWificondCrashes:I

.field public observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public openNetworkRecommenderBlacklistSize:I

.field public partialAllSingleScanListenerResults:I

.field public pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

.field public recordDurationSec:I

.field public rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public scoreExperimentId:Ljava/lang/String;

.field public softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

.field public softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

.field public softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

.field public softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

.field public staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public watchdogTotalConnectionFailureCountAfterTrigger:J

.field public watchdogTriggerToConnectionSuccessDurationMs:J

.field public wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

.field public wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

.field public wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

.field public wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

.field public wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

.field public wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 628
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 630
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    .line 257
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v1, :cond_0

    .line 261
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 263
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 265
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3021
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3015
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 4

    .line 633
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 635
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 636
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 637
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 638
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 640
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 641
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 642
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 643
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 644
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 645
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 646
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 647
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 648
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 649
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 650
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 651
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 652
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 653
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 654
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 655
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 656
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 657
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 658
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 659
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 660
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 661
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 662
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 663
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 664
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 665
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 666
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 667
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 668
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 669
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 670
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 671
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 672
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 673
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 674
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 675
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 676
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 677
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 678
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 679
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 680
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 681
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 682
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 683
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 684
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 685
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 686
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 687
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 688
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 689
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 690
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 691
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 692
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 693
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 694
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 695
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 696
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 697
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 698
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 699
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 700
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 701
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 702
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 703
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 704
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 705
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 706
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 707
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 708
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 709
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 710
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 711
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 712
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 713
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 714
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 715
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 716
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 717
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 718
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 719
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 720
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 721
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 722
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 723
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 724
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 725
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 726
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 727
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 728
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 729
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 730
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 731
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 732
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 733
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 734
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 735
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 736
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 737
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 738
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 739
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 740
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 741
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    .line 742
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 743
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 744
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 745
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 746
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 747
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 748
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 749
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .line 750
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    .line 751
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    .line 752
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 753
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->cachedSize:I

    .line 754
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1295
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1296
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 1297
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1298
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v3, v3, v0

    .line 1299
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v3, :cond_0

    .line 1300
    nop

    .line 1301
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1297
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1305
    .end local v0    # "i":I
    :cond_1
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v1, :cond_3

    .line 1306
    const/4 v1, 0x2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 1307
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1309
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v1, :cond_4

    .line 1310
    const/4 v1, 0x3

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 1311
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1313
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v1, :cond_5

    .line 1314
    const/4 v1, 0x4

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 1315
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1317
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v1, :cond_6

    .line 1318
    const/4 v1, 0x5

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 1319
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1321
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v1, :cond_7

    .line 1322
    const/4 v1, 0x6

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 1323
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1325
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v1, :cond_8

    .line 1326
    const/4 v1, 0x7

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 1327
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1329
    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v1, :cond_9

    .line 1330
    const/16 v1, 0x8

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 1331
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1333
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v1, :cond_a

    .line 1334
    const/16 v1, 0x9

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 1335
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1337
    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v1, :cond_b

    .line 1338
    const/16 v1, 0xa

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 1339
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1341
    :cond_b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v1, :cond_c

    .line 1342
    const/16 v1, 0xb

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 1343
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1345
    :cond_c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v1, :cond_d

    .line 1346
    const/16 v1, 0xc

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 1347
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1349
    :cond_d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v1, :cond_e

    .line 1350
    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 1351
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1353
    :cond_e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v1, :cond_f

    .line 1354
    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 1355
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1357
    :cond_f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v1, :cond_10

    .line 1358
    const/16 v1, 0xf

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 1359
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1361
    :cond_10
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v1

    if-lez v1, :cond_13

    .line 1362
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 1363
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v3, v0

    .line 1364
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_11

    .line 1365
    const/16 v4, 0x10

    .line 1366
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1362
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1370
    .end local v0    # "i":I
    :cond_12
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_13
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v1

    if-lez v1, :cond_16

    .line 1371
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    .line 1372
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v3, v3, v0

    .line 1373
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_14

    .line 1374
    const/16 v4, 0x11

    .line 1375
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1371
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1379
    .end local v0    # "i":I
    :cond_15
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_16
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v1

    if-lez v1, :cond_19

    .line 1380
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_18

    .line 1381
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v3, v0

    .line 1382
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_17

    .line 1383
    const/16 v4, 0x12

    .line 1384
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1380
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1388
    .end local v0    # "i":I
    :cond_18
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v1

    if-lez v1, :cond_1c

    .line 1389
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_1b

    .line 1390
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v3, v3, v0

    .line 1391
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_1a

    .line 1392
    const/16 v4, 0x13

    .line 1393
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1389
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1397
    .end local v0    # "i":I
    :cond_1b
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v1, :cond_1d

    .line 1398
    const/16 v1, 0x14

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 1399
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1401
    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v1, :cond_1e

    .line 1402
    const/16 v1, 0x15

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 1403
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v1, :cond_1f

    .line 1406
    const/16 v1, 0x16

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 1407
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_1f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v1, :cond_20

    .line 1410
    const/16 v1, 0x17

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 1411
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    :cond_20
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v1, :cond_21

    .line 1414
    const/16 v1, 0x18

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 1415
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1417
    :cond_21
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v1, :cond_22

    .line 1418
    const/16 v1, 0x19

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 1419
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1421
    :cond_22
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v1, :cond_23

    .line 1422
    const/16 v1, 0x1a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 1423
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1425
    :cond_23
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v1, :cond_24

    .line 1426
    const/16 v1, 0x1b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 1427
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1429
    :cond_24
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v1, :cond_25

    .line 1430
    const/16 v1, 0x1c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 1431
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1433
    :cond_25
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v1, :cond_26

    .line 1434
    const/16 v1, 0x1d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 1435
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1437
    :cond_26
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v1, :cond_27

    .line 1438
    const/16 v1, 0x1e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 1439
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1441
    :cond_27
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v1, :cond_28

    .line 1442
    const/16 v1, 0x1f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 1443
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1445
    :cond_28
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v1, :cond_29

    .line 1446
    const/16 v1, 0x20

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 1447
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1449
    :cond_29
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v1, :cond_2a

    .line 1450
    const/16 v1, 0x21

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 1451
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1453
    :cond_2a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v1, :cond_2b

    .line 1454
    const/16 v1, 0x22

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 1455
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1457
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v1

    if-lez v1, :cond_2e

    .line 1458
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    .line 1459
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v3, v3, v0

    .line 1460
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_2c

    .line 1461
    const/16 v4, 0x23

    .line 1462
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1458
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1466
    .end local v0    # "i":I
    :cond_2d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_2e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v1, :cond_2f

    .line 1467
    const/16 v1, 0x24

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 1468
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_2f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v1, :cond_30

    .line 1471
    const/16 v1, 0x25

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 1472
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_30
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v1, :cond_31

    .line 1475
    const/16 v1, 0x26

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 1476
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_31
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v1, :cond_32

    .line 1479
    const/16 v1, 0x27

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 1480
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_32
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v1, :cond_33

    .line 1483
    const/16 v1, 0x28

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 1484
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1486
    :cond_33
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v1, :cond_34

    .line 1487
    const/16 v1, 0x29

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 1488
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1490
    :cond_34
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v1, :cond_35

    .line 1491
    const/16 v1, 0x2a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 1492
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1494
    :cond_35
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v1, :cond_36

    .line 1495
    const/16 v1, 0x2b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 1496
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1498
    :cond_36
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v1, :cond_37

    .line 1499
    const/16 v1, 0x2c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 1500
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1502
    :cond_37
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v1, :cond_38

    .line 1503
    const/16 v1, 0x2d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 1504
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1506
    :cond_38
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v1, :cond_39

    .line 1507
    const/16 v1, 0x2e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 1508
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1510
    :cond_39
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v1, v1

    if-lez v1, :cond_3c

    .line 1511
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v3, v3

    if-ge v0, v3, :cond_3b

    .line 1512
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v3, v3, v0

    .line 1513
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v3, :cond_3a

    .line 1514
    const/16 v4, 0x2f

    .line 1515
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1511
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1519
    .end local v0    # "i":I
    :cond_3b
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v1, v1

    if-lez v1, :cond_3f

    .line 1520
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v3, v3

    if-ge v0, v3, :cond_3e

    .line 1521
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v3, v3, v0

    .line 1522
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v3, :cond_3d

    .line 1523
    const/16 v4, 0x30

    .line 1524
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1520
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1528
    .end local v0    # "i":I
    :cond_3e
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v1, v1

    if-lez v1, :cond_42

    .line 1529
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_41

    .line 1530
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v3, v3, v0

    .line 1531
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v3, :cond_40

    .line 1532
    const/16 v4, 0x31

    .line 1533
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1529
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1537
    .end local v0    # "i":I
    :cond_41
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v1, v1

    if-lez v1, :cond_45

    .line 1538
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    .line 1539
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v3, v3, v0

    .line 1540
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v3, :cond_43

    .line 1541
    const/16 v4, 0x32

    .line 1542
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1538
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1546
    .end local v0    # "i":I
    :cond_44
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_45
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v1, v1

    if-lez v1, :cond_48

    .line 1547
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    if-ge v0, v3, :cond_47

    .line 1548
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v3, v3, v0

    .line 1549
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_46

    .line 1550
    const/16 v4, 0x33

    .line 1551
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1547
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1555
    .end local v0    # "i":I
    :cond_47
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_48
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v1, v1

    if-lez v1, :cond_4b

    .line 1556
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_4a

    .line 1557
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v3, v3, v0

    .line 1558
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v3, :cond_49

    .line 1559
    const/16 v4, 0x34

    .line 1560
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1556
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1564
    .end local v0    # "i":I
    :cond_4a
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_4b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v1, :cond_4c

    .line 1565
    const/16 v1, 0x35

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 1566
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1568
    :cond_4c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v1, :cond_4d

    .line 1569
    const/16 v1, 0x36

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 1570
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1572
    :cond_4d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    if-eqz v1, :cond_4e

    .line 1573
    const/16 v1, 0x37

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 1574
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_4e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    if-eqz v1, :cond_4f

    .line 1577
    const/16 v1, 0x38

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 1578
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1580
    :cond_4f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v1, :cond_50

    .line 1581
    const/16 v1, 0x39

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 1582
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1584
    :cond_50
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v1, :cond_51

    .line 1585
    const/16 v1, 0x3a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 1586
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1588
    :cond_51
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v1, :cond_52

    .line 1589
    const/16 v1, 0x3b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 1590
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1592
    :cond_52
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v1, :cond_53

    .line 1593
    const/16 v1, 0x3c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 1594
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1596
    :cond_53
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v1, :cond_54

    .line 1597
    const/16 v1, 0x3d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 1598
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1600
    :cond_54
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v1, :cond_55

    .line 1601
    const/16 v1, 0x3e

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 1602
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    :cond_55
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v1, :cond_56

    .line 1605
    const/16 v1, 0x3f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 1606
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1608
    :cond_56
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_59

    .line 1609
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_58

    .line 1610
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1611
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_57

    .line 1612
    const/16 v4, 0x40

    .line 1613
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1609
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1617
    .end local v0    # "i":I
    :cond_58
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_59
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_5c

    .line 1618
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_5b

    .line 1619
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1620
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5a

    .line 1621
    const/16 v4, 0x41

    .line 1622
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1618
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1626
    .end local v0    # "i":I
    :cond_5b
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_5f

    .line 1627
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_5e

    .line 1628
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1629
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5d

    .line 1630
    const/16 v4, 0x42

    .line 1631
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1627
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1635
    .end local v0    # "i":I
    :cond_5e
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_62

    .line 1636
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_61

    .line 1637
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1638
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_60

    .line 1639
    const/16 v4, 0x43

    .line 1640
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1636
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1644
    .end local v0    # "i":I
    :cond_61
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_62
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_65

    .line 1645
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_64

    .line 1646
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1647
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_63

    .line 1648
    const/16 v4, 0x44

    .line 1649
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1645
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1653
    .end local v0    # "i":I
    :cond_64
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_65
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_68

    .line 1654
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_67

    .line 1655
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1656
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_66

    .line 1657
    const/16 v4, 0x45

    .line 1658
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1654
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1662
    .end local v0    # "i":I
    :cond_67
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_68
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_6b

    .line 1663
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_12
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_6a

    .line 1664
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1665
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_69

    .line 1666
    const/16 v4, 0x46

    .line 1667
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1663
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1671
    .end local v0    # "i":I
    :cond_6a
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_6b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_6e

    .line 1672
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_13
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_6d

    .line 1673
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1674
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_6c

    .line 1675
    const/16 v4, 0x47

    .line 1676
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1672
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1680
    .end local v0    # "i":I
    :cond_6d
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_6e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_71

    .line 1681
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_70

    .line 1682
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1683
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_6f

    .line 1684
    const/16 v4, 0x48

    .line 1685
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1681
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1689
    .end local v0    # "i":I
    :cond_70
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_71
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_74

    .line 1690
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_73

    .line 1691
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1692
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_72

    .line 1693
    const/16 v4, 0x49

    .line 1694
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1690
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1698
    .end local v0    # "i":I
    :cond_73
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_74
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v1, :cond_75

    .line 1699
    const/16 v1, 0x4a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 1700
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1702
    :cond_75
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v1, :cond_76

    .line 1703
    const/16 v1, 0x4b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 1704
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1706
    :cond_76
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v1, :cond_77

    .line 1707
    const/16 v1, 0x4c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 1708
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1710
    :cond_77
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v1, v1

    if-lez v1, :cond_7a

    .line 1711
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_16
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    if-ge v0, v3, :cond_79

    .line 1712
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v3, v3, v0

    .line 1713
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_78

    .line 1714
    const/16 v4, 0x4d

    .line 1715
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1711
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1719
    .end local v0    # "i":I
    :cond_79
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_7a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v1, v1

    if-lez v1, :cond_7d

    .line 1720
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_17
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    if-ge v0, v3, :cond_7c

    .line 1721
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v3, v3, v0

    .line 1722
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_7b

    .line 1723
    const/16 v4, 0x4e

    .line 1724
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1720
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1728
    .end local v0    # "i":I
    :cond_7c
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_7d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v1, :cond_7e

    .line 1729
    const/16 v1, 0x4f

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 1730
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1732
    :cond_7e
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v1, :cond_7f

    .line 1733
    const/16 v1, 0x50

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 1734
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1736
    :cond_7f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v1, :cond_80

    .line 1737
    const/16 v1, 0x51

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 1738
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1740
    :cond_80
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v1, :cond_81

    .line 1741
    const/16 v1, 0x52

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 1742
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1744
    :cond_81
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_84

    .line 1745
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_18
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_83

    .line 1746
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1747
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_82

    .line 1748
    const/16 v4, 0x53

    .line 1749
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1745
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1753
    .end local v0    # "i":I
    :cond_83
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_84
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_87

    .line 1754
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_19
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_86

    .line 1755
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1756
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_85

    .line 1757
    const/16 v4, 0x54

    .line 1758
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1754
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1762
    .end local v0    # "i":I
    :cond_86
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_87
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_8a

    .line 1763
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_89

    .line 1764
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1765
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_88

    .line 1766
    const/16 v4, 0x55

    .line 1767
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1763
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1771
    .end local v0    # "i":I
    :cond_89
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_8a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_8d

    .line 1772
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_8c

    .line 1773
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1774
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_8b

    .line 1775
    const/16 v4, 0x56

    .line 1776
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1772
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1780
    .end local v0    # "i":I
    :cond_8c
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_8d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_90

    .line 1781
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_8f

    .line 1782
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1783
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_8e

    .line 1784
    const/16 v4, 0x57

    .line 1785
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1781
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1789
    .end local v0    # "i":I
    :cond_8f
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_90
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_93

    .line 1790
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_92

    .line 1791
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1792
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_91

    .line 1793
    const/16 v4, 0x58

    .line 1794
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1790
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1798
    .end local v0    # "i":I
    :cond_92
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_93
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v1, v1

    if-lez v1, :cond_96

    .line 1799
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_95

    .line 1800
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v3, v3, v0

    .line 1801
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_94

    .line 1802
    const/16 v4, 0x59

    .line 1803
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1799
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1807
    .end local v0    # "i":I
    :cond_95
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_96
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v1, v1

    if-lez v1, :cond_99

    .line 1808
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_1f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    if-ge v0, v3, :cond_98

    .line 1809
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v3, v3, v0

    .line 1810
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_97

    .line 1811
    const/16 v4, 0x5a

    .line 1812
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1808
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1816
    .end local v0    # "i":I
    :cond_98
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_99
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-eqz v1, :cond_9a

    .line 1817
    const/16 v1, 0x5b

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 1818
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1820
    :cond_9a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-eqz v1, :cond_9b

    .line 1821
    const/16 v1, 0x5c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 1822
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1824
    :cond_9b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    if-eqz v1, :cond_9c

    .line 1825
    const/16 v1, 0x5d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 1826
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1828
    :cond_9c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-eqz v1, :cond_9d

    .line 1829
    const/16 v1, 0x5e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 1830
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1832
    :cond_9d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v1, v1

    if-lez v1, :cond_a0

    .line 1833
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "size":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_9f

    .line 1834
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v3, v0

    .line 1835
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_9e

    .line 1836
    const/16 v4, 0x5f

    .line 1837
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1833
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1841
    .end local v0    # "i":I
    :cond_9f
    move v0, v1

    .end local v1    # "size":I
    .local v0, "size":I
    :cond_a0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    if-eqz v1, :cond_a1

    .line 1842
    const/16 v1, 0x60

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 1843
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1845
    :cond_a1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    if-eqz v1, :cond_a2

    .line 1846
    const/16 v1, 0x61

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 1847
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1849
    :cond_a2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    if-eqz v1, :cond_a3

    .line 1850
    const/16 v1, 0x62

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 1851
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1853
    :cond_a3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    if-eqz v1, :cond_a4

    .line 1854
    const/16 v1, 0x63

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 1855
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1857
    :cond_a4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    if-eqz v1, :cond_a5

    .line 1858
    const/16 v1, 0x64

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 1859
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1861
    :cond_a5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    if-eqz v1, :cond_a6

    .line 1862
    const/16 v1, 0x65

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 1863
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1865
    :cond_a6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    if-eqz v1, :cond_a7

    .line 1866
    const/16 v1, 0x66

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 1867
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1869
    :cond_a7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    if-eqz v1, :cond_a8

    .line 1870
    const/16 v1, 0x67

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 1871
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1873
    :cond_a8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    if-eqz v1, :cond_a9

    .line 1874
    const/16 v1, 0x68

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 1875
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1877
    :cond_a9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    if-eqz v1, :cond_aa

    .line 1878
    const/16 v1, 0x69

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 1879
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1881
    :cond_aa
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    if-eqz v1, :cond_ab

    .line 1882
    const/16 v1, 0x6a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 1883
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1885
    :cond_ab
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_ac

    .line 1886
    const/16 v1, 0x6b

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 1887
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1889
    :cond_ac
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_ad

    .line 1890
    const/16 v1, 0x6c

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 1891
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1893
    :cond_ad
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    if-eqz v1, :cond_ae

    .line 1894
    const/16 v1, 0x6d

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    .line 1895
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1897
    :cond_ae
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-eqz v1, :cond_af

    .line 1898
    const/16 v1, 0x6e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 1899
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1901
    :cond_af
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    if-eqz v1, :cond_b0

    .line 1902
    const/16 v1, 0x6f

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 1903
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1905
    :cond_b0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    if-eqz v1, :cond_b1

    .line 1906
    const/16 v1, 0x70

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 1907
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1909
    :cond_b1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    if-eqz v1, :cond_b2

    .line 1910
    const/16 v1, 0x71

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 1911
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1913
    :cond_b2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    if-eqz v1, :cond_b3

    .line 1914
    const/16 v1, 0x72

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 1915
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1917
    :cond_b3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    if-eqz v1, :cond_b4

    .line 1918
    const/16 v1, 0x73

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 1919
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1921
    :cond_b4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    if-eqz v1, :cond_b5

    .line 1922
    const/16 v1, 0x74

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 1923
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1925
    :cond_b5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 1926
    const/16 v1, 0x75

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .line 1927
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1929
    :cond_b6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    array-length v1, v1

    if-lez v1, :cond_b8

    .line 1930
    nop

    .local v2, "i":I
    :goto_21
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    array-length v2, v2

    if-ge v1, v2, :cond_b8

    .line 1931
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    aget-object v2, v2, v1

    .line 1932
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    if-eqz v2, :cond_b7

    .line 1933
    const/16 v3, 0x7b

    .line 1934
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1930
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    :cond_b7
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_21

    .line 1938
    .end local v2    # "i":I
    :cond_b8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 1939
    const/16 v1, 0x7c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    .line 1940
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1942
    :cond_b9
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    if-eqz v1, :cond_ba

    .line 1943
    const/16 v1, 0x7d

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 1944
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1946
    :cond_ba
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1954
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1955
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1959
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1960
    return-object p0

    .line 3003
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    if-nez v1, :cond_0

    .line 3004
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    .line 3006
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto/16 :goto_45

    .line 2999
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    .line 3000
    goto/16 :goto_45

    .line 2979
    :sswitch_2
    const/16 v2, 0x3da

    .line 2980
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2981
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    array-length v3, v3

    .line 2982
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    .line 2984
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    if-eqz v3, :cond_2

    .line 2985
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2987
    :cond_2
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    .line 2988
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;-><init>()V

    aput-object v1, v4, v3

    .line 2989
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2990
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2987
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2993
    :cond_3
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;-><init>()V

    aput-object v1, v4, v3

    .line 2994
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2995
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    .line 2996
    goto/16 :goto_45

    .line 2975
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    .line 2976
    goto/16 :goto_45

    .line 2971
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    .line 2972
    goto/16 :goto_45

    .line 2967
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    .line 2968
    goto/16 :goto_45

    .line 2963
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    .line 2964
    goto/16 :goto_45

    .line 2959
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    .line 2960
    goto/16 :goto_45

    .line 2955
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    .line 2956
    goto/16 :goto_45

    .line 2951
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    .line 2952
    goto/16 :goto_45

    .line 2944
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-nez v1, :cond_4

    .line 2945
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    .line 2947
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2948
    goto/16 :goto_45

    .line 2940
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    .line 2941
    goto/16 :goto_45

    .line 2936
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    .line 2937
    goto/16 :goto_45

    .line 2932
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    .line 2933
    goto/16 :goto_45

    .line 2928
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    .line 2929
    goto/16 :goto_45

    .line 2924
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    .line 2925
    goto/16 :goto_45

    .line 2920
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    .line 2921
    goto/16 :goto_45

    .line 2916
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    .line 2917
    goto/16 :goto_45

    .line 2912
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    .line 2913
    goto/16 :goto_45

    .line 2908
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    .line 2909
    goto/16 :goto_45

    .line 2904
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    .line 2905
    goto/16 :goto_45

    .line 2900
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    .line 2901
    goto/16 :goto_45

    .line 2896
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    .line 2897
    goto/16 :goto_45

    .line 2892
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    .line 2893
    goto/16 :goto_45

    .line 2888
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    .line 2889
    goto/16 :goto_45

    .line 2868
    :sswitch_19
    const/16 v2, 0x2fa

    .line 2869
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2870
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2871
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2873
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_6

    .line 2874
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2876
    :cond_6
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_7

    .line 2877
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2878
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2879
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2876
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2882
    :cond_7
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2883
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2884
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2885
    goto/16 :goto_45

    .line 2861
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_1a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-nez v1, :cond_8

    .line 2862
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    .line 2864
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2865
    goto/16 :goto_45

    .line 2857
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    .line 2858
    goto/16 :goto_45

    .line 2850
    :sswitch_1c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v1, :cond_9

    .line 2851
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 2853
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2854
    goto/16 :goto_45

    .line 2843
    :sswitch_1d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-nez v1, :cond_a

    .line 2844
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 2846
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2847
    goto/16 :goto_45

    .line 2823
    :sswitch_1e
    const/16 v2, 0x2d2

    .line 2824
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2825
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    .line 2826
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2828
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_c

    .line 2829
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2831
    :cond_c
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_d

    .line 2832
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2833
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2834
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2831
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2837
    :cond_d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2838
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2839
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2840
    goto/16 :goto_45

    .line 2803
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :sswitch_1f
    const/16 v2, 0x2ca

    .line 2804
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2805
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_7

    :cond_e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v3, v3

    .line 2806
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2808
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v3, :cond_f

    .line 2809
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2811
    :cond_f
    :goto_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_10

    .line 2812
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2813
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2814
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2811
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2817
    :cond_10
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2818
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2819
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 2820
    goto/16 :goto_45

    .line 2783
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :sswitch_20
    const/16 v2, 0x2c2

    .line 2784
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2785
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_11

    move v3, v1

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2786
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2788
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_12

    .line 2789
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2791
    :cond_12
    :goto_a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_13

    .line 2792
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2793
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2794
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2791
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2797
    :cond_13
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2798
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2799
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2800
    goto/16 :goto_45

    .line 2763
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_21
    const/16 v2, 0x2ba

    .line 2764
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2765
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_14

    move v3, v1

    goto :goto_b

    :cond_14
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2766
    .restart local v3    # "i":I
    :goto_b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2768
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_15

    .line 2769
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2771
    :cond_15
    :goto_c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_16

    .line 2772
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2773
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2774
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2771
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2777
    :cond_16
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2778
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2779
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2780
    goto/16 :goto_45

    .line 2743
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_22
    const/16 v2, 0x2b2

    .line 2744
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2745
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_17

    move v3, v1

    goto :goto_d

    :cond_17
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2746
    .restart local v3    # "i":I
    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2748
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_18

    .line 2749
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2751
    :cond_18
    :goto_e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_19

    .line 2752
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2753
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2754
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2751
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2757
    :cond_19
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2758
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2759
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2760
    goto/16 :goto_45

    .line 2723
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_23
    const/16 v2, 0x2aa

    .line 2724
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2725
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_1a

    move v3, v1

    goto :goto_f

    :cond_1a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2726
    .restart local v3    # "i":I
    :goto_f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2728
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_1b

    .line 2729
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2731
    :cond_1b
    :goto_10
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1c

    .line 2732
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2733
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2734
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2731
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2737
    :cond_1c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2738
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2739
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2740
    goto/16 :goto_45

    .line 2703
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_24
    const/16 v2, 0x2a2

    .line 2704
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2705
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_1d

    move v3, v1

    goto :goto_11

    :cond_1d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2706
    .restart local v3    # "i":I
    :goto_11
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2708
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_1e

    .line 2709
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2711
    :cond_1e
    :goto_12
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1f

    .line 2712
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2713
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2714
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2711
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2717
    :cond_1f
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2718
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2719
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2720
    goto/16 :goto_45

    .line 2683
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_25
    const/16 v2, 0x29a

    .line 2684
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2685
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_20

    move v3, v1

    goto :goto_13

    :cond_20
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2686
    .restart local v3    # "i":I
    :goto_13
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2688
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_21

    .line 2689
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2691
    :cond_21
    :goto_14
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_22

    .line 2692
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2693
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2694
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2691
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2697
    :cond_22
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2698
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2699
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2700
    goto/16 :goto_45

    .line 2679
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 2680
    goto/16 :goto_45

    .line 2675
    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 2676
    goto/16 :goto_45

    .line 2671
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 2672
    goto/16 :goto_45

    .line 2667
    :sswitch_29
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 2668
    goto/16 :goto_45

    .line 2647
    :sswitch_2a
    const/16 v2, 0x272

    .line 2648
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2649
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v3, :cond_23

    move v3, v1

    goto :goto_15

    :cond_23
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    .line 2650
    .restart local v3    # "i":I
    :goto_15
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2652
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_24

    .line 2653
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2655
    :cond_24
    :goto_16
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_25

    .line 2656
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2657
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2658
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2655
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2661
    :cond_25
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2662
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2663
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2664
    goto/16 :goto_45

    .line 2627
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :sswitch_2b
    const/16 v2, 0x26a

    .line 2628
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2629
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v3, :cond_26

    move v3, v1

    goto :goto_17

    :cond_26
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v3, v3

    .line 2630
    .restart local v3    # "i":I
    :goto_17
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2632
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v3, :cond_27

    .line 2633
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2635
    :cond_27
    :goto_18
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_28

    .line 2636
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2637
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2638
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2635
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2641
    :cond_28
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 2642
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2643
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2644
    goto/16 :goto_45

    .line 2620
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :sswitch_2c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-nez v1, :cond_29

    .line 2621
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 2623
    :cond_29
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2624
    goto/16 :goto_45

    .line 2616
    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 2617
    goto/16 :goto_45

    .line 2612
    :sswitch_2e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 2613
    goto/16 :goto_45

    .line 2592
    :sswitch_2f
    const/16 v2, 0x24a

    .line 2593
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2594
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_2a

    move v3, v1

    goto :goto_19

    :cond_2a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2595
    .restart local v3    # "i":I
    :goto_19
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2597
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_2b

    .line 2598
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2600
    :cond_2b
    :goto_1a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2c

    .line 2601
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2602
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2603
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2600
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2606
    :cond_2c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2607
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2608
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2609
    goto/16 :goto_45

    .line 2572
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_30
    const/16 v2, 0x242

    .line 2573
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2574
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_2d

    move v3, v1

    goto :goto_1b

    :cond_2d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2575
    .restart local v3    # "i":I
    :goto_1b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2577
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_2e

    .line 2578
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2580
    :cond_2e
    :goto_1c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2f

    .line 2581
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2582
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2583
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2580
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2586
    :cond_2f
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2587
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2588
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2589
    goto/16 :goto_45

    .line 2552
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_31
    const/16 v2, 0x23a

    .line 2553
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2554
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_30

    move v3, v1

    goto :goto_1d

    :cond_30
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2555
    .restart local v3    # "i":I
    :goto_1d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2557
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_31

    .line 2558
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2560
    :cond_31
    :goto_1e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_32

    .line 2561
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2562
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2563
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2560
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2566
    :cond_32
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2567
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2568
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2569
    goto/16 :goto_45

    .line 2532
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_32
    const/16 v2, 0x232

    .line 2533
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2534
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_33

    move v3, v1

    goto :goto_1f

    :cond_33
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2535
    .restart local v3    # "i":I
    :goto_1f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2537
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_34

    .line 2538
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2540
    :cond_34
    :goto_20
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_35

    .line 2541
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2542
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2543
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2540
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2546
    :cond_35
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2547
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2548
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2549
    goto/16 :goto_45

    .line 2512
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_33
    const/16 v2, 0x22a

    .line 2513
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2514
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_36

    move v3, v1

    goto :goto_21

    :cond_36
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2515
    .restart local v3    # "i":I
    :goto_21
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2517
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_37

    .line 2518
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2520
    :cond_37
    :goto_22
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_38

    .line 2521
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2522
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2523
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2520
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 2526
    :cond_38
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2527
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2528
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2529
    goto/16 :goto_45

    .line 2492
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_34
    const/16 v2, 0x222

    .line 2493
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2494
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_39

    move v3, v1

    goto :goto_23

    :cond_39
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2495
    .restart local v3    # "i":I
    :goto_23
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2497
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_3a

    .line 2498
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2500
    :cond_3a
    :goto_24
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3b

    .line 2501
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2502
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2503
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2500
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 2506
    :cond_3b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2507
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2508
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2509
    goto/16 :goto_45

    .line 2472
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_35
    const/16 v2, 0x21a

    .line 2473
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2474
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_3c

    move v3, v1

    goto :goto_25

    :cond_3c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2475
    .restart local v3    # "i":I
    :goto_25
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2477
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_3d

    .line 2478
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2480
    :cond_3d
    :goto_26
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3e

    .line 2481
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2482
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2483
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2480
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2486
    :cond_3e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2487
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2488
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2489
    goto/16 :goto_45

    .line 2452
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_36
    const/16 v2, 0x212

    .line 2453
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2454
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_3f

    move v3, v1

    goto :goto_27

    :cond_3f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2455
    .restart local v3    # "i":I
    :goto_27
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2457
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_40

    .line 2458
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2460
    :cond_40
    :goto_28
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_41

    .line 2461
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2462
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2463
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2460
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2466
    :cond_41
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2467
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2468
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2469
    goto/16 :goto_45

    .line 2432
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_37
    const/16 v2, 0x20a

    .line 2433
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2434
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_42

    move v3, v1

    goto :goto_29

    :cond_42
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2435
    .restart local v3    # "i":I
    :goto_29
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2437
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_43

    .line 2438
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2440
    :cond_43
    :goto_2a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_44

    .line 2441
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2442
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2443
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2440
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2446
    :cond_44
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2447
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2448
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2449
    goto/16 :goto_45

    .line 2412
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_38
    const/16 v2, 0x202

    .line 2413
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2414
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v3, :cond_45

    move v3, v1

    goto :goto_2b

    :cond_45
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v3, v3

    .line 2415
    .restart local v3    # "i":I
    :goto_2b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2417
    .restart local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_46

    .line 2418
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2420
    :cond_46
    :goto_2c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_47

    .line 2421
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2422
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2423
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2420
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2426
    :cond_47
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2427
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2428
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2429
    goto/16 :goto_45

    .line 2408
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 2409
    goto/16 :goto_45

    .line 2404
    :sswitch_3a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 2405
    goto/16 :goto_45

    .line 2400
    :sswitch_3b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 2401
    goto/16 :goto_45

    .line 2396
    :sswitch_3c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 2397
    goto/16 :goto_45

    .line 2392
    :sswitch_3d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 2393
    goto/16 :goto_45

    .line 2388
    :sswitch_3e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 2389
    goto/16 :goto_45

    .line 2381
    :sswitch_3f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v1, :cond_48

    .line 2382
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 2384
    :cond_48
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2385
    goto/16 :goto_45

    .line 2377
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    .line 2378
    goto/16 :goto_45

    .line 2373
    :sswitch_41
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    .line 2374
    goto/16 :goto_45

    .line 2369
    :sswitch_42
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 2370
    goto/16 :goto_45

    .line 2365
    :sswitch_43
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 2366
    goto/16 :goto_45

    .line 2345
    :sswitch_44
    const/16 v2, 0x1a2

    .line 2346
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2347
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v3, :cond_49

    move v3, v1

    goto :goto_2d

    :cond_49
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v3, v3

    .line 2348
    .restart local v3    # "i":I
    :goto_2d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2350
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v3, :cond_4a

    .line 2351
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2353
    :cond_4a
    :goto_2e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4b

    .line 2354
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2355
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2356
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2353
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 2359
    :cond_4b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    .line 2360
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2361
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 2362
    goto/16 :goto_45

    .line 2325
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :sswitch_45
    const/16 v2, 0x19a

    .line 2326
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2327
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v3, :cond_4c

    move v3, v1

    goto :goto_2f

    :cond_4c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    .line 2328
    .restart local v3    # "i":I
    :goto_2f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2330
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_4d

    .line 2331
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2333
    :cond_4d
    :goto_30
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4e

    .line 2334
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2335
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2336
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2333
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 2339
    :cond_4e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2340
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2341
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2342
    goto/16 :goto_45

    .line 2305
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :sswitch_46
    const/16 v2, 0x192

    .line 2306
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2307
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v3, :cond_4f

    move v3, v1

    goto :goto_31

    :cond_4f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v3, v3

    .line 2308
    .restart local v3    # "i":I
    :goto_31
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 2310
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v3, :cond_50

    .line 2311
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2313
    :cond_50
    :goto_32
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_51

    .line 2314
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    .line 2315
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2316
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2313
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 2319
    :cond_51
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    .line 2320
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2321
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 2322
    goto/16 :goto_45

    .line 2285
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :sswitch_47
    const/16 v2, 0x18a

    .line 2286
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2287
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v3, :cond_52

    move v3, v1

    goto :goto_33

    :cond_52
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v3, v3

    .line 2288
    .restart local v3    # "i":I
    :goto_33
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 2290
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v3, :cond_53

    .line 2291
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2293
    :cond_53
    :goto_34
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_54

    .line 2294
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2295
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2296
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2293
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 2299
    :cond_54
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    .line 2300
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2301
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 2302
    goto/16 :goto_45

    .line 2265
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :sswitch_48
    const/16 v2, 0x182

    .line 2266
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2267
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-nez v3, :cond_55

    move v3, v1

    goto :goto_35

    :cond_55
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v3, v3

    .line 2268
    .restart local v3    # "i":I
    :goto_35
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 2270
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v3, :cond_56

    .line 2271
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2273
    :cond_56
    :goto_36
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_57

    .line 2274
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    .line 2275
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2276
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2273
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 2279
    :cond_57
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    .line 2280
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2281
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 2282
    goto/16 :goto_45

    .line 2245
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :sswitch_49
    const/16 v2, 0x17a

    .line 2246
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2247
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v3, :cond_58

    move v3, v1

    goto :goto_37

    :cond_58
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v3, v3

    .line 2248
    .restart local v3    # "i":I
    :goto_37
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 2250
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v3, :cond_59

    .line 2251
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2253
    :cond_59
    :goto_38
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5a

    .line 2254
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    .line 2255
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2256
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2253
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2259
    :cond_5a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    .line 2260
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2261
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 2262
    goto/16 :goto_45

    .line 2241
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :sswitch_4a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 2242
    goto/16 :goto_45

    .line 2237
    :sswitch_4b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 2238
    goto/16 :goto_45

    .line 2233
    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 2234
    goto/16 :goto_45

    .line 2229
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 2230
    goto/16 :goto_45

    .line 2225
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 2226
    goto/16 :goto_45

    .line 2221
    :sswitch_4f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 2222
    goto/16 :goto_45

    .line 2217
    :sswitch_50
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 2218
    goto/16 :goto_45

    .line 2213
    :sswitch_51
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 2214
    goto/16 :goto_45

    .line 2209
    :sswitch_52
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 2210
    goto/16 :goto_45

    .line 2205
    :sswitch_53
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 2206
    goto/16 :goto_45

    .line 2201
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 2202
    goto/16 :goto_45

    .line 2181
    :sswitch_55
    const/16 v2, 0x11a

    .line 2182
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2183
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v3, :cond_5b

    move v3, v1

    goto :goto_39

    :cond_5b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v3, v3

    .line 2184
    .restart local v3    # "i":I
    :goto_39
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2186
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v3, :cond_5c

    .line 2187
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2189
    :cond_5c
    :goto_3a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5d

    .line 2190
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2191
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2192
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2189
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 2195
    :cond_5d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 2196
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2197
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2198
    goto/16 :goto_45

    .line 2177
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :sswitch_56
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 2178
    goto/16 :goto_45

    .line 2173
    :sswitch_57
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 2174
    goto/16 :goto_45

    .line 2169
    :sswitch_58
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 2170
    goto/16 :goto_45

    .line 2165
    :sswitch_59
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 2166
    goto/16 :goto_45

    .line 2161
    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 2162
    goto/16 :goto_45

    .line 2157
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 2158
    goto/16 :goto_45

    .line 2153
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 2154
    goto/16 :goto_45

    .line 2149
    :sswitch_5d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 2150
    goto/16 :goto_45

    .line 2145
    :sswitch_5e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 2146
    goto/16 :goto_45

    .line 2141
    :sswitch_5f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 2142
    goto/16 :goto_45

    .line 2137
    :sswitch_60
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 2138
    goto/16 :goto_45

    .line 2133
    :sswitch_61
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 2134
    goto/16 :goto_45

    .line 2129
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 2130
    goto/16 :goto_45

    .line 2125
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 2126
    goto/16 :goto_45

    .line 2121
    :sswitch_64
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 2122
    goto/16 :goto_45

    .line 2101
    :sswitch_65
    const/16 v2, 0x9a

    .line 2102
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2103
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v3, :cond_5e

    move v3, v1

    goto :goto_3b

    :cond_5e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    .line 2104
    .restart local v3    # "i":I
    :goto_3b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2106
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_5f

    .line 2107
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2109
    :cond_5f
    :goto_3c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_60

    .line 2110
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2111
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2112
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2109
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 2115
    :cond_60
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2116
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2117
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2118
    goto/16 :goto_45

    .line 2081
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_66
    const/16 v2, 0x92

    .line 2082
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2083
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v3, :cond_61

    move v3, v1

    goto :goto_3d

    :cond_61
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    .line 2084
    .restart local v3    # "i":I
    :goto_3d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2086
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_62

    .line 2087
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2089
    :cond_62
    :goto_3e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_63

    .line 2090
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2091
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2092
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2089
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 2095
    :cond_63
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2096
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2097
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2098
    goto/16 :goto_45

    .line 2061
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_67
    const/16 v2, 0x8a

    .line 2062
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2063
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v3, :cond_64

    move v3, v1

    goto :goto_3f

    :cond_64
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v3, v3

    .line 2064
    .restart local v3    # "i":I
    :goto_3f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2066
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v3, :cond_65

    .line 2067
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2069
    :cond_65
    :goto_40
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_66

    .line 2070
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2071
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2072
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2069
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 2075
    :cond_66
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2076
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2077
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 2078
    goto/16 :goto_45

    .line 2041
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_68
    const/16 v2, 0x82

    .line 2042
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2043
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v3, :cond_67

    move v3, v1

    goto :goto_41

    :cond_67
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v3, v3

    .line 2044
    .restart local v3    # "i":I
    :goto_41
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2046
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_68

    .line 2047
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2049
    :cond_68
    :goto_42
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_69

    .line 2050
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2051
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2052
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2049
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 2055
    :cond_69
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 2056
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2057
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 2058
    goto/16 :goto_45

    .line 2037
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_69
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 2038
    goto/16 :goto_45

    .line 2033
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 2034
    goto/16 :goto_45

    .line 2029
    :sswitch_6b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 2030
    goto/16 :goto_45

    .line 2025
    :sswitch_6c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 2026
    goto/16 :goto_45

    .line 2021
    :sswitch_6d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 2022
    goto/16 :goto_45

    .line 2017
    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 2018
    goto/16 :goto_45

    .line 2013
    :sswitch_6f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 2014
    goto/16 :goto_45

    .line 2009
    :sswitch_70
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 2010
    goto/16 :goto_45

    .line 2005
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 2006
    goto :goto_45

    .line 2001
    :sswitch_72
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 2002
    goto :goto_45

    .line 1997
    :sswitch_73
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 1998
    goto :goto_45

    .line 1993
    :sswitch_74
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 1994
    goto :goto_45

    .line 1989
    :sswitch_75
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 1990
    goto :goto_45

    .line 1985
    :sswitch_76
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 1986
    goto :goto_45

    .line 1965
    :sswitch_77
    const/16 v2, 0xa

    .line 1966
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1967
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v3, :cond_6a

    move v3, v1

    goto :goto_43

    :cond_6a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v3, v3

    .line 1968
    .restart local v3    # "i":I
    :goto_43
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 1970
    .local v4, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v3, :cond_6b

    .line 1971
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1973
    :cond_6b
    :goto_44
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6c

    .line 1974
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1975
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1976
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1973
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1979
    :cond_6c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1980
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1981
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 1982
    goto :goto_45

    .line 1957
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :sswitch_78
    return-object p0

    .line 3010
    .end local v0    # "tag":I
    :cond_6d
    :goto_45
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_78
        0xa -> :sswitch_77
        0x10 -> :sswitch_76
        0x18 -> :sswitch_75
        0x20 -> :sswitch_74
        0x28 -> :sswitch_73
        0x30 -> :sswitch_72
        0x38 -> :sswitch_71
        0x40 -> :sswitch_70
        0x48 -> :sswitch_6f
        0x50 -> :sswitch_6e
        0x58 -> :sswitch_6d
        0x60 -> :sswitch_6c
        0x68 -> :sswitch_6b
        0x70 -> :sswitch_6a
        0x78 -> :sswitch_69
        0x82 -> :sswitch_68
        0x8a -> :sswitch_67
        0x92 -> :sswitch_66
        0x9a -> :sswitch_65
        0xa0 -> :sswitch_64
        0xa8 -> :sswitch_63
        0xb0 -> :sswitch_62
        0xb8 -> :sswitch_61
        0xc0 -> :sswitch_60
        0xc8 -> :sswitch_5f
        0xd0 -> :sswitch_5e
        0xd8 -> :sswitch_5d
        0xe0 -> :sswitch_5c
        0xe8 -> :sswitch_5b
        0xf0 -> :sswitch_5a
        0xf8 -> :sswitch_59
        0x100 -> :sswitch_58
        0x108 -> :sswitch_57
        0x110 -> :sswitch_56
        0x11a -> :sswitch_55
        0x120 -> :sswitch_54
        0x128 -> :sswitch_53
        0x130 -> :sswitch_52
        0x138 -> :sswitch_51
        0x140 -> :sswitch_50
        0x148 -> :sswitch_4f
        0x150 -> :sswitch_4e
        0x158 -> :sswitch_4d
        0x160 -> :sswitch_4c
        0x168 -> :sswitch_4b
        0x170 -> :sswitch_4a
        0x17a -> :sswitch_49
        0x182 -> :sswitch_48
        0x18a -> :sswitch_47
        0x192 -> :sswitch_46
        0x19a -> :sswitch_45
        0x1a2 -> :sswitch_44
        0x1a8 -> :sswitch_43
        0x1b0 -> :sswitch_42
        0x1b8 -> :sswitch_41
        0x1c0 -> :sswitch_40
        0x1ca -> :sswitch_3f
        0x1d0 -> :sswitch_3e
        0x1d8 -> :sswitch_3d
        0x1e0 -> :sswitch_3c
        0x1e8 -> :sswitch_3b
        0x1f0 -> :sswitch_3a
        0x1f8 -> :sswitch_39
        0x202 -> :sswitch_38
        0x20a -> :sswitch_37
        0x212 -> :sswitch_36
        0x21a -> :sswitch_35
        0x222 -> :sswitch_34
        0x22a -> :sswitch_33
        0x232 -> :sswitch_32
        0x23a -> :sswitch_31
        0x242 -> :sswitch_30
        0x24a -> :sswitch_2f
        0x250 -> :sswitch_2e
        0x258 -> :sswitch_2d
        0x262 -> :sswitch_2c
        0x26a -> :sswitch_2b
        0x272 -> :sswitch_2a
        0x278 -> :sswitch_29
        0x280 -> :sswitch_28
        0x288 -> :sswitch_27
        0x290 -> :sswitch_26
        0x29a -> :sswitch_25
        0x2a2 -> :sswitch_24
        0x2aa -> :sswitch_23
        0x2b2 -> :sswitch_22
        0x2ba -> :sswitch_21
        0x2c2 -> :sswitch_20
        0x2ca -> :sswitch_1f
        0x2d2 -> :sswitch_1e
        0x2da -> :sswitch_1d
        0x2e2 -> :sswitch_1c
        0x2e8 -> :sswitch_1b
        0x2f2 -> :sswitch_1a
        0x2fa -> :sswitch_19
        0x300 -> :sswitch_18
        0x308 -> :sswitch_17
        0x310 -> :sswitch_16
        0x318 -> :sswitch_15
        0x320 -> :sswitch_14
        0x328 -> :sswitch_13
        0x330 -> :sswitch_12
        0x338 -> :sswitch_11
        0x340 -> :sswitch_10
        0x348 -> :sswitch_f
        0x350 -> :sswitch_e
        0x358 -> :sswitch_d
        0x360 -> :sswitch_c
        0x368 -> :sswitch_b
        0x372 -> :sswitch_a
        0x378 -> :sswitch_9
        0x380 -> :sswitch_8
        0x388 -> :sswitch_7
        0x390 -> :sswitch_6
        0x398 -> :sswitch_5
        0x3a0 -> :sswitch_4
        0x3aa -> :sswitch_3
        0x3da -> :sswitch_2
        0x3e2 -> :sswitch_1
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 761
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 762
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v2, v0

    .line 763
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v2, :cond_0

    .line 764
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 761
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v0, :cond_2

    .line 769
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 771
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v0, :cond_3

    .line 772
    const/4 v0, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 774
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v0, :cond_4

    .line 775
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 777
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v0, :cond_5

    .line 778
    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 780
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v0, :cond_6

    .line 781
    const/4 v0, 0x6

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 783
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v0, :cond_7

    .line 784
    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 786
    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v0, :cond_8

    .line 787
    const/16 v0, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 789
    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v0, :cond_9

    .line 790
    const/16 v0, 0x9

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 792
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v0, :cond_a

    .line 793
    const/16 v0, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 795
    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v0, :cond_b

    .line 796
    const/16 v0, 0xb

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 798
    :cond_b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v0, :cond_c

    .line 799
    const/16 v0, 0xc

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 801
    :cond_c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v0, :cond_d

    .line 802
    const/16 v0, 0xd

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 804
    :cond_d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v0, :cond_e

    .line 805
    const/16 v0, 0xe

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 807
    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v0, :cond_f

    .line 808
    const/16 v0, 0xf

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 810
    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v0, v0

    if-lez v0, :cond_11

    .line 811
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 812
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v2, v2, v0

    .line 813
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v2, :cond_10

    .line 814
    const/16 v3, 0x10

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 811
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 818
    .end local v0    # "i":I
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 819
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 820
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v2, v2, v0

    .line 821
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_12

    .line 822
    const/16 v3, 0x11

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 819
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 826
    .end local v0    # "i":I
    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v0, v0

    if-lez v0, :cond_15

    .line 827
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 828
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v2, v2, v0

    .line 829
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v2, :cond_14

    .line 830
    const/16 v3, 0x12

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 827
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 834
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 835
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 836
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v2, v2, v0

    .line 837
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v2, :cond_16

    .line 838
    const/16 v3, 0x13

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 835
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 842
    .end local v0    # "i":I
    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v0, :cond_18

    .line 843
    const/16 v0, 0x14

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 845
    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v0, :cond_19

    .line 846
    const/16 v0, 0x15

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 848
    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v0, :cond_1a

    .line 849
    const/16 v0, 0x16

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 851
    :cond_1a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v0, :cond_1b

    .line 852
    const/16 v0, 0x17

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 854
    :cond_1b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v0, :cond_1c

    .line 855
    const/16 v0, 0x18

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 857
    :cond_1c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v0, :cond_1d

    .line 858
    const/16 v0, 0x19

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 860
    :cond_1d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v0, :cond_1e

    .line 861
    const/16 v0, 0x1a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 863
    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v0, :cond_1f

    .line 864
    const/16 v0, 0x1b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 866
    :cond_1f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v0, :cond_20

    .line 867
    const/16 v0, 0x1c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 869
    :cond_20
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v0, :cond_21

    .line 870
    const/16 v0, 0x1d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 872
    :cond_21
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v0, :cond_22

    .line 873
    const/16 v0, 0x1e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 875
    :cond_22
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v0, :cond_23

    .line 876
    const/16 v0, 0x1f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 878
    :cond_23
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v0, :cond_24

    .line 879
    const/16 v0, 0x20

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 881
    :cond_24
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v0, :cond_25

    .line 882
    const/16 v0, 0x21

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 884
    :cond_25
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v0, :cond_26

    .line 885
    const/16 v0, 0x22

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 887
    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v0, v0

    if-lez v0, :cond_28

    .line 888
    move v0, v1

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 889
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v2, v0

    .line 890
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    .line 891
    const/16 v3, 0x23

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 888
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 895
    .end local v0    # "i":I
    :cond_28
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v0, :cond_29

    .line 896
    const/16 v0, 0x24

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 898
    :cond_29
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v0, :cond_2a

    .line 899
    const/16 v0, 0x25

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 901
    :cond_2a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v0, :cond_2b

    .line 902
    const/16 v0, 0x26

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 904
    :cond_2b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v0, :cond_2c

    .line 905
    const/16 v0, 0x27

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 907
    :cond_2c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v0, :cond_2d

    .line 908
    const/16 v0, 0x28

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 910
    :cond_2d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v0, :cond_2e

    .line 911
    const/16 v0, 0x29

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 913
    :cond_2e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v0, :cond_2f

    .line 914
    const/16 v0, 0x2a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 916
    :cond_2f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v0, :cond_30

    .line 917
    const/16 v0, 0x2b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 919
    :cond_30
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v0, :cond_31

    .line 920
    const/16 v0, 0x2c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 922
    :cond_31
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v0, :cond_32

    .line 923
    const/16 v0, 0x2d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 925
    :cond_32
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v0, :cond_33

    .line 926
    const/16 v0, 0x2e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 928
    :cond_33
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v0, v0

    if-lez v0, :cond_35

    .line 929
    move v0, v1

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v2, v2

    if-ge v0, v2, :cond_35

    .line 930
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v2, v2, v0

    .line 931
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v2, :cond_34

    .line 932
    const/16 v3, 0x2f

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 929
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 936
    .end local v0    # "i":I
    :cond_35
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v0, v0

    if-lez v0, :cond_37

    .line 937
    move v0, v1

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    .line 938
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v2, v2, v0

    .line 939
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v2, :cond_36

    .line 940
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 937
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 944
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v0, v0

    if-lez v0, :cond_39

    .line 945
    move v0, v1

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    .line 946
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v2, v2, v0

    .line 947
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v2, :cond_38

    .line 948
    const/16 v3, 0x31

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 945
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 952
    .end local v0    # "i":I
    :cond_39
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v0, v0

    if-lez v0, :cond_3b

    .line 953
    move v0, v1

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    .line 954
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v2, v2, v0

    .line 955
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v2, :cond_3a

    .line 956
    const/16 v3, 0x32

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 953
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 960
    .end local v0    # "i":I
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v0, v0

    if-lez v0, :cond_3d

    .line 961
    move v0, v1

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    .line 962
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v2, v2, v0

    .line 963
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_3c

    .line 964
    const/16 v3, 0x33

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 961
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 968
    .end local v0    # "i":I
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v0, v0

    if-lez v0, :cond_3f

    .line 969
    move v0, v1

    .restart local v0    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 970
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v2, v2, v0

    .line 971
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v2, :cond_3e

    .line 972
    const/16 v3, 0x34

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 969
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 976
    .end local v0    # "i":I
    :cond_3f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v0, :cond_40

    .line 977
    const/16 v0, 0x35

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 979
    :cond_40
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v0, :cond_41

    .line 980
    const/16 v0, 0x36

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 982
    :cond_41
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    if-eqz v0, :cond_42

    .line 983
    const/16 v0, 0x37

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToHal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 985
    :cond_42
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    if-eqz v0, :cond_43

    .line 986
    const/16 v0, 0x38

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToWificond:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 988
    :cond_43
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v0, :cond_44

    .line 989
    const/16 v0, 0x39

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 991
    :cond_44
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v0, :cond_45

    .line 992
    const/16 v0, 0x3a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 994
    :cond_45
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v0, :cond_46

    .line 995
    const/16 v0, 0x3b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 997
    :cond_46
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v0, :cond_47

    .line 998
    const/16 v0, 0x3c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1000
    :cond_47
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v0, :cond_48

    .line 1001
    const/16 v0, 0x3d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1003
    :cond_48
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v0, :cond_49

    .line 1004
    const/16 v0, 0x3e

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1006
    :cond_49
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v0, :cond_4a

    .line 1007
    const/16 v0, 0x3f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1009
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_4c

    .line 1010
    move v0, v1

    .restart local v0    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4c

    .line 1011
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1012
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_4b

    .line 1013
    const/16 v3, 0x40

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1010
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1017
    .end local v0    # "i":I
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_4e

    .line 1018
    move v0, v1

    .restart local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4e

    .line 1019
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1020
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_4d

    .line 1021
    const/16 v3, 0x41

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1018
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1025
    .end local v0    # "i":I
    :cond_4e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_50

    .line 1026
    move v0, v1

    .restart local v0    # "i":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_50

    .line 1027
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1028
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_4f

    .line 1029
    const/16 v3, 0x42

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1026
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1033
    .end local v0    # "i":I
    :cond_50
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_52

    .line 1034
    move v0, v1

    .restart local v0    # "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_52

    .line 1035
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1036
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_51

    .line 1037
    const/16 v3, 0x43

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1034
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1041
    .end local v0    # "i":I
    :cond_52
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_54

    .line 1042
    move v0, v1

    .restart local v0    # "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_54

    .line 1043
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1044
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_53

    .line 1045
    const/16 v3, 0x44

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1042
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1049
    .end local v0    # "i":I
    :cond_54
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_56

    .line 1050
    move v0, v1

    .restart local v0    # "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_56

    .line 1051
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1052
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_55

    .line 1053
    const/16 v3, 0x45

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1050
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1057
    .end local v0    # "i":I
    :cond_56
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_58

    .line 1058
    move v0, v1

    .restart local v0    # "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_58

    .line 1059
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1060
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_57

    .line 1061
    const/16 v3, 0x46

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1058
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1065
    .end local v0    # "i":I
    :cond_58
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5a

    .line 1066
    move v0, v1

    .restart local v0    # "i":I
    :goto_13
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5a

    .line 1067
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1068
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_59

    .line 1069
    const/16 v3, 0x47

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1066
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1073
    .end local v0    # "i":I
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5c

    .line 1074
    move v0, v1

    .restart local v0    # "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5c

    .line 1075
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1076
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_5b

    .line 1077
    const/16 v3, 0x48

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1074
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1081
    .end local v0    # "i":I
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_5e

    .line 1082
    move v0, v1

    .restart local v0    # "i":I
    :goto_15
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_5e

    .line 1083
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1084
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_5d

    .line 1085
    const/16 v3, 0x49

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1082
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1089
    .end local v0    # "i":I
    :cond_5e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v0, :cond_5f

    .line 1090
    const/16 v0, 0x4a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1092
    :cond_5f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v0, :cond_60

    .line 1093
    const/16 v0, 0x4b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1095
    :cond_60
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v0, :cond_61

    .line 1096
    const/16 v0, 0x4c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1098
    :cond_61
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v0, v0

    if-lez v0, :cond_63

    .line 1099
    move v0, v1

    .restart local v0    # "i":I
    :goto_16
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v2, v2

    if-ge v0, v2, :cond_63

    .line 1100
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v2, v2, v0

    .line 1101
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v2, :cond_62

    .line 1102
    const/16 v3, 0x4d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1099
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1106
    .end local v0    # "i":I
    :cond_63
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v0, v0

    if-lez v0, :cond_65

    .line 1107
    move v0, v1

    .restart local v0    # "i":I
    :goto_17
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v2, v2

    if-ge v0, v2, :cond_65

    .line 1108
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v2, v2, v0

    .line 1109
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v2, :cond_64

    .line 1110
    const/16 v3, 0x4e

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1107
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1114
    .end local v0    # "i":I
    :cond_65
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v0, :cond_66

    .line 1115
    const/16 v0, 0x4f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1117
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v0, :cond_67

    .line 1118
    const/16 v0, 0x50

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1120
    :cond_67
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v0, :cond_68

    .line 1121
    const/16 v0, 0x51

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1123
    :cond_68
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v0, :cond_69

    .line 1124
    const/16 v0, 0x52

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1126
    :cond_69
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6b

    .line 1127
    move v0, v1

    .restart local v0    # "i":I
    :goto_18
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6b

    .line 1128
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1129
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_6a

    .line 1130
    const/16 v3, 0x53

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1127
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1134
    .end local v0    # "i":I
    :cond_6b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6d

    .line 1135
    move v0, v1

    .restart local v0    # "i":I
    :goto_19
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    .line 1136
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1137
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_6c

    .line 1138
    const/16 v3, 0x54

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1135
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1142
    .end local v0    # "i":I
    :cond_6d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_6f

    .line 1143
    move v0, v1

    .restart local v0    # "i":I
    :goto_1a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6f

    .line 1144
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1145
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_6e

    .line 1146
    const/16 v3, 0x55

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1143
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1150
    .end local v0    # "i":I
    :cond_6f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_71

    .line 1151
    move v0, v1

    .restart local v0    # "i":I
    :goto_1b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_71

    .line 1152
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2EssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1153
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_70

    .line 1154
    const/16 v3, 0x56

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1151
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1158
    .end local v0    # "i":I
    :cond_71
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_73

    .line 1159
    move v0, v1

    .restart local v0    # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_73

    .line 1160
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR1ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1161
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_72

    .line 1162
    const/16 v3, 0x57

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1159
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1166
    .end local v0    # "i":I
    :cond_73
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_75

    .line 1167
    move v0, v1

    .restart local v0    # "i":I
    :goto_1d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_75

    .line 1168
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observedHotspotR2ApsPerEssInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1169
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_74

    .line 1170
    const/16 v3, 0x58

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1167
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1174
    .end local v0    # "i":I
    :cond_75
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v0, v0

    if-lez v0, :cond_77

    .line 1175
    move v0, v1

    .restart local v0    # "i":I
    :goto_1e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_77

    .line 1176
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsTethered:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v2, v2, v0

    .line 1177
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v2, :cond_76

    .line 1178
    const/16 v3, 0x59

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1175
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1182
    .end local v0    # "i":I
    :cond_77
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v0, v0

    if-lez v0, :cond_79

    .line 1183
    move v0, v1

    .restart local v0    # "i":I
    :goto_1f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_79

    .line 1184
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApConnectedClientsEventsLocalOnly:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    aget-object v2, v2, v0

    .line 1185
    .restart local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    if-eqz v2, :cond_78

    .line 1186
    const/16 v3, 0x5a

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1183
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1190
    .end local v0    # "i":I
    :cond_79
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-eqz v0, :cond_7a

    .line 1191
    const/16 v0, 0x5b

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wpsMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1193
    :cond_7a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-eqz v0, :cond_7b

    .line 1194
    const/16 v0, 0x5c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiPowerStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1196
    :cond_7b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    if-eqz v0, :cond_7c

    .line 1197
    const/16 v0, 0x5d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityOneshotScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1199
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    if-eqz v0, :cond_7d

    .line 1200
    const/16 v0, 0x5e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiWakeStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1202
    :cond_7d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v0, v0

    if-lez v0, :cond_7f

    .line 1203
    move v0, v1

    .restart local v0    # "i":I
    :goto_20
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_7f

    .line 1204
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->observed80211McSupportingApsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v2, v2, v0

    .line 1205
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v2, :cond_7e

    .line 1206
    const/16 v3, 0x5f

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1203
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1210
    .end local v0    # "i":I
    :cond_7f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    if-eqz v0, :cond_80

    .line 1211
    const/16 v0, 0x60

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSupplicantCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1213
    :cond_80
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    if-eqz v0, :cond_81

    .line 1214
    const/16 v0, 0x61

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHostapdCrashes:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1216
    :cond_81
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    if-eqz v0, :cond_82

    .line 1217
    const/16 v0, 0x62

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupClientInterfaceFailureDueToSupplicant:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1219
    :cond_82
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    if-eqz v0, :cond_83

    .line 1220
    const/16 v0, 0x63

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHal:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1222
    :cond_83
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    if-eqz v0, :cond_84

    .line 1223
    const/16 v0, 0x64

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToWificond:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1225
    :cond_84
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    if-eqz v0, :cond_85

    .line 1226
    const/16 v0, 0x65

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSetupSoftApInterfaceFailureDueToHostapd:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1228
    :cond_85
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    if-eqz v0, :cond_86

    .line 1229
    const/16 v0, 0x66

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numClientInterfaceDown:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1231
    :cond_86
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    if-eqz v0, :cond_87

    .line 1232
    const/16 v0, 0x67

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApInterfaceDown:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1234
    :cond_87
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    if-eqz v0, :cond_88

    .line 1235
    const/16 v0, 0x68

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalAppOneshotScanRequests:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1237
    :cond_88
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    if-eqz v0, :cond_89

    .line 1238
    const/16 v0, 0x69

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalForegroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1240
    :cond_89
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    if-eqz v0, :cond_8a

    .line 1241
    const/16 v0, 0x6a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numExternalBackgroundAppOneshotScanRequestsThrottled:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1243
    :cond_8a
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8b

    .line 1244
    const/16 v0, 0x6b

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTriggerToConnectionSuccessDurationMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1246
    :cond_8b
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8c

    .line 1247
    const/16 v0, 0x6c

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->watchdogTotalConnectionFailureCountAfterTrigger:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1249
    :cond_8c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    if-eqz v0, :cond_8d

    .line 1250
    const/16 v0, 0x6d

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotHasDfsChannelScans:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1252
    :cond_8d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    if-eqz v0, :cond_8e

    .line 1253
    const/16 v0, 0x6e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiRttLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1255
    :cond_8e
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    if-eqz v0, :cond_8f

    .line 1256
    const/16 v0, 0x6f

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isMacRandomizationOn:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1258
    :cond_8f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    if-eqz v0, :cond_90

    .line 1259
    const/16 v0, 0x70

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToMcc:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1261
    :cond_90
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    if-eqz v0, :cond_91

    .line 1262
    const/16 v0, 0x71

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToScc:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1264
    :cond_91
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    if-eqz v0, :cond_92

    .line 1265
    const/16 v0, 0x72

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToSbs:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1267
    :cond_92
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    if-eqz v0, :cond_93

    .line 1268
    const/16 v0, 0x73

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numRadioModeChangeToDbs:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1270
    :cond_93
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    if-eqz v0, :cond_94

    .line 1271
    const/16 v0, 0x74

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSoftApUserBandPreferenceUnsatisfied:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1273
    :cond_94
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 1274
    const/16 v0, 0x75

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scoreExperimentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1276
    :cond_95
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    array-length v0, v0

    if-lez v0, :cond_97

    .line 1277
    nop

    .local v1, "i":I
    :goto_21
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    array-length v1, v1

    if-ge v0, v1, :cond_97

    .line 1278
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->installedPasspointProfileType:[Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;

    aget-object v1, v1, v0

    .line 1279
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    if-eqz v1, :cond_96

    .line 1280
    const/16 v2, 0x7b

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1277
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$PasspointProfileTypeCount;
    :cond_96
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_21

    .line 1284
    .end local v1    # "i":I
    :cond_97
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 1285
    const/16 v0, 0x7c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->hardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1287
    :cond_98
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    if-eqz v0, :cond_99

    .line 1288
    const/16 v0, 0x7d

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiLinkLayerUsageStats:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLinkLayerUsageStats;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1290
    :cond_99
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1291
    return-void
.end method
