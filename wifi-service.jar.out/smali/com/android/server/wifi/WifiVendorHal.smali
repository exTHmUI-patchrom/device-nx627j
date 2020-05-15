.class public Lcom/android/server/wifi/WifiVendorHal;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;,
        Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;,
        Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;,
        Lcom/android/server/wifi/WifiVendorHal$ApInterfaceDestroyedListenerInternal;,
        Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;
    }
.end annotation


# static fields
.field private static final sChipFeatureCapabilityTranslation:[[I

.field public static final sLock:Ljava/lang/Object;

.field private static final sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field private static final sNoLog:Lcom/android/server/wifi/WifiLog;

.field static final sRssiMonCmdId:I = 0x1d7f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sStaFeatureCapabilityTranslation:[[I


# instance fields
.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

.field private mDriverDescription:Ljava/lang/String;

.field private mFirmwareDescription:Ljava/lang/String;

.field private final mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private final mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

.field private final mHalEventHandler:Landroid/os/Handler;

.field private mIWifiApIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/V1_0/IWifiApIface;",
            ">;"
        }
    .end annotation
.end field

.field private mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

.field private final mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

.field private final mIWifiChipEventCallbackV12:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

.field private mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

.field private final mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

.field private mIWifiStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/V1_0/IWifiStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScanCmdId:I

.field mLinkLayerStatsDebug:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLog:Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private final mLooper:Landroid/os/Looper;

.field private mRadioModeChangeEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

.field private mRttCmdId:I

.field private mRttCmdIdNext:I

.field private final mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

.field private mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private mRttResponderCmdId:I

.field mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mVerboseLog:Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 99
    new-instance v0, Lcom/android/server/wifi/FakeWifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/FakeWifiLog;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    .line 1024
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    .line 1056
    const/16 v1, 0xd

    new-array v1, v1, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    .line 1753
    new-instance v0, Landroid/net/apf/ApfCapabilities;

    invoke-direct {v0, v4, v4, v4}, Landroid/net/apf/ApfCapabilities;-><init>(III)V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-void

    :array_0
    .array-data 4
        0x4000000
        0x100
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x200
    .end array-data

    :array_2
    .array-data 4
        0x100
        0x400
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x80
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x100
    .end array-data

    :array_5
    .array-data 4
        0x20
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x400
        0x200
    .end array-data

    :array_7
    .array-data 4
        0x1000
        0x400
    .end array-data

    :array_8
    .array-data 4
        0x2000
        0x800
    .end array-data

    :array_9
    .array-data 4
        0x10000
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x80000
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x100000
        0x2000
    .end array-data

    :array_c
    .array-data 4
        0x200000
        0x1000
    .end array-data

    :array_d
    .array-data 4
        0x800000
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x1000000
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x2000000
        0x40
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/os/Looper;)V
    .locals 3
    .param p1, "halDeviceManager"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    .line 110
    new-instance v0, Lcom/android/server/wifi/LogcatLog;

    const-string v1, "WifiVendorHal"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/LogcatLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    .line 997
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLinkLayerStatsDebug:Z

    .line 1205
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    .line 1572
    iput v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    .line 1842
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 273
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    .line 274
    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLooper:Landroid/os/Looper;

    .line 275
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 276
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    .line 277
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 278
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    .line 279
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallbackV12:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

    .line 280
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    .line 281
    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 97
    invoke-static {p0}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 97
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanDatas(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    .line 97
    invoke-static {p0}, Lcom/android/server/wifi/WifiVendorHal;->ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRadioModeChangeEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiVendorHal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiVendorHal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->makeStaBackgroundScanBucketParametersFromBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiVendorHal;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiVendorHal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/apf/ApfCapabilities;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object v0
.end method

.method private boolResult(Z)Z
    .locals 4
    .param p1, "result"    # Z

    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    return p1

    .line 161
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 162
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 164
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 165
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 166
    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 169
    return p1
.end method

.method private byteArrayResult([B)[B
    .locals 4
    .param p1, "result"    # [B

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 201
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 202
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 204
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 205
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 206
    if-nez p1, :cond_1

    const-string v3, "(null)"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 207
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 209
    return-object p1
.end method

.method private clearState()V
    .locals 2

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 640
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 641
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 642
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 643
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 644
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 645
    return-void
.end method

.method private enableLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 4
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 1008
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLinkLayerStatsDebug:Z

    invoke-interface {p1, v1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1012
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "unable to enable link layer stats collection"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_0
    goto :goto_0

    .line 1018
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1018
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1019
    return-void

    .line 1018
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param

    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;I)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method static frameworkBwFromHalBw(I)I
    .locals 5
    .param p0, "rttBw"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1474
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1475
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1476
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    or-int/lit8 v1, v1, 0x1

    .line 1479
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1480
    or-int/lit8 v1, v1, 0x2

    .line 1482
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1483
    or-int/lit8 v1, v1, 0x4

    .line 1485
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1486
    or-int/lit8 v1, v1, 0x8

    .line 1488
    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1489
    or-int/lit8 v1, v1, 0x10

    .line 1491
    :cond_4
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1492
    or-int/lit8 v1, v1, 0x20

    .line 1494
    :cond_5
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_6

    .line 1497
    return v1

    .line 1495
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static frameworkChannelWidthFromHalChannelWidth(I)I
    .locals 3
    .param p0, "halChannelWidth"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1390
    packed-switch p0, :pswitch_data_0

    .line 1402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1398
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1396
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1394
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1392
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static frameworkFromHalLinkLayerStats(Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 5
    .param p0, "stats"    # Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 956
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 957
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiLinkLayerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiLinkLayerStats;-><init>()V

    .line 958
    .local v0, "out":Lcom/android/server/wifi/WifiLinkLayerStats;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iput v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->beacon_rx:I

    .line 959
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iput v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    .line 962
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    .line 963
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_be:J

    .line 964
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    .line 965
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_be:J

    .line 967
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    .line 968
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    .line 969
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    .line 970
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_bk:J

    .line 972
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    .line 973
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    .line 974
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    .line 975
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_vi:J

    .line 977
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    .line 978
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    .line 979
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    .line 980
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_vo:J

    .line 982
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 983
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 984
    .local v1, "radioStats":Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;
    iget v3, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iput v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    .line 985
    iget v3, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iput v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    .line 986
    iget-object v3, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    .line 987
    nop

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 988
    iget-object v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    iget-object v4, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 987
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 990
    .end local v2    # "i":I
    :cond_1
    iget v2, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iput v2, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    .line 991
    iget v2, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iput v2, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    .line 993
    .end local v1    # "radioStats":Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;
    :cond_2
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->timeStampInMs:J

    .line 994
    return-object v0
.end method

.method static frameworkPeerFromHalPeer(I)I
    .locals 3
    .param p0, "halPeer"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1353
    packed-switch p0, :pswitch_data_0

    .line 1365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1361
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1359
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1357
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1355
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static frameworkPreambleFromHalPreamble(I)I
    .locals 5
    .param p0, "halPreamble"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1427
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1428
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1429
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1430
    or-int/lit8 v1, v1, 0x1

    .line 1432
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1433
    or-int/lit8 v1, v1, 0x2

    .line 1435
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1436
    or-int/lit8 v1, v1, 0x4

    .line 1438
    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 1441
    return v1

    .line 1439
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private frameworkResponderConfigFromHalRttResponder(Landroid/hardware/wifi/V1_0/RttResponder;)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 2
    .param p1, "info"    # Landroid/hardware/wifi/V1_0/RttResponder;

    .line 1606
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig;-><init>()V

    .line 1607
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    .line 1608
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    .line 1609
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    .line 1610
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkChannelWidthFromHalChannelWidth(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    .line 1611
    iget v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->preamble:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkPreambleFromHalPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    .line 1612
    return-object v0
.end method

.method private static frameworkRingBufferFlagsFromHal(I)I
    .locals 5
    .param p0, "wifiDebugRingBufferFlag"    # I

    .line 1997
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1998
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1999
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2000
    or-int/lit8 v1, v1, 0x1

    .line 2002
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2003
    or-int/lit8 v1, v1, 0x2

    .line 2005
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2006
    or-int/lit8 v1, v1, 0x4

    .line 2008
    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 2011
    return v1

    .line 2009
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown WifiDebugRingBufferFlag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static frameworkRttResultFromHalRttResult(Landroid/hardware/wifi/V1_0/RttResult;)Landroid/net/wifi/RttManager$RttResult;
    .locals 3
    .param p0, "result"    # Landroid/hardware/wifi/V1_0/RttResult;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1237
    new-instance v0, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    .line 1238
    .local v0, "ans":Landroid/net/wifi/RttManager$RttResult;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 1239
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 1240
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 1241
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 1242
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 1243
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 1244
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 1245
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 1246
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 1247
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 1249
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiRateInfo;->bitRateInKbps:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 1250
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiRateInfo;->bitRateInKbps:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rxRate:I

    .line 1251
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 1252
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 1253
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 1255
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 1256
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 1257
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 1259
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 1260
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 1261
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 1262
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 1263
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 1264
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    .line 1265
    return-object v0
.end method

.method static frameworkRttTypeFromHalRttType(I)I
    .locals 3
    .param p0, "halType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1323
    packed-switch p0, :pswitch_data_0

    .line 1329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1325
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private frameworkToHalTxPowerScenario_1_1(Lcom/android/server/wifi/SarInfo;)I
    .locals 2
    .param p1, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2718
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarVoiceCallSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eqz v0, :cond_1

    .line 2719
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2721
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad scenario: voice call not active/supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private frameworkToHalTxPowerScenario_1_2(Lcom/android/server/wifi/SarInfo;)I
    .locals 3
    .param p1, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2766
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarSensorSupported:Z

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 2767
    iget v0, p1, Lcom/android/server/wifi/SarInfo;->sensorState:I

    packed-switch v0, :pswitch_data_0

    .line 2788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad scenario: Invalid sensor state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2779
    :pswitch_0
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2783
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2780
    :cond_1
    :goto_0
    return v2

    .line 2770
    :pswitch_1
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2774
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 2771
    :cond_3
    :goto_1
    return v1

    .line 2790
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarSapSupported:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarVoiceCallSupported:Z

    if-eqz v0, :cond_8

    .line 2791
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 2794
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    if-eqz v0, :cond_6

    .line 2795
    return v1

    .line 2798
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad scenario: no voice call/softAP active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2792
    :cond_7
    :goto_2
    return v2

    .line 2800
    :cond_8
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarVoiceCallSupported:Z

    if-eqz v0, :cond_b

    .line 2802
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eqz v0, :cond_9

    goto :goto_3

    .line 2805
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad scenario: voice call not active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2803
    :cond_a
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 2808
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid case: voice call not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiApIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 474
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiApIface;

    monitor-exit v0

    return-object v1

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRttResponder()Landroid/hardware/wifi/V1_0/RttResponder;
    .locals 5

    .line 1583
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1584
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1585
    :cond_0
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    .local v1, "answer":Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$xptizMJG5Idss3aicEI09xlMbnE;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$xptizMJG5Idss3aicEI09xlMbnE;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Landroid/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    .line 1591
    iget-object v3, v1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;->value:Landroid/hardware/wifi/V1_0/RttResponder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v3

    .line 1592
    :catch_0
    move-exception v3

    .line 1593
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1594
    monitor-exit v0

    return-object v2

    .line 1596
    .end local v1    # "answer":Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 384
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    monitor-exit v0

    return-object v1

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static halBwFromFrameworkBw(I)I
    .locals 5
    .param p0, "rttManagerBandwidth"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1446
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1447
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1448
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    or-int/lit8 v1, v1, 0x1

    .line 1451
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1452
    or-int/lit8 v1, v1, 0x2

    .line 1454
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1455
    or-int/lit8 v1, v1, 0x4

    .line 1457
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1458
    or-int/lit8 v1, v1, 0x8

    .line 1460
    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1461
    or-int/lit8 v1, v1, 0x10

    .line 1463
    :cond_4
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1464
    or-int/lit8 v1, v1, 0x20

    .line 1466
    :cond_5
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_6

    .line 1469
    return v1

    .line 1467
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static halChannelWidthFromFrameworkChannelWidth(I)I
    .locals 3
    .param p0, "frameworkChannelWidth"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1372
    packed-switch p0, :pswitch_data_0

    .line 1384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1380
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1378
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1376
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1374
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static halPeerFromFrameworkPeer(I)I
    .locals 3
    .param p0, "frameworkPeer"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1335
    packed-switch p0, :pswitch_data_0

    .line 1347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1343
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1341
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1339
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1337
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static halPreambleFromFrameworkPreamble(I)I
    .locals 5
    .param p0, "rttManagerPreamble"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1408
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1409
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1410
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1411
    or-int/lit8 v1, v1, 0x1

    .line 1413
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    or-int/lit8 v1, v1, 0x2

    .line 1416
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1417
    or-int/lit8 v1, v1, 0x4

    .line 1419
    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 1422
    return v1

    .line 1420
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/wifi/RttManager$RttParams;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttConfig;",
            ">;"
        }
    .end annotation

    .line 1503
    array-length v0, p0

    .line 1504
    .local v0, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1505
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1506
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigFromFrameworkRttParams(Landroid/net/wifi/RttManager$RttParams;)Landroid/hardware/wifi/V1_0/RttConfig;

    move-result-object v3

    .line 1507
    .local v3, "config":Landroid/hardware/wifi/V1_0/RttConfig;
    if-eqz v3, :cond_0

    .line 1508
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    .end local v3    # "config":Landroid/hardware/wifi/V1_0/RttConfig;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1511
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method static halRttConfigFromFrameworkRttParams(Landroid/net/wifi/RttManager$RttParams;)Landroid/hardware/wifi/V1_0/RttConfig;
    .locals 5
    .param p0, "params"    # Landroid/net/wifi/RttManager$RttParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1283
    new-instance v0, Landroid/hardware/wifi/V1_0/RttConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/RttConfig;-><init>()V

    .line 1284
    .local v0, "rttConfig":Landroid/hardware/wifi/V1_0/RttConfig;
    iget-object v1, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1286
    .local v1, "addr":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1287
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 1286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "addr":[B
    .end local v2    # "i":I
    :cond_0
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halRttTypeFromFrameworkRttType(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    .line 1291
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halPeerFromFrameworkPeer(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    .line 1292
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->halChannelWidthFromFrameworkChannelWidth(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    .line 1293
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 1294
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    .line 1295
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    .line 1296
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    .line 1297
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    .line 1298
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    .line 1299
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    .line 1300
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    .line 1301
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    iput-boolean v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 1302
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    iput-boolean v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 1303
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    .line 1304
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halPreambleFromFrameworkPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    .line 1305
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halBwFromFrameworkBw(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    .line 1306
    return-object v0
.end method

.method static halRttTypeFromFrameworkRttType(I)I
    .locals 3
    .param p0, "frameworkRttType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1311
    packed-switch p0, :pswitch_data_0

    .line 1317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1313
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private halToFrameworkPktFateFrameType(I)B
    .locals 3
    .param p1, "type"    # I

    .line 2136
    packed-switch p1, :pswitch_data_0

    .line 2144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2142
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2140
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2138
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private halToFrameworkRxPktFate(I)B
    .locals 3
    .param p1, "type"    # I

    .line 2149
    packed-switch p1, :pswitch_data_0

    .line 2173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 2169
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 2167
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 2165
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 2163
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2161
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2159
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 2157
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 2155
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 2153
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 2151
    :pswitch_a
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private halToFrameworkTxPktFate(I)B
    .locals 3
    .param p1, "type"    # I

    .line 2178
    packed-switch p1, :pswitch_data_0

    .line 2200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2198
    :pswitch_0
    const/16 v0, 0x9

    return v0

    .line 2196
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 2194
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 2192
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 2190
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 2188
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 2186
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 2184
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 2182
    :pswitch_8
    const/4 v0, 0x1

    return v0

    .line 2180
    :pswitch_9
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static halToFrameworkWakeReasons(Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 2
    .param p0, "h"    # Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 2432
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2433
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts;

    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts;-><init>()V

    .line 2434
    .local v0, "ans":Landroid/net/wifi/WifiWakeReasonAndCounts;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    .line 2435
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    .line 2436
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    .line 2437
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxUnicastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    .line 2438
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxMulticastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    .line 2439
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxBroadcastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    .line 2440
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmpPkt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    .line 2441
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Pkt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    .line 2442
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Ra:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    .line 2443
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Na:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    .line 2444
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Ns:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    .line 2445
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->ipv4RxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    .line 2446
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->ipv6RxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    .line 2447
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->otherRxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    .line 2448
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->intsFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    .line 2449
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->intsFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    .line 2450
    return-object v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 3
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "methodName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "% RemoteException in HIDL call %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 288
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    .line 289
    return-void
.end method

.method private static hidlIeArrayToFrameworkIeBlob(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiInformationElement;",
            ">;)[B"
        }
    .end annotation

    .line 2946
    .local p0, "ies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiInformationElement;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2947
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2948
    .local v0, "ieBlob":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    .line 2949
    .local v2, "ie":Landroid/hardware/wifi/V1_0/WifiInformationElement;
    iget-byte v3, v2, Landroid/hardware/wifi/V1_0/WifiInformationElement;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2950
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2951
    .end local v2    # "ie":Landroid/hardware/wifi/V1_0/WifiInformationElement;
    goto :goto_0

    .line 2952
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    return-object v1

    .line 2946
    .end local v0    # "ieBlob":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private static hidlToFrameworkScanDataFlags(I)I
    .locals 1
    .param p0, "flag"    # I

    .line 2983
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2984
    return v0

    .line 2986
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hidlToFrameworkScanDatas(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 14
    .param p0, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/StaScanData;",
            ">;)[",
            "Landroid/net/wifi/WifiScanner$ScanData;"
        }
    .end annotation

    .line 2992
    .local p1, "scanDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanData;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2993
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 2994
    .local v0, "frameworkScanDatas":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v1, 0x0

    .line 2995
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/StaScanData;

    .line 2996
    .local v3, "scanData":Landroid/hardware/wifi/V1_0/StaScanData;
    iget v4, v3, Landroid/hardware/wifi/V1_0/StaScanData;->flags:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanDataFlags(I)I

    move-result v4

    .line 2997
    .local v4, "flags":I
    iget-object v5, v3, Landroid/hardware/wifi/V1_0/StaScanData;->results:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResults(Ljava/util/ArrayList;)[Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 2998
    .local v11, "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    add-int/lit8 v12, v1, 0x1

    .local v12, "i":I
    new-instance v13, Landroid/net/wifi/WifiScanner$ScanData;

    iget v8, v3, Landroid/hardware/wifi/V1_0/StaScanData;->bucketsScanned:I

    const/4 v9, 0x0

    move-object v5, v13

    move v6, p0

    move v7, v4

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    aput-object v13, v0, v1

    .line 3001
    .end local v1    # "i":I
    .end local v3    # "scanData":Landroid/hardware/wifi/V1_0/StaScanData;
    .end local v4    # "flags":I
    .end local v11    # "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    nop

    .line 2995
    move v1, v12

    goto :goto_0

    .line 3002
    .end local v12    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0

    .line 2992
    .end local v0    # "frameworkScanDatas":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method private static hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;
    .locals 3
    .param p0, "scanResult"    # Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 2957
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2958
    :cond_0
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 2959
    .local v0, "frameworkScanResult":Landroid/net/wifi/ScanResult;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2960
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 2961
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2962
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2963
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 2964
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2965
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 2966
    return-object v0
.end method

.method private static hidlToFrameworkScanResults(Ljava/util/ArrayList;)[Landroid/net/wifi/ScanResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;)[",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 2970
    .local p0, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanResult;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2971
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    .line 2972
    .local v0, "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    const/4 v1, 0x0

    .line 2973
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 2974
    .local v3, "scanResult":Landroid/hardware/wifi/V1_0/StaScanResult;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2975
    .end local v1    # "i":I
    .end local v3    # "scanResult":Landroid/hardware/wifi/V1_0/StaScanResult;
    nop

    .line 2973
    move v1, v4

    goto :goto_0

    .line 2976
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0

    .line 2970
    .end local v0    # "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method static ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;
    .locals 2
    .param p0, "ie"    # Landroid/hardware/wifi/V1_0/WifiInformationElement;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1274
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1275
    :cond_0
    new-instance v0, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    .line 1276
    .local v0, "ans":Landroid/net/wifi/RttManager$WifiInformationElement;
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->id:B

    iput-byte v1, v0, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 1277
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 1278
    return-object v0
.end method

.method private static intsFromArrayList(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 2417
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2418
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2419
    .local v0, "b":[I
    const/4 v1, 0x0

    .line 2420
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "e":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .end local v1    # "i":I
    .end local v3    # "e":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 2421
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$getApfCapabilities$6(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;)V
    .locals 4
    .param p1, "box"    # Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;

    .line 1739
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1740
    :cond_0
    new-instance v0, Landroid/net/apf/ApfCapabilities;

    iget v1, p3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->version:I

    iget v2, p3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->maxLength:I

    sget v3, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfCapabilities;-><init>(III)V

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:Landroid/net/apf/ApfCapabilities;

    .line 1744
    return-void
.end method

.method public static synthetic lambda$getBgScanCapabilities$0(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V
    .locals 2
    .param p1, "out"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    .param p2, "ans"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "cap"    # Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    .line 673
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "scan capabilities %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p4}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 675
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    .line 676
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    .line 677
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    .line 678
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    .line 679
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    .line 681
    return-void
.end method

.method public static synthetic lambda$getDriverStateDump$11(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "blob"    # Ljava/util/ArrayList;

    .line 2102
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2103
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;->value:[B

    .line 2104
    return-void
.end method

.method public static synthetic lambda$getFwMemoryDump$10(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "blob"    # Ljava/util/ArrayList;

    .line 2079
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2080
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;->value:[B

    .line 2081
    return-void
.end method

.method public static synthetic lambda$getRingBufferStatus$9(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ringBuffers"    # Ljava/util/ArrayList;

    .line 2039
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2040
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/WifiVendorHal;->makeRingBufferStatusArray(Ljava/util/ArrayList;)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 2041
    return-void
.end method

.method public static synthetic lambda$getRoamingCapabilities$15(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V
    .locals 1
    .param p1, "out"    # Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    .param p2, "ok"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "cap"    # Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;

    .line 2520
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2521
    :cond_0
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->maxBlacklistSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    .line 2522
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->maxWhitelistSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    .line 2523
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    .line 2524
    return-void
.end method

.method public static synthetic lambda$getRttCapabilities$4(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V
    .locals 2
    .param p1, "box"    # Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # Landroid/hardware/wifi/V1_0/RttCapabilities;

    .line 1182
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "rtt capabilites %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p3}, Landroid/hardware/wifi/V1_0/RttCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1184
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    .line 1185
    .local v0, "ans":Landroid/net/wifi/RttManager$RttCapabilities;
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttOneSidedSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 1186
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttFtmSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 1187
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->lciSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 1188
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->lcrSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 1189
    iget v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->preambleSupport:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkPreambleFromHalPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 1191
    iget v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->bwSupport:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkBwFromHalBw(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 1192
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->responderSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    .line 1193
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    .line 1194
    iget-byte v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->mcVersion:B

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    .line 1195
    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 1196
    return-void
.end method

.method public static synthetic lambda$getRttResponder$5(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttResponder;)V
    .locals 1
    .param p1, "answer"    # Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "info"    # Landroid/hardware/wifi/V1_0/RttResponder;

    .line 1588
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1589
    :cond_0
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;->value:Landroid/hardware/wifi/V1_0/RttResponder;

    .line 1590
    return-void
.end method

.method public static synthetic lambda$getRxPktFates$13(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$RxFateReport;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;
    .param p2, "ok"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "fates"    # Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2263
    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2264
    :cond_0
    const/4 v3, 0x0

    .line 2265
    .local v3, "i":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    .line 2266
    .local v5, "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    array-length v6, v1

    if-lt v3, v6, :cond_1

    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    goto :goto_1

    .line 2267
    .restart local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    :cond_1
    iget v6, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkRxPktFate(I)B

    move-result v6

    .line 2268
    .local v6, "code":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-wide v13, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    .line 2269
    .local v13, "us":J
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    .line 2270
    invoke-direct {v0, v7}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkPktFateFrameType(I)B

    move-result v15

    .line 2271
    .local v15, "type":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    .line 2272
    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v16

    .line 2274
    .local v16, "frame":[B
    add-int/lit8 v17, v3, 0x1

    .local v17, "i":I
    new-instance v18, Lcom/android/server/wifi/WifiNative$RxFateReport;

    move-object/from16 v7, v18

    move v8, v6

    move-wide v9, v13

    move v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiNative$RxFateReport;-><init>(BJB[B)V

    aput-object v18, v1, v3

    .line 2276
    .end local v3    # "i":I
    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    .end local v6    # "code":B
    .end local v13    # "us":J
    .end local v15    # "type":B
    .end local v16    # "frame":[B
    nop

    .line 2265
    move/from16 v3, v17

    goto :goto_0

    .line 2277
    .end local v17    # "i":I
    .restart local v3    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v5, p2

    iput-boolean v4, v5, Landroid/util/MutableBoolean;->value:Z

    .line 2278
    return-void
.end method

.method public static synthetic lambda$getSupportedFeatureSet$2(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 1
    .param p1, "feat"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # I

    .line 1133
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1134
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->wifiFeatureMaskFromChipCapabilities(I)I

    move-result v0

    iput v0, p1, Landroid/util/MutableInt;->value:I

    .line 1135
    return-void
.end method

.method public static synthetic lambda$getSupportedFeatureSet$3(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2
    .param p1, "feat"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # I

    .line 1140
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1141
    :cond_0
    iget v0, p1, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->wifiFeatureMaskFromStaCapabilities(I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p1, Landroid/util/MutableInt;->value:I

    .line 1142
    return-void
.end method

.method public static synthetic lambda$getTxPktFates$12(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$TxFateReport;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;
    .param p2, "ok"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "fates"    # Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2221
    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2222
    :cond_0
    const/4 v3, 0x0

    .line 2223
    .local v3, "i":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;

    .line 2224
    .local v5, "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    array-length v6, v1

    if-lt v3, v6, :cond_1

    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    goto :goto_1

    .line 2225
    .restart local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    :cond_1
    iget v6, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->fate:I

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkTxPktFate(I)B

    move-result v6

    .line 2226
    .local v6, "code":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-wide v13, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    .line 2227
    .local v13, "us":J
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    .line 2228
    invoke-direct {v0, v7}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkPktFateFrameType(I)B

    move-result v15

    .line 2229
    .local v15, "type":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    .line 2230
    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v16

    .line 2232
    .local v16, "frame":[B
    add-int/lit8 v17, v3, 0x1

    .local v17, "i":I
    new-instance v18, Lcom/android/server/wifi/WifiNative$TxFateReport;

    move-object/from16 v7, v18

    move v8, v6

    move-wide v9, v13

    move v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiNative$TxFateReport;-><init>(BJB[B)V

    aput-object v18, v1, v3

    .line 2234
    .end local v3    # "i":I
    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    .end local v6    # "code":B
    .end local v13    # "us":J
    .end local v15    # "type":B
    .end local v16    # "frame":[B
    nop

    .line 2223
    move/from16 v3, v17

    goto :goto_0

    .line 2235
    .end local v17    # "i":I
    .restart local v3    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v5, p2

    iput-boolean v4, v5, Landroid/util/MutableBoolean;->value:Z

    .line 2236
    return-void
.end method

.method public static synthetic lambda$getWifiLinkLayerStats$1(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 1
    .param p1, "answer"    # Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "stats"    # Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 939
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 940
    :cond_0
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 941
    return-void
.end method

.method public static synthetic lambda$getWlanWakeReasonCount$14(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "stats"    # Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 2467
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 2470
    :cond_0
    return-void
.end method

.method public static synthetic lambda$readPacketFilter$7(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "answer"    # Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "dataByteArray"    # Ljava/util/ArrayList;

    .line 1801
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1802
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->data:[B

    .line 1803
    return-void
.end method

.method public static synthetic lambda$requestChipDebugInfo$8(Lcom/android/server/wifi/WifiVendorHal;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V
    .locals 1
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "chipDebugInfo"    # Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1963
    :cond_0
    iget-object v0, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->driverDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 1964
    iget-object v0, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->firmwareDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 1965
    return-void
.end method

.method private makeReportSchemeFromBucketSettingsReportEvents(I)I
    .locals 5
    .param p1, "reportUnderscoreEvents"    # I

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "ans":I
    new-instance v1, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 784
    .local v1, "in":Lcom/android/server/wifi/util/BitMask;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    or-int/lit8 v0, v0, 0x1

    .line 787
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    or-int/lit8 v0, v0, 0x2

    .line 790
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    or-int/lit8 v0, v0, 0x4

    .line 793
    :cond_2
    iget v2, v1, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 794
    return v0

    .line 793
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static makeRingBufferStatusArray(Ljava/util/ArrayList;)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;",
            ">;)[",
            "Lcom/android/server/wifi/WifiNative$RingBufferStatus;"
        }
    .end annotation

    .line 2019
    .local p0, "ringBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 2020
    .local v0, "ans":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    const/4 v1, 0x0

    .line 2021
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    .line 2022
    .local v3, "b":Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2023
    .end local v1    # "i":I
    .end local v3    # "b":Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;
    nop

    .line 2021
    move v1, v4

    goto :goto_0

    .line 2024
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private makeStaBackgroundScanBucketParametersFromBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    .locals 7
    .param p1, "bs"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 726
    new-instance v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;-><init>()V

    .line 727
    .local v0, "pa":Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    .line 728
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->makeWifiBandFromFrameworkBand(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    .line 729
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 731
    .local v4, "cs":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v5, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    .end local v4    # "cs":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    :cond_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    .line 735
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->makeReportSchemeFromBucketSettingsReportEvents(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    .line 736
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    .line 741
    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    .line 742
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    .line 743
    return-object v0
.end method

.method private makeWifiBandFromFrameworkBand(I)I
    .locals 3
    .param p1, "frameworkBand"    # I

    .line 754
    packed-switch p1, :pswitch_data_0

    .line 770
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 764
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 762
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 766
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 760
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 758
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 756
    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 5
    .param p0, "trace"    # [Ljava/lang/StackTraceElement;
    .param p1, "start"    # I

    .line 233
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 234
    :cond_0
    aget-object v0, p0, p1

    .line 235
    .local v0, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "name":Ljava/lang/String;
    const-string v2, "lambda$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "myFile":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 240
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 241
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 243
    goto :goto_1

    .line 240
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "myFile":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(l."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 139
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 142
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 144
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% failed %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 145
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Landroid/hardware/wifi/V1_0/WifiStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 149
    const/4 v2, 0x0

    return v2
.end method

.method private registerChipCallback()Z
    .locals 5

    .line 587
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 591
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiChipForV1_2Mockable()Landroid/hardware/wifi/V1_2/IWifiChip;

    move-result-object v1

    .line 592
    .local v1, "iWifiChipV12":Landroid/hardware/wifi/V1_2/IWifiChip;
    if-eqz v1, :cond_1

    .line 593
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallbackV12:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 595
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 597
    .restart local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 598
    .end local v1    # "iWifiChipV12":Landroid/hardware/wifi/V1_2/IWifiChip;
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 600
    monitor-exit v0

    return v2

    .line 602
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerRttEventCallback()Z
    .locals 4

    .line 609
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 613
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 614
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 615
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 617
    monitor-exit v0

    return v2

    .line 619
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerStaIfaceCallback(Landroid/hardware/wifi/V1_0/IWifiStaIface;)Z
    .locals 4
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 569
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 580
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 573
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 574
    invoke-interface {p1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 575
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 576
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 578
    monitor-exit v0

    return v1

    .line 580
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private requestChipDebugInfo()V
    .locals 2

    .line 1957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 1958
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 1960
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v0, :cond_0

    return-void

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    invoke-interface {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    nop

    .line 1970
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "Driver: % Firmware: %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 1971
    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 1972
    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 1973
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1974
    return-void

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1968
    return-void
.end method

.method private retrieveWifiChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 5
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 547
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 549
    .local v1, "registrationNeeded":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 550
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v4, :cond_1

    .line 551
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to get the chip created for the Iface"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 552
    monitor-exit v0

    return v2

    .line 554
    :cond_1
    if-nez v1, :cond_2

    .line 555
    monitor-exit v0

    return v3

    .line 557
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerChipCallback()Z

    move-result v4

    if-nez v4, :cond_3

    .line 558
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to register chip callback"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 559
    monitor-exit v0

    return v2

    .line 561
    :cond_3
    monitor-exit v0

    return v3

    .line 562
    .end local v1    # "registrationNeeded":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 2
    .param p0, "h"    # Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    .line 1980
    new-instance v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$RingBufferStatus;-><init>()V

    .line 1981
    .local v0, "ans":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->ringName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    .line 1982
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->flags:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkRingBufferFlagsFromHal(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    .line 1983
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->ringId:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferId:I

    .line 1984
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->sizeInBytes:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferByteSize:I

    .line 1985
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->verboseLevel:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->verboseLevel:I

    .line 1990
    return-object v0
.end method

.method private sarPowerBackoffRequired_1_1(Lcom/android/server/wifi/SarInfo;)Z
    .locals 2
    .param p1, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2702
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarVoiceCallSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2703
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2705
    :cond_2
    return v1
.end method

.method private sarPowerBackoffRequired_1_2(Lcom/android/server/wifi/SarInfo;)Z
    .locals 3
    .param p1, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2736
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarSensorSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2737
    iget v0, p1, Lcom/android/server/wifi/SarInfo;->sensorState:I

    if-eq v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 2739
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarSapSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    if-eqz v0, :cond_2

    .line 2740
    return v2

    .line 2742
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->sarVoiceCallSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eqz v0, :cond_4

    .line 2743
    :cond_3
    return v2

    .line 2745
    :cond_4
    return v1
.end method

.method private selectTxPowerScenario_1_1(Landroid/hardware/wifi/V1_1/IWifiChip;Lcom/android/server/wifi/SarInfo;)Z
    .locals 7
    .param p1, "iWifiChip"    # Landroid/hardware/wifi/V1_1/IWifiChip;
    .param p2, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2851
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->sarPowerBackoffRequired_1_1(Lcom/android/server/wifi/SarInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2854
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->frameworkToHalTxPowerScenario_1_1(Lcom/android/server/wifi/SarInfo;)I

    move-result v1

    .line 2855
    .local v1, "halScenario":I
    invoke-virtual {p2, v1}, Lcom/android/server/wifi/SarInfo;->setSarScenarioNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2856
    invoke-interface {p1, v1}, Landroid/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2857
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2858
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting SAR scenario to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2859
    return v2

    .line 2861
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set SAR scenario to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V

    .line 2862
    return v0

    .line 2868
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_1
    return v2

    .line 2872
    .end local v1    # "halScenario":I
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wifi/SarInfo;->resetSarScenarioNeeded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2873
    invoke-interface {p1}, Landroid/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 2874
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2875
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Resetting SAR scenario"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2876
    return v2

    .line 2878
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Failed to reset SAR scenario"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2879
    return v0

    .line 2885
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_4
    return v2

    .line 2889
    :catch_0
    move-exception v1

    .line 2890
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Illegal argument for selectTxPowerScenario_1_1()"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2891
    return v0

    .line 2886
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2887
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2888
    return v0
.end method

.method private selectTxPowerScenario_1_2(Landroid/hardware/wifi/V1_2/IWifiChip;Lcom/android/server/wifi/SarInfo;)Z
    .locals 7
    .param p1, "iWifiChip"    # Landroid/hardware/wifi/V1_2/IWifiChip;
    .param p2, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2899
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->sarPowerBackoffRequired_1_2(Lcom/android/server/wifi/SarInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2902
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->frameworkToHalTxPowerScenario_1_2(Lcom/android/server/wifi/SarInfo;)I

    move-result v1

    .line 2903
    .local v1, "halScenario":I
    invoke-virtual {p2, v1}, Lcom/android/server/wifi/SarInfo;->setSarScenarioNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2904
    invoke-interface {p1, v1}, Landroid/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2905
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2906
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting SAR scenario to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2907
    return v2

    .line 2909
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set SAR scenario to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V

    .line 2910
    return v0

    .line 2916
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_1
    return v2

    .line 2920
    .end local v1    # "halScenario":I
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wifi/SarInfo;->resetSarScenarioNeeded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2921
    invoke-interface {p1}, Landroid/hardware/wifi/V1_2/IWifiChip;->resetTxPowerScenario()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 2922
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2923
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Resetting SAR scenario"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2924
    return v2

    .line 2926
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Failed to reset SAR scenario"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2927
    return v0

    .line 2933
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_4
    return v2

    .line 2937
    :catch_0
    move-exception v1

    .line 2938
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Illegal argument for selectTxPowerScenario_1_2()"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2939
    return v0

    .line 2934
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2935
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2936
    return v0
.end method

.method private stringResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 181
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 182
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 184
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 185
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 186
    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 187
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 189
    return-object p1
.end method


# virtual methods
.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 7
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .line 1554
    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1555
    .local v0, "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1556
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1557
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1558
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1559
    .local v2, "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/RttConfig;

    .local v5, "x":Landroid/hardware/wifi/V1_0/RttConfig;
    iget-object v6, v5, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "x":Landroid/hardware/wifi/V1_0/RttConfig;
    goto :goto_0

    .line 1561
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-interface {v4, v5, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1562
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    .line 1563
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_3

    :try_start_2
    monitor-exit v1

    return v3

    .line 1564
    :cond_3
    const/4 v3, 0x1

    monitor-exit v1

    return v3

    .line 1565
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v4

    .line 1566
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1567
    monitor-exit v1

    return v3

    .line 1569
    .end local v2    # "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public configureNeighborDiscoveryOffload(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2487
    const-string v0, "enabled=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2488
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2489
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2490
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2492
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2493
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2497
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_1
    nop

    .line 2498
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    monitor-exit v0

    .line 2499
    const/4 v0, 0x1

    return v0

    .line 2494
    .restart local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catch_0
    move-exception v3

    .line 2495
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2496
    monitor-exit v0

    return v2

    .line 2498
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z
    .locals 11
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/wifi/WifiNative$RoamingConfig;

    .line 2576
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2577
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2578
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2580
    :cond_0
    :try_start_1
    new-instance v3, Landroid/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 2583
    .local v3, "roamingConfig":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2584
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2585
    .local v5, "bssid":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2586
    .local v6, "mac":[B
    iget-object v7, v3, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "mac":[B
    goto :goto_0

    .line 2591
    :cond_1
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 2592
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2593
    .local v5, "ssidStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2595
    .local v6, "unquotedSsidStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 2596
    .local v7, "len":I
    const/16 v8, 0x20

    if-le v7, v8, :cond_2

    .line 2597
    iget-object v8, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v9, "configureRoaming: skip invalid SSID %"

    invoke-interface {v8, v9}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v8

    .line 2598
    invoke-interface {v8, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2599
    goto :goto_1

    .line 2601
    :cond_2
    new-array v8, v7, [B

    .line 2602
    .local v8, "ssid":[B
    move v9, v2

    .local v9, "i":I
    :goto_2
    if-ge v9, v7, :cond_3

    .line 2603
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 2602
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2605
    .end local v9    # "i":I
    :cond_3
    iget-object v9, v3, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    .end local v5    # "ssidStr":Ljava/lang/String;
    .end local v6    # "unquotedSsidStr":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "ssid":[B
    goto :goto_1

    .line 2609
    :cond_4
    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 2610
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_5

    :try_start_2
    monitor-exit v0

    return v2

    .line 2617
    .end local v3    # "roamingConfig":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_5
    nop

    .line 2618
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2614
    :catch_0
    move-exception v3

    .line 2615
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Illegal argument for roaming configuration"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2616
    monitor-exit v0

    return v2

    .line 2611
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 2612
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2613
    monitor-exit v0

    return v2

    .line 2619
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;
    .locals 6
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 505
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v2, Lcom/android/server/wifi/WifiVendorHal$ApInterfaceDestroyedListenerInternal;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiVendorHal$ApInterfaceDestroyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v1

    .line 508
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    if-nez v1, :cond_0

    .line 509
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to create AP iface"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 510
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "ifaceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get iface name"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 515
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 517
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->retrieveWifiChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 518
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get wifi chip"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 519
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 521
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    monitor-exit v0

    return-object v2

    .line 523
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    .end local v2    # "ifaceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;
    .locals 6
    .param p1, "lowPrioritySta"    # Z
    .param p2, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 417
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v2, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 420
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to create STA iface"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 422
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "ifaceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get iface name"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 427
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 429
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->registerStaIfaceCallback(Landroid/hardware/wifi/V1_0/IWifiStaIface;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to register STA iface callback"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 431
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 433
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/HalDeviceManager;->createRttController()Landroid/hardware/wifi/V1_0/IWifiRttController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 434
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v4, :cond_3

    .line 435
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to create RTT controller"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 436
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 438
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerRttEventCallback()Z

    move-result v4

    if-nez v4, :cond_4

    .line 439
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to register RTT controller callback"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 440
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 442
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->retrieveWifiChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 443
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get wifi chip"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 444
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 446
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enableLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 447
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    monitor-exit v0

    return-object v2

    .line 449
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "ifaceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableRttResponder()Z
    .locals 4

    .line 1657
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1659
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1661
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1662
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iput v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    .line 1663
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    monitor-exit v0

    return v2

    .line 1664
    :cond_2
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1665
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 1666
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1667
    monitor-exit v0

    return v2

    .line 1669
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public enableFirmwareRoaming(Ljava/lang/String;I)I
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2541
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2542
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2543
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    const/4 v2, 0x6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2546
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2554
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    goto :goto_1

    .line 2551
    :pswitch_0
    const/4 v2, 0x1

    .line 2552
    .local v2, "val":B
    goto :goto_0

    .line 2548
    .end local v2    # "val":B
    :pswitch_1
    const/4 v2, 0x0

    .line 2549
    .restart local v2    # "val":B
    nop

    .line 2555
    :goto_0
    nop

    .line 2558
    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2559
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRoamingState returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2560
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 2554
    .end local v2    # "val":B
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_1
    :try_start_3
    const-string v3, "enableFirmwareRoaming invalid argument %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, p2

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2555
    const/4 v2, 0x7

    :try_start_4
    monitor-exit v0

    return v2

    .line 2561
    :catch_0
    move-exception v2

    .line 2562
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2563
    const/16 v3, 0x9

    monitor-exit v0

    return v3

    .line 2565
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 9
    .param p1, "timeoutSeconds"    # I

    .line 1622
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->getRttResponder()Landroid/hardware/wifi/V1_0/RttResponder;

    move-result-object v0

    .line 1623
    .local v0, "info":Landroid/hardware/wifi/V1_0/RttResponder;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1624
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v3

    .line 1625
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    if-eqz v2, :cond_1

    .line 1626
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "responder mode already enabled - this shouldn\'t happen"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1627
    monitor-exit v1

    return-object v3

    .line 1629
    :cond_1
    const/4 v2, 0x0

    .line 1630
    .local v2, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    iget v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    .line 1631
    .local v4, "id":I
    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    invoke-interface {v5, v4, v3, p1, v0}, Landroid/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILandroid/hardware/wifi/V1_0/WifiChannelInfo;ILandroid/hardware/wifi/V1_0/RttResponder;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 1637
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1638
    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    .line 1639
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->frameworkResponderConfigFromHalRttResponder(Landroid/hardware/wifi/V1_0/RttResponder;)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v6

    move-object v2, v6

    .line 1640
    iget-object v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabling rtt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    :cond_3
    :try_start_2
    monitor-exit v1

    return-object v2

    .line 1643
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v5

    .line 1644
    .local v5, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1645
    monitor-exit v1

    return-object v3

    .line 1647
    .end local v2    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .end local v4    # "id":I
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public enableVerboseLogging(Z)V
    .locals 2
    .param p1, "verbose"    # Z

    .line 119
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    .line 122
    const-string v1, "verbose=true"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 124
    :cond_0
    const-string v1, "verbose=false"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 125
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    .line 127
    :goto_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1733
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1735
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 1736
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 1737
    :cond_0
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 1738
    .local v2, "box":Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;
    new-instance v3, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$nzLDa8bqkjnOhiEpwrQr8oy-Abg;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$nzLDa8bqkjnOhiEpwrQr8oy-Abg;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;)V

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 1745
    iget-object v3, v2, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:Landroid/net/apf/ApfCapabilities;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v3

    .line 1750
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "box":Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1746
    :catch_0
    move-exception v1

    .line 1747
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1748
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    monitor-exit v0

    return-object v2

    .line 1750
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 666
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 668
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 670
    :cond_0
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 671
    .local v3, "ans":Landroid/util/MutableBoolean;
    move-object v4, p2

    .line 672
    .local v4, "out":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;)V

    invoke-interface {v1, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 683
    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 684
    .end local v3    # "ans":Landroid/util/MutableBoolean;
    .end local v4    # "out":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    :catch_0
    move-exception v3

    .line 685
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 686
    monitor-exit v0

    return v2

    .line 688
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 913
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 915
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 916
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-nez v3, :cond_1

    monitor-exit v0

    return-object v2

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

    monitor-exit v0

    return-object v2

    .line 918
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDriverStateDump()[B
    .locals 5

    .line 2097
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2098
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2099
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2101
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2108
    nop

    .line 2109
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2110
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;->value:[B

    return-object v1

    .line 2105
    :catch_0
    move-exception v2

    .line 2106
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2107
    monitor-exit v1

    return-object v3

    .line 2109
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 2

    .line 1935
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1936
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->requestChipDebugInfo()V

    .line 1937
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1938
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 2

    .line 1947
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1948
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->requestChipDebugInfo()V

    .line 1949
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFwMemoryDump()[B
    .locals 5

    .line 2074
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2075
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2076
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2078
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0nn1d2XVTxIXDSyzfYz5nuiMmaM;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0nn1d2XVTxIXDSyzfYz5nuiMmaM;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2085
    nop

    .line 2086
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2087
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;->value:[B

    return-object v1

    .line 2082
    :catch_0
    move-exception v2

    .line 2083
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2084
    monitor-exit v1

    return-object v3

    .line 2086
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ringName"    # Ljava/lang/String;

    .line 2054
    const-string v0, "ringName %"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2055
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2058
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v1, p1}, Landroid/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 2059
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 2060
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 2061
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2062
    monitor-exit v0

    return v2

    .line 2064
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 5

    .line 2034
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2035
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2036
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2038
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dLmE-Gt21lNab7JkIiohEIIEf6Q;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dLmE-Gt21lNab7JkIiohEIIEf6Q;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2045
    nop

    .line 2046
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2047
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    return-object v1

    .line 2042
    :catch_0
    move-exception v2

    .line 2043
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2044
    monitor-exit v1

    return-object v3

    .line 2046
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    .line 2513
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2515
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2517
    :cond_0
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2518
    .local v3, "ok":Landroid/util/MutableBoolean;
    move-object v4, p2

    .line 2519
    .local v4, "out":Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;)V

    invoke-interface {v1, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 2525
    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2526
    .end local v3    # "ok":Landroid/util/MutableBoolean;
    .end local v4    # "out":Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    :catch_0
    move-exception v3

    .line 2527
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2528
    monitor-exit v0

    return v2

    .line 2530
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 5

    .line 1177
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1180
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 1181
    .local v1, "box":Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    .line 1197
    iget-object v3, v1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v3

    .line 1198
    .end local v1    # "box":Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1200
    monitor-exit v0

    return-object v2

    .line 1202
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 2256
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 2257
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 2259
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2261
    :cond_1
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2262
    .local v3, "ok":Landroid/util/MutableBoolean;
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0gGojGcifgvfhGv7aD4Qbmyl79k;

    invoke-direct {v4, p0, p2, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0gGojGcifgvfhGv7aD4Qbmyl79k;-><init>(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$RxFateReport;Landroid/util/MutableBoolean;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 2280
    iget-boolean v4, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2281
    .end local v3    # "ok":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v3

    .line 2282
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2283
    monitor-exit v0

    return v1

    .line 2285
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSupportedFeatureSet(Ljava/lang/String;)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "featureSet":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1126
    return v0

    .line 1129
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/util/MutableInt;

    invoke-direct {v2, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 1130
    .local v2, "feat":Landroid/util/MutableInt;
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-eqz v4, :cond_1

    .line 1132
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;-><init>(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    .line 1137
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v4

    .line 1138
    .local v4, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-eqz v4, :cond_2

    .line 1139
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Lnl0TvBZpgQMVgoYAtSlApp_k88;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Lnl0TvBZpgQMVgoYAtSlApp_k88;-><init>(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 1144
    .end local v4    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    :try_start_2
    iget v3, v2, Landroid/util/MutableInt;->value:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1149
    .end local v2    # "feat":Landroid/util/MutableInt;
    nop

    .line 1151
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypes()Ljava/util/Set;

    move-result-object v2

    .line 1152
    .local v2, "supportedIfaceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1153
    or-int/lit8 v0, v0, 0x1

    .line 1155
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1156
    or-int/lit8 v0, v0, 0x10

    .line 1158
    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1159
    or-int/lit8 v0, v0, 0x8

    .line 1161
    :cond_5
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1162
    or-int/lit8 v0, v0, 0x40

    .line 1165
    :cond_6
    return v0

    .line 1144
    .local v2, "feat":Landroid/util/MutableInt;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1146
    .end local v2    # "feat":Landroid/util/MutableInt;
    :catch_0
    move-exception v2

    .line 1147
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1148
    return v1
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 1

    .line 1926
    const/4 v0, -0x1

    return v0
.end method

.method public getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 2214
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 2215
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2216
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 2217
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2219
    :cond_1
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2220
    .local v3, "ok":Landroid/util/MutableBoolean;
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$sRX80xmV169NEPfDVRtnwl0y95Q;

    invoke-direct {v4, p0, p2, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$sRX80xmV169NEPfDVRtnwl0y95Q;-><init>(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$TxFateReport;Landroid/util/MutableBoolean;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 2238
    iget-boolean v4, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2239
    .end local v3    # "ok":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v3

    .line 2240
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2241
    monitor-exit v0

    return v1

    .line 2243
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getWifiChipForV1_1Mockable()Landroid/hardware/wifi/V1_1/IWifiChip;
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2650
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-static {v0}, Landroid/hardware/wifi/V1_1/IWifiChip;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_1/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method protected getWifiChipForV1_2Mockable()Landroid/hardware/wifi/V1_2/IWifiChip;
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2661
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-static {v0}, Landroid/hardware/wifi/V1_2/IWifiChip;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_2/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 933
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 934
    .local v0, "answer":Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    .local v3, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 938
    :cond_0
    :try_start_2
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Cu5ECBYZ9xFCAH1Q99vuft6nyvY;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Cu5ECBYZ9xFCAH1Q99vuft6nyvY;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    .end local v3    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    nop

    .line 946
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 947
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkFromHalLinkLayerStats(Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v1

    .line 948
    .local v1, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    return-object v1

    .line 946
    .end local v1    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 942
    :catch_0
    move-exception v3

    .line 943
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 944
    monitor-exit v1

    return-object v2

    .line 946
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method protected getWifiStaIfaceForV1_2Mockable(Ljava/lang/String;)Landroid/hardware/wifi/V1_2/IWifiStaIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2673
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 2674
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2675
    :cond_0
    invoke-static {v0}, Landroid/hardware/wifi/V1_2/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_2/IWifiStaIface;

    move-result-object v1

    return-object v1
.end method

.method protected getWifiVendorStaIfaceForV1_0Mockable(Ljava/lang/String;)Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2687
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 2688
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2689
    :cond_0
    invoke-static {v0}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;

    move-result-object v1

    return-object v1
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 5

    .line 2462
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2463
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2464
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2466
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    .line 2471
    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkWakeReasons(Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 2472
    :catch_0
    move-exception v2

    .line 2473
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2474
    monitor-exit v1

    return-object v3

    .line 2476
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public initialize(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z
    .locals 4
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    .line 300
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->initialize()V

    .line 302
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 303
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    .line 304
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public installPacketFilter(Ljava/lang/String;[B)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # [B

    .line 1763
    const/4 v0, 0x0

    .line 1764
    .local v0, "cmdId":I
    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    return v1

    .line 1766
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    .line 1767
    .local v2, "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v3, "filter length %"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    array-length v4, p2

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1768
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1770
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v4

    .line 1771
    .local v4, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5

    .line 1772
    :cond_1
    :try_start_2
    invoke-interface {v4, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 1773
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    :try_start_3
    monitor-exit v3

    return v1

    .line 1774
    :cond_2
    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 1779
    .end local v4    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1775
    :catch_0
    move-exception v4

    .line 1776
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1777
    monitor-exit v3

    return v1

    .line 1779
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public isHalStarted()Z
    .locals 2

    .line 652
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVendorHalSupported()Z
    .locals 2

    .line 326
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->isSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseBgScan(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 868
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 872
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-nez v2, :cond_2

    .line 873
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 874
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 875
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 879
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_2
    goto :goto_0

    .line 880
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 877
    :catch_0
    move-exception v1

    .line 878
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 880
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 881
    return-void

    .line 880
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public readPacketFilter(Ljava/lang/String;)[B
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1792
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 1793
    .local v0, "answer":Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1795
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1797
    nop

    .line 1798
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiStaIfaceForV1_2Mockable(Ljava/lang/String;)Landroid/hardware/wifi/V1_2/IWifiStaIface;

    move-result-object v3

    .line 1799
    .local v3, "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->byteArrayResult([B)[B

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 1800
    :cond_0
    :try_start_2
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 1804
    iget-object v4, v0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->data:[B

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->byteArrayResult([B)[B

    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    return-object v4

    .line 1809
    .end local v3    # "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1805
    :catch_0
    move-exception v3

    .line 1806
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1807
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->byteArrayResult([B)[B

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1809
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public registerRadioModeChangeHandler(Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    .line 317
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRadioModeChangeEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    .line 319
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeApIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 533
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v1

    .line 535
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 537
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 538
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to remove AP iface"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 539
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 543
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStaIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 459
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 461
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 464
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to remove STA iface"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 465
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 469
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 6
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 1524
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1528
    .local v1, "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    nop

    .line 1527
    nop

    .line 1529
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1530
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1531
    :cond_0
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1532
    :cond_1
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    .line 1533
    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 1534
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-interface {v3, v5, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1537
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v4

    .line 1538
    :cond_3
    :try_start_4
    iput v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1539
    :try_start_5
    monitor-exit v2

    return v0

    .line 1540
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 1541
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1542
    monitor-exit v2

    return v0

    .line 1544
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1525
    .end local v1    # "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    :catch_1
    move-exception v1

    .line 1526
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Illegal argument for RTT request"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1527
    return v0
.end method

.method public resetLogHandler()Z
    .locals 4

    .line 1870
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1871
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1872
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1874
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1875
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 1876
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    move-object v1, v3

    .line 1877
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1878
    :cond_3
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1879
    const/4 v2, 0x1

    :try_start_6
    monitor-exit v0

    return v2

    .line 1880
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 1881
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1882
    monitor-exit v0

    return v2

    .line 1884
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public restartBgScan(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 890
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 892
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 894
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-eqz v2, :cond_2

    .line 895
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-interface {v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 896
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 897
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 901
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_2
    goto :goto_0

    .line 899
    :catch_0
    move-exception v2

    .line 900
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 902
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public selectTxPowerScenario(Lcom/android/server/wifi/SarInfo;)Z
    .locals 4
    .param p1, "sarInfo"    # Lcom/android/server/wifi/SarInfo;

    .line 2829
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2831
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiChipForV1_2Mockable()Landroid/hardware/wifi/V1_2/IWifiChip;

    move-result-object v1

    .line 2832
    .local v1, "iWifiChipV12":Landroid/hardware/wifi/V1_2/IWifiChip;
    if-eqz v1, :cond_0

    .line 2833
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiVendorHal;->selectTxPowerScenario_1_2(Landroid/hardware/wifi/V1_2/IWifiChip;Lcom/android/server/wifi/SarInfo;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2837
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiChipForV1_1Mockable()Landroid/hardware/wifi/V1_1/IWifiChip;

    move-result-object v2

    .line 2838
    .local v2, "iWifiChipV11":Landroid/hardware/wifi/V1_1/IWifiChip;
    if-eqz v2, :cond_1

    .line 2839
    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiVendorHal;->selectTxPowerScenario_1_1(Landroid/hardware/wifi/V1_1/IWifiChip;Lcom/android/server/wifi/SarInfo;)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 2843
    :cond_1
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 2844
    .end local v1    # "iWifiChipV12":Landroid/hardware/wifi/V1_2/IWifiChip;
    .end local v2    # "iWifiChipV11":Landroid/hardware/wifi/V1_1/IWifiChip;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 1820
    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1821
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1824
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1827
    .local v1, "code":[B
    nop

    .line 1826
    nop

    .line 1828
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1830
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v3

    .line 1831
    .local v3, "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 1832
    :cond_2
    :try_start_3
    invoke-interface {v3, v1}, Landroid/hardware/wifi/V1_0/IWifiApIface;->setCountryCode([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1833
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    :try_start_4
    monitor-exit v2

    return v0

    .line 1834
    :cond_3
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 1839
    .end local v3    # "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1835
    :catch_0
    move-exception v3

    .line 1836
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1837
    monitor-exit v2

    return v0

    .line 1839
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1825
    .end local v1    # "code":[B
    :catch_1
    move-exception v1

    .line 1826
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0
.end method

.method public setLatencyLevel(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 2626
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "setLatencyLevel iface=% level=%"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, p2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    nop

    .line 2630
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiVendorStaIfaceForV1_0Mockable(Ljava/lang/String;)Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;

    move-result-object v2

    .line 2631
    .local v2, "iface":Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;
    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 2632
    :cond_0
    :try_start_3
    invoke-interface {v2, p2}, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;->setLatencyLevel(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2633
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    :try_start_4
    monitor-exit v0

    return v1

    .line 2634
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2635
    .end local v2    # "iface":Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface;
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 2636
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2637
    monitor-exit v0

    return v1

    .line 2639
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 5
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 1849
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1850
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1851
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1852
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1854
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1855
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 1856
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1857
    :try_start_4
    monitor-exit v1

    return v3

    .line 1858
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 1859
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1860
    monitor-exit v1

    return v0

    .line 1862
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mac"    # Landroid/net/MacAddress;

    .line 1707
    invoke-virtual {p2}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 1708
    .local v0, "macByteArray":[B
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1710
    nop

    .line 1711
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiStaIfaceForV1_2Mockable(Ljava/lang/String;)Landroid/hardware/wifi/V1_2/IWifiStaIface;

    move-result-object v3

    .line 1712
    .local v3, "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    .line 1713
    :cond_0
    :try_start_2
    invoke-interface {v3, v0}, Landroid/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1714
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    :try_start_3
    monitor-exit v1

    return v2

    .line 1715
    :cond_1
    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 1720
    .end local v3    # "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1716
    :catch_0
    move-exception v3

    .line 1717
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1718
    monitor-exit v1

    return v2

    .line 1720
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setScanningMacOui(Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "oui"    # [B

    .line 1683
    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1684
    :cond_0
    array-length v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1685
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1687
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 1688
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 1689
    :cond_2
    :try_start_2
    invoke-interface {v2, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1690
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    :try_start_3
    monitor-exit v1

    return v0

    .line 1691
    :cond_3
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1696
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1692
    :catch_0
    move-exception v2

    .line 1693
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1694
    monitor-exit v1

    return v0

    .line 1696
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p3, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 816
    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 817
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 819
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 821
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-nez v3, :cond_2

    .line 822
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    .line 823
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    .line 825
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    rem-int/lit8 v3, v3, 0x9

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    .line 826
    new-instance v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    invoke-direct {v3, p0, v5, p2}, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;-><init>(Lcom/android/server/wifi/WifiVendorHal;ILcom/android/server/wifi/WifiNative$ScanSettings;)V

    .line 827
    .local v3, "scan":Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    iget v5, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    iget-object v6, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-interface {v2, v5, v6}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 828
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 829
    :cond_3
    :try_start_3
    iput-object p3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 830
    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :try_start_4
    monitor-exit v1

    return v4

    .line 832
    .end local v3    # "scan":Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 833
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 834
    monitor-exit v1

    return v0

    .line 836
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 4
    .param p1, "verboseLevel"    # I
    .param p2, "flags"    # I
    .param p3, "maxIntervalInSec"    # I
    .param p4, "minDataSizeInBytes"    # I
    .param p5, "ringName"    # Ljava/lang/String;

    .line 1899
    const-string v0, "verboseLevel=%, flags=%, maxIntervalInSec=%, minDataSizeInBytes=%, ringName=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p1

    .line 1900
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p4

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 1901
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1902
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1906
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v1, p5, p1, p3, p4}, Landroid/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1912
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 1913
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1915
    monitor-exit v0

    return v2

    .line 1917
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startPktFateMonitoring(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2122
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2124
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2126
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2127
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2128
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2129
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2130
    monitor-exit v0

    return v2

    .line 2132
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "maxRssi"    # B
    .param p3, "minRssi"    # B
    .param p4, "rssiEventHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 2373
    const-string v0, "maxRssi=% minRssi=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2374
    const/4 v0, -0x1

    if-gt p2, p3, :cond_0

    return v0

    .line 2375
    :cond_0
    if-nez p4, :cond_1

    return v0

    .line 2376
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2377
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 2378
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2380
    :cond_2
    const/16 v3, 0x1d7f

    :try_start_1
    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 2382
    invoke-interface {v2, v3, p2, p3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2383
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 2384
    :cond_3
    :try_start_3
    iput-object p4, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2385
    const/4 v0, 0x0

    :try_start_4
    monitor-exit v1

    return v0

    .line 2386
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2387
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2388
    monitor-exit v1

    return v0

    .line 2390
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public startSendingOffloadedPacket(Ljava/lang/String;I[B[B[BII)I
    .locals 16
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "srcMac"    # [B
    .param p4, "dstMac"    # [B
    .param p5, "packet"    # [B
    .param p6, "protocol"    # I
    .param p7, "periodInMs"    # I

    move-object/from16 v1, p0

    .line 2303
    const-string v0, "slot=% periodInMs=%"

    invoke-direct {v1, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    move/from16 v9, p2

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    move/from16 v10, p7

    int-to-long v2, v10

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2305
    invoke-static/range {p5 .. p5}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v11

    .line 2307
    .local v11, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    sget-object v12, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2308
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    move-object v13, v0

    .line 2309
    .local v13, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v14, -0x1

    if-nez v13, :cond_0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v14

    .line 2311
    :cond_0
    move/from16 v15, p6

    int-to-short v5, v15

    move-object v2, v13

    move v3, v9

    move-object v4, v11

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v8, v10

    :try_start_1
    invoke-interface/range {v2 .. v8}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 2318
    .local v0, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {v1, v0}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    :try_start_2
    monitor-exit v12

    return v14

    .line 2319
    :cond_1
    const/4 v2, 0x0

    monitor-exit v12

    return v2

    .line 2320
    .end local v0    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {v1, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2322
    monitor-exit v12

    return v14

    .line 2324
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catchall_0
    move-exception v0

    move/from16 v15, p6

    :goto_0
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public startVendorHal()Z
    .locals 3

    .line 372
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Failed to start vendor HAL"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 375
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Vendor Hal started successfully"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 378
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startVendorHalAp()Z
    .locals 3

    .line 337
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 339
    monitor-exit v0

    return v2

    .line 341
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    .line 343
    monitor-exit v0

    return v2

    .line 345
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startVendorHalSta()Z
    .locals 3

    .line 355
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 357
    monitor-exit v0

    return v2

    .line 359
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wifi/WifiVendorHal;->createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    .line 361
    monitor-exit v0

    return v2

    .line 363
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBgScan(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 847
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 849
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 851
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_1

    .line 852
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    .line 853
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    :cond_1
    goto :goto_0

    .line 855
    :catch_0
    move-exception v2

    .line 856
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 858
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopRssiMonitoring(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2400
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2401
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 2402
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2403
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2405
    :cond_0
    const/16 v3, 0x1d7f

    :try_start_1
    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2406
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2407
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2408
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2409
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2410
    monitor-exit v0

    return v2

    .line 2412
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopSendingOffloadedPacket(Ljava/lang/String;I)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .line 2335
    const-string v0, "slot=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2337
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2339
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2341
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2342
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2343
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2344
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2345
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2346
    monitor-exit v0

    return v2

    .line 2348
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopVendorHal()V
    .locals 3

    .line 626
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->stop()V

    .line 628
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    .line 629
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Vendor Hal stopped"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wifiFeatureMaskFromChipCapabilities(I)I
    .locals 5
    .param p1, "capabilities"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "features":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "features":I
    :goto_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1046
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 1047
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    or-int/2addr v2, v3

    .line 1045
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method wifiFeatureMaskFromStaCapabilities(I)I
    .locals 5
    .param p1, "capabilities"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, "features":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "features":I
    :goto_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1108
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 1109
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    or-int/2addr v2, v3

    .line 1107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    .end local v0    # "i":I
    :cond_1
    return v2
.end method
