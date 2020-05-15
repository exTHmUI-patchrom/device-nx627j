.class public Lcom/android/server/wifi/HalDeviceManager;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;,
        Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;,
        Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;,
        Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;,
        Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;
    }
.end annotation


# static fields
.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IFACE_TYPES_BY_PRIORITY:[I

.field private static final START_HAL_RETRY_INTERVAL_MS:I = 0x14

.field public static final START_HAL_RETRY_TIMES:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HalDevMgr"

.field private static final VDBG:Z = false


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mDbg:Z

.field private final mDebugCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/wifi/V1_0/IWifiChipEventCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field private final mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInterfaceInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private mWifi:Landroid/hardware/wifi/V1_0/IWifi;

.field private final mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    .line 495
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    .line 499
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    .line 500
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    .line 501
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    .line 503
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mDebugCallbacks:Landroid/util/SparseArray;

    .line 510
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 599
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$jNAzj5YlVhwJm5NjZ6HiKskQStI;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$jNAzj5YlVhwJm5NjZ6HiKskQStI;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 609
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HalDeviceManager$1;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 682
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 81
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 83
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 64
    sget-object v0, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HalDeviceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiIfNecessary()V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 64
    invoke-static {p0}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V

    return-void
.end method

.method private allowedToDeleteIfaceTypeForRequestedType(II[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;I)Z
    .locals 5
    .param p1, "existingIfaceType"    # I
    .param p2, "requestedIfaceType"    # I
    .param p3, "currentIfaces"    # [[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "numNecessaryInterfaces"    # I

    .line 1664
    const/4 v0, 0x0

    .line 1665
    .local v0, "numAvailableLowPriorityInterfaces":I
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1666
    .local v2, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    iget v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    if-eqz v3, :cond_0

    .line 1667
    add-int/lit8 v0, v0, 0x1

    .line 1669
    .end local v2    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :cond_0
    goto :goto_0

    .line 1670
    :cond_1
    const/4 v1, 0x1

    if-lt v0, p4, :cond_2

    .line 1671
    return v1

    .line 1675
    :cond_2
    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    .line 1676
    return v2

    .line 1680
    :cond_3
    aget-object v3, p3, p2

    array-length v3, v3

    if-eqz v3, :cond_4

    .line 1681
    return v2

    .line 1685
    :cond_4
    aget-object v3, p3, p1

    array-length v3, v3

    if-le v3, v1, :cond_5

    .line 1686
    return v1

    .line 1690
    :cond_5
    const/4 v3, 0x3

    if-ne p2, v3, :cond_6

    .line 1691
    return v2

    .line 1695
    :cond_6
    const/4 v4, 0x2

    if-ne p2, v4, :cond_8

    .line 1696
    if-ne p1, v3, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    return v1

    .line 1700
    :cond_8
    return v1
.end method

.method private canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[IIZ)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .locals 9
    .param p1, "chipInfo"    # Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .param p2, "chipMode"    # Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .param p3, "chipIfaceCombo"    # [I
    .param p4, "ifaceType"    # I
    .param p5, "lowPriority"    # Z

    .line 1508
    aget v0, p3, p4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1510
    return-object v1

    .line 1513
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v3, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1518
    .local v0, "isChipModeChangeProposed":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 1519
    sget-object v3, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget v5, v3, v2

    .line 1520
    .local v5, "type":I
    iget-object v6, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v6, v6, v5

    array-length v6, v6

    if-eqz v6, :cond_3

    .line 1521
    if-eqz p5, :cond_2

    .line 1526
    return-object v1

    .line 1528
    :cond_2
    iget-object v6, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v5

    array-length v7, v7

    invoke-direct {p0, v5, p4, v6, v7}, Lcom/android/server/wifi/HalDeviceManager;->allowedToDeleteIfaceTypeForRequestedType(II[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1534
    return-object v1

    .line 1519
    .end local v5    # "type":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1540
    :cond_4
    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    move-object v1, v2

    .line 1541
    .local v1, "ifaceCreationData":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    iput-object p1, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1542
    iget v2, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    iput v2, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    .line 1544
    return-object v1

    .line 1548
    .end local v1    # "ifaceCreationData":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v3, "interfacesToBeRemovedFirst":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    sget-object v4, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_a

    aget v6, v4, v2

    .line 1551
    .local v6, "type":I
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v6

    array-length v7, v7

    aget v8, p3, v6

    sub-int/2addr v7, v8

    .line 1554
    .local v7, "tooManyInterfaces":I
    if-ne v6, p4, :cond_6

    .line 1555
    add-int/lit8 v7, v7, 0x1

    .line 1558
    :cond_6
    if-lez v7, :cond_9

    .line 1559
    if-eqz p5, :cond_7

    .line 1564
    return-object v1

    .line 1567
    :cond_7
    iget-object v8, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-direct {p0, v6, p4, v8, v7}, Lcom/android/server/wifi/HalDeviceManager;->allowedToDeleteIfaceTypeForRequestedType(II[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1572
    return-object v1

    .line 1576
    :cond_8
    iget-object v8, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v8, v8, v6

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/HalDeviceManager;->selectInterfacesToDelete(I[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)Ljava/util/List;

    move-result-object v3

    .line 1550
    .end local v6    # "type":I
    .end local v7    # "tooManyInterfaces":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1581
    :cond_a
    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    move-object v1, v2

    .line 1582
    .restart local v1    # "ifaceCreationData":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    iput-object p1, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1583
    iget v2, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    iput v2, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    .line 1584
    iput-object v3, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    .line 1586
    return-object v1
.end method

.method private compareIfaceCreationData(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)Z
    .locals 10
    .param p1, "val1"    # Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .param p2, "val2"    # Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    .line 1602
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1603
    return v0

    .line 1604
    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 1605
    return v1

    .line 1608
    :cond_1
    sget-object v2, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    .line 1610
    .local v5, "type":I
    const/4 v6, 0x0

    .line 1611
    .local v6, "numIfacesToDelete1":I
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v8, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v7, v8, :cond_2

    .line 1613
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v5

    array-length v6, v7

    goto :goto_1

    .line 1615
    :cond_2
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 1618
    :goto_1
    const/4 v7, 0x0

    .line 1619
    .local v7, "numIfacesToDelete2":I
    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v8, v8, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v8, :cond_3

    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v8, v8, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v9, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v8, v9, :cond_3

    .line 1621
    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v8, v8, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v8, v8, v5

    array-length v7, v8

    goto :goto_2

    .line 1623
    :cond_3
    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 1626
    :goto_2
    if-ge v6, v7, :cond_4

    .line 1631
    return v1

    .line 1608
    .end local v5    # "type":I
    .end local v6    # "numIfacesToDelete1":I
    .end local v7    # "numIfacesToDelete2":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1637
    :cond_5
    return v0
.end method

.method private createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 9
    .param p1, "ifaceType"    # I
    .param p2, "lowPriority"    # Z
    .param p3, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 1318
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1319
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createIface: ifaceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lowPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v1

    .line 1324
    .local v1, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    const/4 v8, 0x0

    if-nez v1, :cond_1

    .line 1325
    const-string v2, "HalDevMgr"

    const-string v3, "createIface: no chip info found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 1327
    monitor-exit v0

    return-object v8

    .line 1330
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/HalDeviceManager;->validateInterfaceCache([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1331
    const-string v2, "HalDevMgr"

    const-string v3, "createIface: local cache is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 1333
    monitor-exit v0

    return-object v8

    .line 1336
    :cond_2
    move-object v2, p0

    move-object v3, v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/HalDeviceManager;->createIfaceIfPossible([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v2

    .line 1338
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    if-eqz v2, :cond_3

    .line 1339
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListeners()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1340
    monitor-exit v0

    return-object v8

    .line 1344
    :cond_3
    monitor-exit v0

    return-object v2

    .line 1345
    .end local v1    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createIfaceIfPossible([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 22
    .param p1, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .param p2, "ifaceType"    # I
    .param p3, "lowPriority"    # Z
    .param p4, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p5, "handler"    # Landroid/os/Handler;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    .line 1354
    iget-object v11, v7, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :try_start_0
    array-length v12, v8

    move-object v1, v0

    const/4 v0, 0x0

    .end local v0    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .local v1, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :goto_0
    if-ge v0, v12, :cond_4

    aget-object v2, v8, v0

    move-object v14, v2

    .line 1357
    .local v14, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    iget-object v2, v14, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    move-object v6, v2

    .line 1358
    .local v6, "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    iget-object v2, v6, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    move-object v3, v2

    .line 1360
    .local v3, "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    invoke-direct {v7, v3}, Lcom/android/server/wifi/HalDeviceManager;->expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I

    move-result-object v2

    .line 1366
    .local v2, "expandedIfaceCombos":[[I
    array-length v4, v2

    move-object v13, v1

    const/4 v1, 0x0

    .end local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .local v13, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :goto_3
    if-ge v1, v4, :cond_1

    aget-object v16, v2, v1

    move/from16 v17, v4

    move-object/from16 v4, v16

    .line 1367
    .local v4, "expandedIfaceCombo":[I
    move/from16 v16, v1

    move-object v1, v7

    move-object/from16 v18, v2

    move-object v2, v14

    .end local v2    # "expandedIfaceCombos":[[I
    .local v18, "expandedIfaceCombos":[[I
    move-object/from16 v19, v3

    move-object v3, v6

    .end local v3    # "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    .local v19, "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    move-object/from16 v20, v5

    move v5, v9

    move-object/from16 v21, v6

    move/from16 v6, p3

    .end local v6    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .local v21, "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/HalDeviceManager;->canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[IIZ)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    move-result-object v1

    .line 1369
    .local v1, "currentProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    invoke-direct {v7, v1, v13}, Lcom/android/server/wifi/HalDeviceManager;->compareIfaceCreationData(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1372
    move-object v13, v1

    .line 1366
    .end local v1    # "currentProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v4    # "expandedIfaceCombo":[I
    :cond_0
    add-int/lit8 v1, v16, 0x1

    move/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_3

    .line 1375
    .end local v18    # "expandedIfaceCombos":[[I
    .end local v19    # "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    .end local v21    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .restart local v6    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    :cond_1
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 1358
    .end local v6    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .restart local v21    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    move-object v1, v13

    goto :goto_2

    .line 1376
    .end local v13    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v21    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .local v1, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :cond_2
    goto :goto_1

    .line 1356
    .end local v14    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_4
    const/4 v0, 0x0

    if-eqz v1, :cond_7

    .line 1380
    invoke-direct {v7, v1, v9}, Lcom/android/server/wifi/HalDeviceManager;->executeChipReconfiguration(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;I)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v2

    .line 1381
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    if-eqz v2, :cond_7

    .line 1382
    new-instance v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    invoke-direct {v3, v7, v0}, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    move-object v0, v3

    .line 1384
    .local v0, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    iget-object v3, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v3, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iput-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 1385
    iget-object v3, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v3, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iput v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chipId:I

    .line 1386
    invoke-static {v2}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    .line 1387
    iput v9, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1388
    if-eqz v10, :cond_5

    .line 1389
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    new-instance v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    iget-object v5, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p5

    :try_start_2
    invoke-direct {v4, v7, v5, v10, v6}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/String;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1402
    .end local v0    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .end local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :catchall_0
    move-exception v0

    move-object/from16 v6, p5

    :goto_4
    move/from16 v3, p3

    goto :goto_6

    .line 1393
    .restart local v0    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .restart local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .restart local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :cond_5
    move-object/from16 v6, p5

    :goto_5
    iget-object v3, v7, Lcom/android/server/wifi/HalDeviceManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getUptimeSinceBootMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1394
    move/from16 v3, p3

    :try_start_3
    iput-boolean v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    .line 1396
    iget-boolean v4, v7, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v4, :cond_6

    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createIfaceIfPossible: added cacheEntry="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_6
    iget-object v4, v7, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    .line 1398
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 1397
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    monitor-exit v11

    return-object v2

    .line 1402
    .end local v0    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .end local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    move/from16 v3, p3

    move-object/from16 v6, p5

    monitor-exit v11

    .line 1404
    return-object v0

    .line 1402
    :catchall_2
    move-exception v0

    move/from16 v3, p3

    move-object/from16 v6, p5

    :goto_6
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method private dispatchAllDestroyedListeners()V
    .locals 5

    .line 1992
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 1994
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1995
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1996
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1997
    .local v2, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    iget-object v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    .line 1998
    .local v4, "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    invoke-virtual {v4}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->trigger()V

    .line 1999
    .end local v4    # "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    goto :goto_1

    .line 2000
    :cond_0
    iget-object v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2001
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2002
    .end local v2    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    goto :goto_0

    .line 2003
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;>;>;"
    :cond_1
    monitor-exit v0

    .line 2004
    return-void

    .line 2003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchAvailableForRequestListeners()Z
    .locals 6

    .line 1917
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1918
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v1

    .line 1919
    .local v1, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1920
    const-string v3, "HalDevMgr"

    const-string v4, "dispatchAvailableForRequestListeners: no chip info found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 1922
    monitor-exit v0

    return v2

    .line 1929
    :cond_0
    sget-object v3, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    .line 1930
    .local v5, "ifaceType":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V

    .line 1929
    .end local v5    # "ifaceType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1932
    .end local v1    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_1
    monitor-exit v0

    .line 1934
    const/4 v0, 0x1

    return v0

    .line 1932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V
    .locals 6
    .param p1, "ifaceType"    # I
    .param p2, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1941
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    .line 1943
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1945
    .local v1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1946
    monitor-exit v0

    return-void

    .line 1949
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/HalDeviceManager;->isItPossibleToCreateIface([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;I)Z

    move-result v2

    .line 1955
    .local v2, "isAvailable":Z
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1956
    .local v4, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v2, :cond_2

    .line 1961
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;->triggerWithArg(Z)V

    .line 1963
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    .end local v4    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 1965
    .end local v1    # "listeners":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    .end local v2    # "isAvailable":Z
    :cond_3
    monitor-exit v0

    .line 1966
    return-void

    .line 1965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchDestroyedListeners(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1973
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1974
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1975
    .local v1, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v1, :cond_0

    .line 1976
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDestroyedListeners: no cache entry for iface(name)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    monitor-exit v0

    return-void

    .line 1980
    :cond_0
    iget-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    .line 1981
    .local v3, "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    invoke-virtual {v3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->trigger()V

    .line 1982
    .end local v3    # "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    goto :goto_0

    .line 1983
    :cond_1
    iget-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1984
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    .end local v1    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    monitor-exit v0

    .line 1986
    return-void

    .line 1985
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeChipReconfiguration(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;I)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 12
    .param p1, "ifaceCreationData"    # Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .param p2, "ifaceType"    # I

    .line 1765
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1766
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeChipReconfiguration: ifaceCreationData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ifaceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1772
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v2, v2, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v2, v2, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v4, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1774
    .local v2, "isModeConfigNeeded":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v4, :cond_3

    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModeConfigNeeded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_3
    if-eqz v2, :cond_7

    .line 1782
    iget-object v4, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v4, v4, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 1783
    .local v7, "ifaceInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 1784
    .local v10, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v11, v10, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 1783
    .end local v10    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1782
    .end local v7    # "ifaceInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1788
    :cond_5
    iget-object v3, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v3, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget v4, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1790
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v4, :cond_6

    .line 1791
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeChipReconfiguration: configureChip error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1791
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 1795
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_6
    goto :goto_5

    .line 1797
    :cond_7
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    .line 1798
    .local v4, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v5, v4, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 1799
    .end local v4    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_4

    .line 1803
    :cond_8
    :goto_5
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 1804
    .local v3, "statusResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/WifiStatus;>;"
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 1805
    .local v4, "ifaceResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiIface;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_6

    .line 1828
    :pswitch_0
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$rMUl3IrUZdoNc-Vrb1rqn8XExY0;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$rMUl3IrUZdoNc-Vrb1rqn8XExY0;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto :goto_6

    .line 1821
    :pswitch_1
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$LydIQHqKB4e2ETtZbZ2Ps6wJmZg;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$LydIQHqKB4e2ETtZbZ2Ps6wJmZg;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    .line 1826
    goto :goto_6

    .line 1814
    :pswitch_2
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    .line 1819
    goto :goto_6

    .line 1807
    :pswitch_3
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$csull9RuGux3O9fMU2TmHd3K8YE;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$csull9RuGux3O9fMU2TmHd3K8YE;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    .line 1812
    nop

    .line 1836
    :goto_6
    iget-object v5, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/wifi/V1_0/WifiStatus;

    iget v5, v5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v5, :cond_9

    .line 1837
    const-string v5, "HalDevMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeChipReconfiguration: failed to create interface ifaceType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 1838
    invoke-static {v7}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1837
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1839
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    .line 1842
    :cond_9
    :try_start_4
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/wifi/V1_0/IWifiIface;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    return-object v5

    .line 1847
    .end local v2    # "isModeConfigNeeded":Z
    .end local v3    # "statusResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/WifiStatus;>;"
    .end local v4    # "ifaceResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiIface;>;"
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 1843
    :catch_0
    move-exception v2

    .line 1844
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeChipReconfiguration exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    monitor-exit v0

    return-object v1

    .line 1847
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_7
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I
    .locals 12
    .param p1, "chipIfaceCombo"    # Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 1449
    const/4 v0, 0x1

    .line 1450
    .local v0, "numOfCombos":I
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 1451
    .local v2, "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    nop

    .local v3, "i":I
    :goto_1
    iget v4, v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    if-ge v3, v4, :cond_0

    .line 1452
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v0, v4

    .line 1451
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1454
    .end local v2    # "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 1456
    :cond_1
    sget-object v1, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 1458
    .local v1, "expandedIfaceCombos":[[I
    move v2, v0

    .line 1459
    .local v2, "span":I
    iget-object v4, p1, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 1460
    .local v5, "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    move v6, v2

    move v2, v3

    .local v2, "i":I
    .local v6, "span":I
    :goto_3
    iget v7, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    if-ge v2, v7, :cond_3

    .line 1461
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    .line 1462
    move v7, v3

    .local v7, "k":I
    :goto_4
    if-ge v7, v0, :cond_2

    .line 1463
    aget-object v8, v1, v7

    iget-object v9, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    div-int v10, v7, v6

    iget-object v11, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 1462
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1460
    .end local v7    # "k":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1466
    .end local v2    # "i":I
    .end local v5    # "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    :cond_3
    nop

    .line 1459
    move v2, v6

    goto :goto_2

    .line 1468
    .end local v6    # "span":I
    .local v2, "span":I
    :cond_4
    return-object v1
.end method

.method private getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .locals 34

    .line 853
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 854
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 855
    const-string v0, "HalDevMgr"

    const-string v1, "getAllChipInfo: called but mWifi is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v9

    .line 860
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 861
    .local v0, "statusOk":Landroid/util/MutableBoolean;
    new-instance v1, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v1}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v11, v1

    .line 864
    .local v11, "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v1, v7, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$oV0zj57wyQrMevn_BdPhBTwDZhY;

    invoke-direct {v2, v0, v11}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$oV0zj57wyQrMevn_BdPhBTwDZhY;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifi;->getChipIds(Landroid/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V

    .line 872
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 873
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v9

    .line 877
    :cond_1
    :try_start_3
    iget-object v1, v11, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 878
    const-string v1, "HalDevMgr"

    const-string v2, "Should have at least 1 chip!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 879
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v9

    .line 882
    :cond_2
    const/4 v1, 0x0

    .line 883
    .local v1, "chipInfoIndex":I
    :try_start_5
    iget-object v2, v11, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-object v12, v2

    .line 885
    .local v12, "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v13, v2

    .line 886
    .local v13, "chipResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiChip;>;"
    iget-object v2, v11, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v1

    .end local v1    # "chipInfoIndex":I
    .local v15, "chipInfoIndex":I
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v1

    .line 887
    .local v6, "chipId":Ljava/lang/Integer;
    iget-object v1, v7, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ZUYyxSyT0hYOkWCRHSzePknlIo0;

    invoke-direct {v3, v0, v13}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ZUYyxSyT0hYOkWCRHSzePknlIo0;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifi;->getChip(ILandroid/hardware/wifi/V1_0/IWifi$getChipCallback;)V

    .line 895
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_3

    .line 896
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v9

    .line 899
    :cond_3
    :try_start_7
    new-instance v1, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v1}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v5, v1

    .line 900
    .local v5, "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$aTCTYHFoCRvUuzhQPn5Voq6cUFw;

    invoke-direct {v2, v0, v5}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$aTCTYHFoCRvUuzhQPn5Voq6cUFw;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 909
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_4

    .line 910
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v9

    .line 913
    :cond_4
    :try_start_9
    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v4, v1

    .line 914
    .local v4, "currentModeValidResp":Landroid/util/MutableBoolean;
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v10}, Landroid/util/MutableInt;-><init>(I)V

    move-object v3, v1

    .line 915
    .local v3, "currentModeResp":Landroid/util/MutableInt;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;

    invoke-direct {v2, v0, v4, v3}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;-><init>(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 926
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v1, :cond_5

    .line 927
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-object v9

    .line 930
    :cond_5
    :try_start_b
    new-instance v1, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v1}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v2, v1

    .line 931
    .local v2, "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v10}, Landroid/util/MutableInt;-><init>(I)V

    .line 933
    .local v1, "ifaceIndex":Landroid/util/MutableInt;
    iget-object v10, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v10, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v9, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$W3qf_0tQXw4SlDmLzDZsc-YHrJQ;

    invoke-direct {v9, v0, v2}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$W3qf_0tQXw4SlDmLzDZsc-YHrJQ;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v10, v9}, Landroid/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 942
    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v9, :cond_6

    .line 943
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v8, 0x0

    return-object v8

    .line 946
    :cond_6
    :try_start_d
    iget-object v9, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    .line 947
    .local v9, "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v10, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 948
    .local v17, "ifaceName":Ljava/lang/String;
    move-object/from16 v18, v1

    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .end local v1    # "ifaceIndex":Landroid/util/MutableInt;
    .local v18, "ifaceIndex":Landroid/util/MutableInt;
    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    move-object/from16 v19, v10

    new-instance v10, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$HLPmFjXA6r19Ma_sML3KIFjYXI8;

    move-object/from16 v21, v11

    move-object/from16 v20, v18

    move-object v11, v1

    .end local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v18    # "ifaceIndex":Landroid/util/MutableInt;
    .local v20, "ifaceIndex":Landroid/util/MutableInt;
    .local v21, "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object v1, v10

    move-object/from16 v22, v14

    move-object v14, v2

    move-object v2, v7

    .end local v2    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v14, "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v23, v3

    move-object v3, v0

    .end local v3    # "currentModeResp":Landroid/util/MutableInt;
    .local v23, "currentModeResp":Landroid/util/MutableInt;
    move-object/from16 v24, v4

    move-object/from16 v4, v17

    .end local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .local v24, "currentModeValidResp":Landroid/util/MutableBoolean;
    move-object/from16 v25, v5

    move-object v5, v9

    .end local v5    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .local v25, "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    move-object/from16 v26, v9

    move-object v9, v6

    move-object/from16 v6, v20

    .end local v6    # "chipId":Ljava/lang/Integer;
    .local v9, "chipId":Ljava/lang/Integer;
    .local v26, "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$HLPmFjXA6r19Ma_sML3KIFjYXI8;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    move-object/from16 v1, v17

    invoke-interface {v11, v1, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 960
    .end local v17    # "ifaceName":Ljava/lang/String;
    .local v1, "ifaceName":Ljava/lang/String;
    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v2, :cond_7

    .line 961
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v2, 0x0

    return-object v2

    .line 963
    .end local v1    # "ifaceName":Ljava/lang/String;
    :cond_7
    nop

    .line 947
    move-object v6, v9

    move-object v2, v14

    move-object/from16 v10, v19

    move-object/from16 v1, v20

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v9, v26

    goto :goto_1

    .line 965
    .end local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v20    # "ifaceIndex":Landroid/util/MutableInt;
    .end local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v23    # "currentModeResp":Landroid/util/MutableInt;
    .end local v24    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .end local v25    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .end local v26    # "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .local v1, "ifaceIndex":Landroid/util/MutableInt;
    .restart local v2    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "currentModeResp":Landroid/util/MutableInt;
    .restart local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .restart local v5    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .restart local v6    # "chipId":Ljava/lang/Integer;
    .local v9, "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .restart local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_8
    move-object/from16 v20, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    move-object v14, v2

    move-object v9, v6

    .end local v1    # "ifaceIndex":Landroid/util/MutableInt;
    .end local v2    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "currentModeResp":Landroid/util/MutableInt;
    .end local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .end local v5    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .end local v6    # "chipId":Ljava/lang/Integer;
    .end local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local v9, "chipId":Ljava/lang/Integer;
    .restart local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v20    # "ifaceIndex":Landroid/util/MutableInt;
    .restart local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v23    # "currentModeResp":Landroid/util/MutableInt;
    .restart local v24    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .restart local v25    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .restart local v26    # "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    move-object/from16 v10, v20

    const/4 v1, 0x0

    :try_start_f
    iput v1, v10, Landroid/util/MutableInt;->value:I

    .line 966
    .end local v20    # "ifaceIndex":Landroid/util/MutableInt;
    .local v10, "ifaceIndex":Landroid/util/MutableInt;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$7IqRxcNtEnrXS9uVkc3w4xT9lgk;

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$7IqRxcNtEnrXS9uVkc3w4xT9lgk;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    .line 975
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v1, :cond_9

    .line 976
    :try_start_10
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 979
    :cond_9
    :try_start_11
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object v11, v1

    .line 980
    .local v11, "apIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    .line 981
    .local v5, "ifaceName":Ljava/lang/String;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$LisNucJKN8TgUZ4F_hMe1s79mng;

    move-object v1, v3

    move-object v2, v7

    move-object/from16 v27, v9

    move-object v9, v3

    move-object v3, v0

    .end local v9    # "chipId":Ljava/lang/Integer;
    .local v27, "chipId":Ljava/lang/Integer;
    move-object/from16 v28, v12

    move-object v12, v4

    move-object v4, v5

    .end local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .local v28, "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    move/from16 v29, v15

    move-object v15, v5

    move-object v5, v11

    .end local v5    # "ifaceName":Ljava/lang/String;
    .local v15, "ifaceName":Ljava/lang/String;
    .local v29, "chipInfoIndex":I
    move-object/from16 v16, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$LisNucJKN8TgUZ4F_hMe1s79mng;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v12, v15, v9}, Landroid/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    .line 993
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-nez v1, :cond_a

    .line 994
    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 996
    .end local v15    # "ifaceName":Ljava/lang/String;
    :cond_a
    nop

    .line 980
    move-object/from16 v6, v16

    move-object/from16 v9, v27

    move-object/from16 v12, v28

    move/from16 v15, v29

    goto :goto_2

    .line 998
    .end local v27    # "chipId":Ljava/lang/Integer;
    .end local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v29    # "chipInfoIndex":I
    .restart local v9    # "chipId":Ljava/lang/Integer;
    .restart local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .local v15, "chipInfoIndex":I
    :cond_b
    move-object/from16 v27, v9

    move-object/from16 v28, v12

    move/from16 v29, v15

    .end local v9    # "chipId":Ljava/lang/Integer;
    .end local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v15    # "chipInfoIndex":I
    .restart local v27    # "chipId":Ljava/lang/Integer;
    .restart local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .restart local v29    # "chipInfoIndex":I
    const/4 v1, 0x0

    :try_start_13
    iput v1, v10, Landroid/util/MutableInt;->value:I

    .line 999
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$INj3cXuz7UCfJAOVdMEteizngtw;

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$INj3cXuz7UCfJAOVdMEteizngtw;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 1008
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v1, :cond_c

    .line 1009
    :try_start_14
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1012
    :cond_c
    :try_start_15
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object v9, v1

    .line 1013
    .local v9, "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    .line 1014
    .local v15, "ifaceName":Ljava/lang/String;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ynHs4R12k_5_9Qxr5asWSHdsuE4;

    move-object v1, v5

    move-object v2, v7

    move-object v3, v0

    move-object v4, v15

    move-object/from16 v30, v12

    move-object v12, v5

    move-object v5, v9

    move-object/from16 v31, v9

    move-object v9, v6

    move-object v6, v10

    .end local v9    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .local v31, "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ynHs4R12k_5_9Qxr5asWSHdsuE4;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v9, v15, v12}, Landroid/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 1026
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-nez v1, :cond_d

    .line 1027
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1029
    .end local v15    # "ifaceName":Ljava/lang/String;
    :cond_d
    nop

    .line 1013
    move-object/from16 v12, v30

    move-object/from16 v9, v31

    goto :goto_3

    .line 1031
    .end local v31    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .restart local v9    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    :cond_e
    move-object/from16 v31, v9

    .end local v9    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .restart local v31    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    const/4 v1, 0x0

    :try_start_17
    iput v1, v10, Landroid/util/MutableInt;->value:I

    .line 1032
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$d3wDJSLIYr6Z1fiH2ZtAJWELMyY;

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$d3wDJSLIYr6Z1fiH2ZtAJWELMyY;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 1041
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-nez v1, :cond_f

    .line 1042
    :try_start_18
    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1045
    :cond_f
    :try_start_19
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object v9, v1

    .line 1046
    .local v9, "nanIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    .line 1047
    .restart local v15    # "ifaceName":Ljava/lang/String;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;

    move-object v1, v5

    move-object v2, v7

    move-object v3, v0

    move-object v4, v15

    move-object/from16 v32, v12

    move-object v12, v5

    move-object v5, v9

    move-object/from16 v33, v14

    move-object v14, v6

    move-object v6, v10

    .end local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v33, "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v14, v15, v12}, Landroid/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 1059
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-nez v1, :cond_10

    .line 1060
    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1062
    .end local v15    # "ifaceName":Ljava/lang/String;
    :cond_10
    nop

    .line 1046
    move-object/from16 v12, v32

    move-object/from16 v14, v33

    goto :goto_4

    .line 1064
    .end local v33    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_11
    move-object/from16 v33, v14

    .end local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v33    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_1b
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1065
    .local v1, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    add-int/lit8 v15, v29, 0x1

    .local v15, "chipInfoIndex":I
    aput-object v1, v28, v29

    .line 1067
    .end local v29    # "chipInfoIndex":I
    iget-object v2, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    iput-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 1068
    move-object/from16 v2, v27

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v27    # "chipId":Ljava/lang/Integer;
    .local v2, "chipId":Ljava/lang/Integer;
    iput v3, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    .line 1069
    move-object/from16 v3, v25

    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .end local v25    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .local v3, "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    .line 1070
    move-object/from16 v4, v24

    iget-boolean v5, v4, Landroid/util/MutableBoolean;->value:Z

    .end local v24    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .restart local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    iput-boolean v5, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    .line 1071
    move-object/from16 v5, v23

    iget v6, v5, Landroid/util/MutableInt;->value:I

    .end local v23    # "currentModeResp":Landroid/util/MutableInt;
    .local v5, "currentModeResp":Landroid/util/MutableInt;
    iput v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    .line 1072
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v12, 0x0

    aput-object v26, v6, v12

    .line 1073
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v14, 0x1

    aput-object v11, v6, v14

    .line 1074
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v14, 0x2

    aput-object v31, v6, v14

    .line 1075
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v14, 0x3

    aput-object v9, v6, v14
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1076
    .end local v1    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v2    # "chipId":Ljava/lang/Integer;
    .end local v3    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .end local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .end local v5    # "currentModeResp":Landroid/util/MutableInt;
    .end local v9    # "nanIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v10    # "ifaceIndex":Landroid/util/MutableInt;
    .end local v11    # "apIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v26    # "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v31    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v33    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    nop

    .line 886
    move v10, v12

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v28

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1078
    .end local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .local v11, "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_12
    move-object/from16 v21, v11

    move-object/from16 v28, v12

    move/from16 v29, v15

    .end local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v15    # "chipInfoIndex":I
    .restart local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .restart local v29    # "chipInfoIndex":I
    :try_start_1c
    monitor-exit v8

    return-object v28

    .line 1079
    .end local v0    # "statusOk":Landroid/util/MutableBoolean;
    .end local v13    # "chipResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiChip;>;"
    .end local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v29    # "chipInfoIndex":I
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllChipInfoAndValidateCache exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    .end local v0    # "e":Landroid/os/RemoteException;
    monitor-exit v8

    .line 1084
    const/4 v1, 0x0

    return-object v1

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    throw v0
.end method

.method public static getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;
    .locals 5
    .param p0, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 390
    if-nez p0, :cond_0

    .line 391
    const-string v0, "<null>"

    return-object v0

    .line 394
    :cond_0
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 396
    .local v0, "nameResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {p0, v1}, Landroid/hardware/wifi/V1_0/IWifiIface;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on getName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private static getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I
    .locals 5
    .param p0, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 2093
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 2095
    .local v0, "typeResp":Landroid/util/MutableInt;
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ErxCpEghr4yhQpGHX1NQPumvouc;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ErxCpEghr4yhQpGHX1NQPumvouc;-><init>(Landroid/util/MutableInt;)V

    invoke-interface {p0, v1}, Landroid/hardware/wifi/V1_0/IWifiIface;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    goto :goto_0

    .line 2102
    :catch_0
    move-exception v1

    .line 2103
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on getType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v1, v0, Landroid/util/MutableInt;->value:I

    return v1
.end method

.method private initIServiceManagerIfNecessary()V
    .locals 6

    .line 627
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    const-string v1, "initIServiceManagerIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_1

    .line 631
    monitor-exit v0

    return-void

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 635
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_2

    .line 636
    const-string v1, "HalDevMgr"

    const-string v2, "Failed to get IServiceManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 639
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 641
    const-string v2, "HalDevMgr"

    const-string v3, "Error on linkToDeath on IServiceManager"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 646
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v3, "android.hardware.wifi@1.0::IWifi"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v2, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 648
    const-string v2, "HalDevMgr"

    const-string v3, "Failed to register a listener for IWifi service"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 654
    :cond_4
    goto :goto_0

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while operating on IServiceManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 656
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private initIWifiChipDebugListeners()V
    .locals 0

    .line 747
    return-void
.end method

.method private initIWifiIfNecessary()V
    .locals 5

    .line 702
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    const-string v1, "initIWifiIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-eqz v1, :cond_1

    .line 706
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 710
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager;->getWifiServiceMockable()Landroid/hardware/wifi/V1_0/IWifi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    .line 711
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v1, :cond_2

    .line 712
    const-string v1, "HalDevMgr"

    const-string v2, "IWifi not (yet) available - but have a listener for it ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 716
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/wifi/V1_0/IWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 717
    const-string v1, "HalDevMgr"

    const-string v2, "Error on linkToDeath on IWifi - will retry later"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 718
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 721
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifi;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 722
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v2, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v2, :cond_4

    .line 723
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWifi.registerEventCallback failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 725
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 728
    :cond_4
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 731
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while operating on IWifi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method private initializeInternal()V
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIServiceManagerIfNecessary()V

    .line 585
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isSupportedInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiIfNecessary()V

    .line 588
    :cond_0
    return-void
.end method

.method private isItPossibleToCreateIface([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;I)Z
    .locals 21
    .param p1, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .param p2, "ifaceType"    # I

    move-object/from16 v0, p1

    .line 1415
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v10, v0, v3

    .line 1416
    .local v10, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    iget-object v4, v10, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    .line 1417
    .local v12, "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    iget-object v4, v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 1419
    .local v14, "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    move-object/from16 v15, p0

    invoke-direct {v15, v14}, Lcom/android/server/wifi/HalDeviceManager;->expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I

    move-result-object v9

    .line 1425
    .local v9, "expandedIfaceCombos":[[I
    array-length v8, v9

    move v7, v2

    :goto_3
    if-ge v7, v8, :cond_1

    aget-object v16, v9, v7

    .line 1426
    .local v16, "expandedIfaceCombo":[I
    const/16 v17, 0x0

    move-object v4, v15

    move-object v5, v10

    move-object v6, v12

    move/from16 v18, v7

    move-object/from16 v7, v16

    move/from16 v19, v8

    move/from16 v8, p2

    move-object/from16 v20, v9

    move/from16 v9, v17

    .end local v9    # "expandedIfaceCombos":[[I
    .local v20, "expandedIfaceCombos":[[I
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/HalDeviceManager;->canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[IIZ)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1428
    const/4 v1, 0x1

    return v1

    .line 1425
    .end local v16    # "expandedIfaceCombo":[I
    :cond_0
    add-int/lit8 v7, v18, 0x1

    move/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_3

    .line 1431
    .end local v14    # "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    .end local v20    # "expandedIfaceCombos":[[I
    :cond_1
    goto :goto_2

    .line 1432
    .end local v12    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    :cond_2
    move-object/from16 v15, p0

    goto :goto_1

    .line 1415
    .end local v10    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_3
    move-object/from16 v15, p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1435
    :cond_4
    move-object/from16 v15, p0

    return v2
.end method

.method private isSupportedInternal()Z
    .locals 6

    .line 667
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 669
    const-string v1, "HalDevMgr"

    const-string v3, "isSupported: called but mServiceManager is null!?"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 673
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v3, "android.hardware.wifi@1.0::IWifi"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    :try_start_2
    monitor-exit v0

    return v2

    .line 675
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while operating on IServiceManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    monitor-exit v0

    return v2

    .line 679
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isWifiStarted()Z
    .locals 6

    .line 1140
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_0

    .line 1143
    const-string v2, "HalDevMgr"

    const-string v3, "isWifiStarted called but mWifi is null!?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1146
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifi;->isStarted()Z

    move-result v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return v2

    .line 1152
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v2

    .line 1149
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiStarted exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    monitor-exit v0

    return v1

    .line 1152
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method static synthetic lambda$createRttController$1(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V
    .locals 3
    .param p0, "rttResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "rtt"    # Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 464
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 465
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_0

    .line 467
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifiChip.createRttController failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$19(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 1809
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1810
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1811
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$20(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiApIface;

    .line 1816
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1817
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1818
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$21(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 1823
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1824
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1825
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$22(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 1830
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1831
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1832
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$10(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 935
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 936
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 937
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 939
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStaIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$11(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "staIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 950
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 951
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 952
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 953
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 954
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 955
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 956
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 957
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStaIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$12(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 968
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 969
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 970
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 972
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$13(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "apIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiApIface;

    .line 983
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 984
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 985
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 986
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 987
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 988
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 989
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 990
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$14(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 1001
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1002
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1003
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1005
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getP2pIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$15(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "p2pIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 1016
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1017
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1018
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1019
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 1020
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1021
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 1022
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 1023
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getP2pIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$16(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 1034
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1035
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1036
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1038
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNanIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$17(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "nanIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 1049
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1050
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1051
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1052
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 1053
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1054
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 1055
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 1056
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNanIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$6(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipIdsResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chipIds"    # Ljava/util/ArrayList;

    .line 865
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 866
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 867
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 869
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipIds failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$7(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 888
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 889
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 890
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 892
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChip failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$8(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "availableModesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "modes"    # Ljava/util/ArrayList;

    .line 902
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 903
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 904
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 906
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableModes failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$9(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "currentModeValidResp"    # Landroid/util/MutableBoolean;
    .param p2, "currentModeResp"    # Landroid/util/MutableInt;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "modeId"    # I

    .line 916
    iget v0, p3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 917
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 918
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    .line 919
    iput p4, p2, Landroid/util/MutableInt;->value:I

    goto :goto_1

    .line 920
    :cond_1
    iget v0, p3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 921
    iput-boolean v1, p0, Landroid/util/MutableBoolean;->value:Z

    goto :goto_1

    .line 923
    :cond_2
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_1
    return-void
.end method

.method static synthetic lambda$getName$0(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 3
    .param p0, "nameResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "name"    # Ljava/lang/String;

    .line 397
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 398
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_0

    .line 400
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on getName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-void
.end method

.method static synthetic lambda$getSupportedIfaceTypesInternal$18(Landroid/util/MutableInt;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3
    .param p0, "chipIdIfProvided"    # Landroid/util/MutableInt;
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "id"    # I

    .line 1279
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 1280
    iput p3, p0, Landroid/util/MutableInt;->value:I

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    .line 1283
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedIfaceTypesInternal: IWifiChip.getId() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1287
    :goto_0
    return-void
.end method

.method static synthetic lambda$getType$23(Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3
    .param p0, "typeResp"    # Landroid/util/MutableInt;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "type"    # I

    .line 2096
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 2097
    iput p2, p0, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 2099
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :goto_0
    return-void
.end method

.method private static synthetic lambda$initIWifiChipDebugListeners$4(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipIdsResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chipIds"    # Ljava/util/ArrayList;

    .line 757
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 758
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 759
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 761
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipIds failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_1
    return-void
.end method

.method private static synthetic lambda$initIWifiChipDebugListeners$5(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 778
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 779
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 780
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 782
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChip failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wifi/HalDeviceManager;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 601
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 606
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/wifi/HalDeviceManager;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 684
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifi HAL service died! Have a listener for it ... cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    .line 687
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V

    .line 689
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private managerStatusListenerDispatch()V
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;

    .line 1248
    .local v2, "cb":Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;
    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;->trigger()V

    .line 1249
    .end local v2    # "cb":Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;
    goto :goto_0

    .line 1250
    :cond_0
    monitor-exit v0

    .line 1251
    return-void

    .line 1250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 10
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1851
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v1

    .line 1853
    .local v1, "type":I
    iget-boolean v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeIfaceInternal: iface(name)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1856
    const-string v2, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeIfaceInternal: can\'t get type -- iface(name)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return v3

    .line 1860
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1861
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v4, :cond_2

    .line 1862
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeIfaceInternal: null IWifi -- iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    monitor-exit v2

    return v3

    .line 1866
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v4

    .line 1867
    .local v4, "chip":Landroid/hardware/wifi/V1_0/IWifiChip;
    if-nez v4, :cond_3

    .line 1868
    const-string v5, "HalDevMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeIfaceInternal: null IWifiChip -- iface(name)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    monitor-exit v2

    return v3

    .line 1872
    :cond_3
    if-nez v0, :cond_4

    .line 1873
    const-string v5, "HalDevMgr"

    const-string v6, "removeIfaceInternal: can\'t get name"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1877
    :cond_4
    const/4 v5, 0x0

    .line 1879
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    packed-switch v1, :pswitch_data_0

    .line 1893
    :try_start_1
    const-string v6, "HalDevMgr"

    goto :goto_1

    .line 1890
    :pswitch_0
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1891
    goto :goto_0

    .line 1887
    :pswitch_1
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1888
    goto :goto_0

    .line 1884
    :pswitch_2
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1885
    goto :goto_0

    .line 1881
    :pswitch_3
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1882
    nop

    .line 1898
    :goto_0
    goto :goto_2

    .line 1893
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeIfaceInternal: invalid type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1894
    :try_start_2
    monitor-exit v2

    return v3

    .line 1896
    :catch_0
    move-exception v6

    .line 1897
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "HalDevMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IWifiChip.removeXxxIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/HalDeviceManager;->dispatchDestroyedListeners(Ljava/lang/String;I)V

    .line 1903
    if-eqz v5, :cond_5

    iget v6, v5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v6, :cond_5

    .line 1904
    const/4 v3, 0x1

    monitor-exit v2

    return v3

    .line 1906
    :cond_5
    const-string v6, "HalDevMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IWifiChip.removeXxxIface failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    monitor-exit v2

    return v3

    .line 1909
    .end local v4    # "chip":Landroid/hardware/wifi/V1_0/IWifiChip;
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private selectInterfacesToDelete(I[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)Ljava/util/List;
    .locals 10
    .param p1, "excessInterfaces"    # I
    .param p2, "interfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;",
            ">;"
        }
    .end annotation

    .line 1718
    const/4 v0, 0x0

    .line 1719
    .local v0, "lookupError":Z
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 1720
    .local v1, "orderedListLowPriority":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 1721
    .local v2, "orderedList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p2, v5

    .line 1722
    .local v6, "info":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v7, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    iget-object v8, v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1723
    invoke-static {v9}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1722
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1724
    .local v7, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v7, :cond_0

    .line 1725
    const-string v3, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectInterfacesToDelete: can\'t find cache entry with name="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const/4 v0, 0x1

    .line 1728
    goto :goto_2

    .line 1730
    :cond_0
    iget-boolean v8, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    if-eqz v8, :cond_1

    .line 1731
    iget-wide v8, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J

    invoke-virtual {v1, v8, v9, v6}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_1

    .line 1733
    :cond_1
    iget-wide v8, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J

    invoke-virtual {v2, v8, v9, v6}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 1721
    .end local v6    # "info":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v7    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1737
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 1738
    const-string v3, "HalDevMgr"

    const-string v4, "selectInterfacesToDelete: falling back to arbitrary selection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1741
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1742
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    nop

    .local v4, "i":I
    :goto_3
    if-ge v4, p1, :cond_5

    .line 1743
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 1744
    .local v5, "lowPriorityNextIndex":I
    if-ltz v5, :cond_4

    .line 1745
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1747
    :cond_4
    nop

    .line 1748
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    .line 1747
    invoke-virtual {v2, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1742
    .end local v5    # "lowPriorityNextIndex":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1751
    .end local v4    # "i":I
    :cond_5
    return-object v3
.end method

.method private startWifi()Z
    .locals 7

    .line 1158
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_0

    .line 1161
    const-string v2, "HalDevMgr"

    const-string v3, "startWifi called but mWifi is null!?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1164
    :cond_0
    move v2, v1

    .line 1165
    .local v2, "triedCount":I
    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    .line 1166
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v3}, Landroid/hardware/wifi/V1_0/IWifi;->start()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1167
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v4, :cond_2

    .line 1168
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiChipDebugListeners()V

    .line 1169
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V

    .line 1170
    if-eqz v2, :cond_1

    .line 1171
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start IWifi succeeded after trying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1174
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 1175
    :cond_2
    :try_start_4
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 1177
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start IWifi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Retrying..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1180
    const-wide/16 v4, 0x14

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1183
    goto :goto_1

    .line 1181
    :catch_0
    move-exception v4

    .line 1184
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1190
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 1187
    .restart local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_3
    :try_start_6
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start IWifi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1188
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v1

    .line 1191
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_4
    :try_start_8
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start IWifi after trying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1192
    :try_start_9
    monitor-exit v0

    return v1

    .line 1198
    .end local v2    # "triedCount":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1194
    :catch_1
    move-exception v2

    .line 1195
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startWifi exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    monitor-exit v0

    return v1

    .line 1198
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 2083
    if-nez p0, :cond_0

    .line 2084
    const-string v0, "status=null"

    return-object v0

    .line 2086
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2087
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private stopWifi()V
    .locals 5

    .line 1204
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v1, :cond_0

    .line 1207
    const-string v1, "HalDevMgr"

    const-string v2, "stopWifi called but mWifi is null!?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v1}, Landroid/hardware/wifi/V1_0/IWifi;->stop()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1210
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v2, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v2, :cond_1

    .line 1211
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stop IWifi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_0
    goto :goto_1

    .line 1220
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1217
    :catch_0
    move-exception v1

    .line 1218
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopWifi exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 1221
    return-void

    .line 1220
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private teardownInternal()V
    .locals 2

    .line 591
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V

    .line 592
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAllDestroyedListeners()V

    .line 593
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 594
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 595
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 596
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 597
    return-void
.end method

.method private validateInterfaceCache([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)Z
    .locals 12
    .param p1, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1098
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1101
    .local v2, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    const/4 v3, 0x0

    .line 1102
    .local v3, "matchingChipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, p1, v6

    .line 1103
    .local v7, "ci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    iget v8, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iget v9, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chipId:I

    if-ne v8, v9, :cond_0

    .line 1104
    move-object v3, v7

    .line 1105
    goto :goto_2

    .line 1102
    .end local v7    # "ci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1108
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 1109
    const-string v1, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateInterfaceCache: no chip found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit v0

    return v5

    .line 1114
    :cond_2
    iget-object v4, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget v6, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    aget-object v4, v4, v6

    .line 1115
    .local v4, "ifaceInfoList":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    if-nez v4, :cond_3

    .line 1116
    const-string v1, "HalDevMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validateInterfaceCache: invalid type on entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    monitor-exit v0

    return v5

    .line 1120
    :cond_3
    const/4 v6, 0x0

    .line 1121
    .local v6, "matchFound":Z
    array-length v7, v4

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v4, v8

    .line 1122
    .local v9, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v10, v9, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1123
    const/4 v6, 0x1

    .line 1124
    goto :goto_4

    .line 1121
    .end local v9    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1127
    :cond_5
    :goto_4
    if-nez v6, :cond_6

    .line 1128
    const-string v1, "HalDevMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateInterfaceCache: no interface found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    monitor-exit v0

    return v5

    .line 1131
    .end local v2    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .end local v3    # "matchingChipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v4    # "ifaceInfoList":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v6    # "matchFound":Z
    :cond_6
    goto/16 :goto_0

    .line 1132
    :cond_7
    monitor-exit v0

    .line 1134
    const/4 v0, 0x1

    return v0

    .line 1132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiApIface;
    .locals 2
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 236
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiApIface;

    return-object v0
.end method

.method public createNanIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .locals 2
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 252
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiNanIface;

    return-object v0
.end method

.method public createP2pIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;
    .locals 2
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 244
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    return-object v0
.end method

.method public createRttController()Landroid/hardware/wifi/V1_0/IWifiRttController;
    .locals 11

    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 448
    const-string v1, "HalDevMgr"

    const-string v3, "createRttController: null IWifi"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    monitor-exit v0

    return-object v2

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v1

    .line 453
    .local v1, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-nez v1, :cond_1

    .line 454
    const-string v3, "HalDevMgr"

    const-string v4, "createRttController: no chip info found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 456
    monitor-exit v0

    return-object v2

    .line 459
    :cond_1
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 460
    .local v5, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    new-instance v6, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v6}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .local v6, "rttResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiRttController;>;"
    :try_start_1
    iget-object v7, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v8, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$joTzPjiPCypwHxT_jbl9OKHFMJo;

    invoke-direct {v8, v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$joTzPjiPCypwHxT_jbl9OKHFMJo;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v7, v2, v8}, Landroid/hardware/wifi/V1_0/IWifiChip;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    goto :goto_1

    .line 472
    :catch_0
    move-exception v7

    .line 473
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "HalDevMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IWifiChip.createRttController exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v7, v6, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 476
    iget-object v2, v6, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiRttController;

    monitor-exit v0

    return-object v2

    .line 459
    .end local v5    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v6    # "rttResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiRttController;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    :cond_3
    const-string v3, "HalDevMgr"

    const-string v4, "createRttController: not available from any of the chips"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    monitor-exit v0

    return-object v2

    .line 482
    .end local v1    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .param p1, "lowPrioritySta"    # Z
    .param p2, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2113
    const-string v0, "HalDeviceManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mServiceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManagerStatusListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInterfaceAvailableForRequestListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInterfaceInfoCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 90
    if-lez p1, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    .line 98
    :goto_0
    return-void
.end method

.method public getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 7
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 274
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v1

    .line 278
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 280
    .local v3, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v3, :cond_0

    .line 281
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChip: no entry for iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v4, 0x0

    monitor-exit v2

    return-object v4

    .line 285
    :cond_0
    iget-object v4, v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    monitor-exit v2

    return-object v4

    .line 286
    .end local v3    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 4

    .line 574
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting IServiceManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedIfaceTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIfaceTypes(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;
    .locals 1
    .param p1, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/IWifiChip;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;
    .locals 16
    .param p1, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/IWifiChip;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1266
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 1268
    .local v2, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v3

    .line 1269
    .local v3, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-nez v3, :cond_0

    .line 1270
    const-string v0, "HalDevMgr"

    const-string v4, "getSupportedIfaceTypesInternal: no chip info found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-object v2

    .line 1274
    :cond_0
    new-instance v0, Landroid/util/MutableInt;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/util/MutableInt;-><init>(I)V

    move-object v5, v0

    .line 1275
    .local v5, "chipIdIfProvided":Landroid/util/MutableInt;
    if-eqz v1, :cond_1

    .line 1276
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v6, v0

    .line 1278
    .local v6, "statusOk":Landroid/util/MutableBoolean;
    :try_start_0
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;

    invoke-direct {v0, v5, v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {v1, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    nop

    .line 1292
    iget-boolean v0, v6, Landroid/util/MutableBoolean;->value:Z

    if-nez v0, :cond_1

    .line 1293
    return-object v2

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "HalDevMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSupportedIfaceTypesInternal IWifiChip.getId() exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-object v2

    .line 1297
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "statusOk":Landroid/util/MutableBoolean;
    :cond_1
    array-length v0, v3

    :goto_0
    if-ge v4, v0, :cond_7

    aget-object v6, v3, v4

    .line 1298
    .local v6, "wci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-eqz v1, :cond_2

    iget v7, v6, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iget v8, v5, Landroid/util/MutableInt;->value:I

    if-eq v7, v8, :cond_2

    .line 1299
    goto :goto_5

    .line 1302
    :cond_2
    iget-object v7, v6, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    .line 1303
    .local v8, "cm":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    iget-object v9, v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 1304
    .local v10, "cic":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    iget-object v11, v10, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 1305
    .local v12, "cicl":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    iget-object v13, v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1306
    .local v14, "type":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1307
    .end local v14    # "type":I
    goto :goto_4

    .line 1308
    .end local v12    # "cicl":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    :cond_3
    goto :goto_3

    .line 1309
    .end local v10    # "cic":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    :cond_4
    goto :goto_2

    .line 1310
    .end local v8    # "cm":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    :cond_5
    goto :goto_1

    .line 1297
    .end local v6    # "wci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1313
    :cond_7
    return-object v2
.end method

.method protected getWifiServiceMockable()Landroid/hardware/wifi/V1_0/IWifi;
    .locals 4

    .line 565
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/V1_0/IWifi;->getService()Landroid/hardware/wifi/V1_0/IWifi;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting IWifi service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v1, 0x0

    return-object v1
.end method

.method public initialize()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initializeInternal()V

    .line 109
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isWifiStarted()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isSupportedInternal()Z

    move-result v0

    return v0
.end method

.method public registerDestroyedListener(Landroid/hardware/wifi/V1_0/IWifiIface;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;
    .param p2, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 304
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v1

    .line 308
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 310
    .local v3, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v3, :cond_0

    .line 311
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerDestroyedListener: no entry for iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v4, 0x0

    monitor-exit v2

    return v4

    .line 315
    :cond_0
    iget-object v4, v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    new-instance v5, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    invoke-direct {v5, p0, v0, p2, p3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/String;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v2

    return v4

    .line 317
    .end local v3    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "ifaceType"    # I
    .param p2, "listener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 346
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    .line 349
    .local v1, "proxy":Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    monitor-exit v0

    return-void

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v1    # "proxy":Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v0

    .line 361
    .local v0, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-nez v0, :cond_1

    .line 362
    const-string v1, "HalDevMgr"

    const-string v2, "registerInterfaceAvailableForRequestListener: no chip info found - but possibly registered pre-started - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 367
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V

    .line 368
    return-void

    .line 358
    .end local v0    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "HalDevMgr"

    const-string v2, "registerStatusListener: duplicate registration ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 1
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v0

    .line 262
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListeners()Z

    .line 263
    return v0
.end method

.method public start()Z
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->startWifi()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 176
    return-void
.end method

.method public unregisterInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;)V
    .locals 4
    .param p1, "ifaceType"    # I
    .param p2, "listener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;

    .line 380
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
