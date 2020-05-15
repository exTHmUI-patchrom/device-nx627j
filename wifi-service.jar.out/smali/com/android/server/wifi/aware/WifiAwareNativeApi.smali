.class public Lcom/android/server/wifi/aware/WifiAwareNativeApi;
.super Ljava/lang/Object;
.source "WifiAwareNativeApi.java"

# interfaces
.implements Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;


# static fields
.field static final PARAM_DISCOVERY_BEACON_INTERVAL_MS:Ljava/lang/String; = "disc_beacon_interval_ms"

.field private static final PARAM_DISCOVERY_BEACON_INTERVAL_MS_DEFAULT:I = 0x0

.field private static final PARAM_DISCOVERY_BEACON_INTERVAL_MS_IDLE:I = 0x0

.field private static final PARAM_DISCOVERY_BEACON_INTERVAL_MS_INACTIVE:I = 0x0

.field static final PARAM_DW_24GHZ:Ljava/lang/String; = "dw_24ghz"

.field private static final PARAM_DW_24GHZ_DEFAULT:I = 0x1

.field private static final PARAM_DW_24GHZ_IDLE:I = 0x4

.field private static final PARAM_DW_24GHZ_INACTIVE:I = 0x4

.field static final PARAM_DW_5GHZ:Ljava/lang/String; = "dw_5ghz"

.field private static final PARAM_DW_5GHZ_DEFAULT:I = 0x1

.field private static final PARAM_DW_5GHZ_IDLE:I = 0x0

.field private static final PARAM_DW_5GHZ_INACTIVE:I = 0x0

.field static final PARAM_ENABLE_DW_EARLY_TERM:Ljava/lang/String; = "enable_dw_early_term"

.field private static final PARAM_ENABLE_DW_EARLY_TERM_DEFAULT:I = 0x0

.field private static final PARAM_ENABLE_DW_EARLY_TERM_IDLE:I = 0x0

.field private static final PARAM_ENABLE_DW_EARLY_TERM_INACTIVE:I = 0x0

.field static final PARAM_MAC_RANDOM_INTERVAL_SEC:Ljava/lang/String; = "mac_random_interval_sec"

.field private static final PARAM_MAC_RANDOM_INTERVAL_SEC_DEFAULT:I = 0x708

.field static final PARAM_NUM_SS_IN_DISCOVERY:Ljava/lang/String; = "num_ss_in_discovery"

.field private static final PARAM_NUM_SS_IN_DISCOVERY_DEFAULT:I = 0x0

.field private static final PARAM_NUM_SS_IN_DISCOVERY_IDLE:I = 0x0

.field private static final PARAM_NUM_SS_IN_DISCOVERY_INACTIVE:I = 0x0

.field static final POWER_PARAM_DEFAULT_KEY:Ljava/lang/String; = "default"

.field static final POWER_PARAM_IDLE_KEY:Ljava/lang/String; = "idle"

.field static final POWER_PARAM_INACTIVE_KEY:Ljava/lang/String; = "inactive"

.field private static final SERVICE_NAME_FOR_OOB_DATA_PATH:Ljava/lang/String; = "Wi-Fi Aware Data Path"

.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeApi"

.field private static final VDBG:Z = false


# instance fields
.field mDbg:Z

.field private final mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

.field private mSettableParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSettablePowerParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTransactionIds:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 1
    .param p1, "wifiAwareNativeManager"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->onReset()V

    .line 75
    return-void
.end method

.method private convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "from"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1118
    .local p2, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1119
    new-array p1, v0, [B

    .line 1122
    :cond_0
    if-nez p2, :cond_1

    .line 1123
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object p2, v1

    goto :goto_0

    .line 1125
    :cond_1
    array-length v1, p1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1127
    :goto_0
    nop

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1128
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1130
    .end local v0    # "i":I
    :cond_2
    return-object p2
.end method

.method private copyArray([B[B)V
    .locals 3
    .param p1, "from"    # [B
    .param p2, "to"    # [B

    .line 1134
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1138
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1139
    aget-byte v1, p1, v0

    aput-byte v1, p2, v0

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1141
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1135
    :cond_2
    :goto_1
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyArray error: from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void
.end method

.method private getStrongestCipherSuiteType(I)I
    .locals 1
    .param p1, "supportedCipherSuites"    # I

    .line 1099
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1100
    const/4 v0, 0x2

    return v0

    .line 1102
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 1103
    const/4 v0, 0x1

    return v0

    .line 1105
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private recordTransactionId(I)V
    .locals 0
    .param p1, "transactionId"    # I

    .line 78
    return-void
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 1144
    if-nez p0, :cond_0

    .line 1145
    const-string v0, "status=null"

    return-object v0

    .line 1147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateConfigForPowerSettings(Landroid/hardware/wifi/V1_0/NanConfigRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;ZZ)V
    .locals 6
    .param p1, "req"    # Landroid/hardware/wifi/V1_0/NanConfigRequest;
    .param p2, "configSupplemental12"    # Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;
    .param p3, "isInteractive"    # Z
    .param p4, "isIdle"    # Z

    .line 1066
    const-string v0, "default"

    .line 1067
    .local v0, "key":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 1068
    const-string v0, "idle"

    goto :goto_0

    .line 1069
    :cond_0
    if-nez p3, :cond_1

    .line 1070
    const-string v0, "inactive"

    .line 1073
    :cond_1
    :goto_0
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    .line 1074
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "dw_5ghz"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1073
    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->updateSingleConfigForPowerSettings(Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;I)V

    .line 1075
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    .line 1076
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "dw_24ghz"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1075
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->updateSingleConfigForPowerSettings(Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;I)V

    .line 1078
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "disc_beacon_interval_ms"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->discoveryBeaconIntervalMs:I

    .line 1080
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "num_ss_in_discovery"

    .line 1081
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->numberOfSpatialStreamsInDiscovery:I

    .line 1082
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "enable_dw_early_term"

    .line 1083
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p2, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->enableDiscoveryWindowEarlyTermination:Z

    .line 1084
    return-void
.end method

.method private updateSingleConfigForPowerSettings(Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;I)V
    .locals 1
    .param p1, "cfg"    # Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    .param p2, "override"    # I

    .line 1087
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 1089
    int-to-byte v0, p2

    iput-byte v0, p1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 1091
    :cond_0
    return-void
.end method


# virtual methods
.method public createAwareNetworkInterface(SLjava/lang/String;)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "interfaceName"    # Ljava/lang/String;

    .line 810
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAwareNetworkInterface: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interfaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 817
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 818
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "createAwareNetworkInterface: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return v1

    .line 823
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 824
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 825
    const/4 v1, 0x1

    return v1

    .line 827
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAwareNetworkInterface: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    return v1

    .line 830
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 831
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAwareNetworkInterface: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v1
.end method

.method public deleteAwareNetworkInterface(SLjava/lang/String;)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "interfaceName"    # Ljava/lang/String;

    .line 844
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAwareNetworkInterface: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interfaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 850
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 851
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 852
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "deleteAwareNetworkInterface: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return v1

    .line 857
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 858
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 859
    const/4 v1, 0x1

    return v1

    .line 861
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAwareNetworkInterface: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    return v1

    .line 864
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 865
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAwareNetworkInterface: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v1
.end method

.method public disable(S)Z
    .locals 6
    .param p1, "transactionId"    # S

    .line 514
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareNativeApi"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 518
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 519
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "disable: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return v1

    .line 524
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 525
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 526
    const/4 v1, 0x1

    return v1

    .line 528
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    return v1

    .line 531
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1156
    const-string v0, "WifiAwareNativeApi:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSettableParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method public enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z
    .locals 17
    .param p1, "transactionId"    # S
    .param p2, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p3, "notifyIdentityChange"    # Z
    .param p4, "initialConfiguration"    # Z
    .param p5, "isInteractive"    # Z
    .param p6, "isIdle"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 333
    move/from16 v7, p6

    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "WifiAwareNativeApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableAndConfigure: transactionId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", configRequest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", notifyIdentityChange="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", initialConfiguration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isInteractive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isIdle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 341
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v8

    .line 342
    .local v8, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 343
    const-string v0, "WifiAwareNativeApi"

    const-string v10, "enableAndConfigure: null interface"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v9

    .line 346
    :cond_1
    invoke-virtual {v1, v8}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mockableCastTo_1_2(Landroid/hardware/wifi/V1_0/IWifiNanIface;)Landroid/hardware/wifi/V1_2/IWifiNanIface;

    move-result-object v10

    .line 347
    .local v10, "iface12":Landroid/hardware/wifi/V1_2/IWifiNanIface;
    new-instance v0, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    move-object v11, v0

    .line 348
    .local v11, "configSupplemental12":Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;
    const/4 v0, 0x1

    if-eqz v10, :cond_2

    .line 350
    iput v9, v11, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->discoveryBeaconIntervalMs:I

    .line 351
    iput v9, v11, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->numberOfSpatialStreamsInDiscovery:I

    .line 352
    iput-boolean v9, v11, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->enableDiscoveryWindowEarlyTermination:Z

    .line 353
    iput-boolean v0, v11, Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;->enableRanging:Z

    .line 358
    :cond_2
    const/16 v14, 0x8

    if-eqz v5, :cond_6

    .line 360
    :try_start_0
    new-instance v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v15}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 362
    .local v15, "req":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    iget-object v13, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    aput-boolean v0, v13, v9

    .line 363
    iget-object v13, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    iget-boolean v12, v3, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    aput-boolean v12, v13, v0

    .line 364
    const/4 v12, 0x2

    iput-byte v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    .line 365
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget v13, v3, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    int-to-byte v13, v13

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    .line 366
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    xor-int/lit8 v13, v4, 0x1

    iput-boolean v13, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 367
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    xor-int/lit8 v13, v4, 0x1

    iput-boolean v13, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 368
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    xor-int/lit8 v13, v4, 0x1

    iput-boolean v13, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 369
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iput-boolean v0, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 370
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iput-byte v9, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 371
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iput-boolean v0, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 372
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iput-byte v9, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 373
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iput-short v14, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    .line 374
    iget-object v12, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v13, v1, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    const-string v14, "mac_random_interval_sec"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 377
    new-instance v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v12}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    .line 378
    .local v12, "config24":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    const/16 v13, 0x3c

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 379
    const/16 v14, 0x46

    iput-byte v14, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 380
    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 381
    const/16 v13, -0x38

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 382
    const/16 v13, 0x14

    iput-short v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 383
    iget-object v13, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v13, v13, v9

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 385
    iput-boolean v9, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    goto :goto_0

    .line 387
    :cond_3
    iput-boolean v0, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 388
    iget-object v13, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v13, v13, v9

    int-to-byte v13, v13

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 392
    :goto_0
    iget-object v13, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v13, v13, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aput-object v12, v13, v9

    .line 394
    new-instance v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v13}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    .line 395
    .local v13, "config5":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    const/16 v14, 0x3c

    iput-byte v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 396
    const/16 v9, 0x4b

    iput-byte v9, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 397
    iput-byte v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 398
    const/16 v9, -0x38

    iput-byte v9, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 399
    const/16 v9, 0x14

    iput-short v9, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 400
    iget-object v9, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v9, v9, v0

    const/4 v14, -0x1

    if-ne v9, v14, :cond_4

    .line 402
    const/4 v9, 0x0

    iput-boolean v9, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    goto :goto_1

    .line 404
    :cond_4
    iput-boolean v0, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 405
    iget-object v9, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v9, v9, v0

    int-to-byte v9, v9

    iput-byte v9, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 409
    :goto_1
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aput-object v13, v9, v0

    .line 411
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-boolean v0, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    .line 412
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget v14, v3, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    int-to-short v14, v14

    iput-short v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 413
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget v14, v3, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    int-to-short v14, v14

    iput-short v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 414
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v14, 0x0

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    .line 415
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    .line 416
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    .line 417
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 418
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-byte v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    .line 419
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    .line 420
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-byte v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    .line 421
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 422
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    aput v14, v9, v14

    .line 423
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    aput v14, v9, v0

    .line 424
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 425
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    aput-boolean v0, v9, v14

    .line 426
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    aput-boolean v0, v9, v0

    .line 427
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v14, 0x0

    iput-boolean v14, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 428
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    aput-boolean v0, v9, v14

    .line 429
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v9, v9, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    aput-boolean v0, v9, v0

    .line 431
    iget-object v9, v15, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v1, v9, v11, v6, v7}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->updateConfigForPowerSettings(Landroid/hardware/wifi/V1_0/NanConfigRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;ZZ)V

    .line 434
    if-eqz v10, :cond_5

    .line 435
    invoke-interface {v10, v2, v15, v11}, Landroid/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLandroid/hardware/wifi/V1_0/NanEnableRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v9

    .local v9, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_2

    .line 437
    .end local v9    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_5
    invoke-interface {v8, v2, v15}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLandroid/hardware/wifi/V1_0/NanEnableRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v9

    .line 439
    .end local v12    # "config24":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    .end local v13    # "config5":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    .end local v15    # "req":Landroid/hardware/wifi/V1_0/NanEnableRequest;
    .restart local v9    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_2
    nop

    .line 492
    move-object v14, v9

    goto/16 :goto_5

    .line 501
    .end local v9    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 440
    :cond_6
    new-instance v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v9}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 441
    .local v9, "req":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    iget v12, v3, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    int-to-byte v12, v12

    iput-byte v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    .line 442
    xor-int/lit8 v12, v4, 0x1

    iput-boolean v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 443
    xor-int/lit8 v12, v4, 0x1

    iput-boolean v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 444
    xor-int/lit8 v12, v4, 0x1

    iput-boolean v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 445
    iput-boolean v0, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 446
    const/4 v12, 0x0

    iput-byte v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 447
    iput-boolean v0, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 448
    iput-byte v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 449
    iput-short v14, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    .line 450
    iget-object v12, v1, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    const-string v13, "mac_random_interval_sec"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 453
    new-instance v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v12}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    .line 454
    .restart local v12    # "config24":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    const/16 v13, 0x3c

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 455
    const/16 v14, 0x46

    iput-byte v14, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 456
    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 457
    const/16 v13, -0x38

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 458
    const/16 v13, 0x14

    iput-short v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 459
    iget-object v13, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v15, -0x1

    if-ne v13, v15, :cond_7

    .line 461
    iput-boolean v14, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 468
    const/4 v14, 0x0

    goto :goto_3

    .line 463
    :cond_7
    iput-boolean v0, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 464
    iget-object v13, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-byte v13, v13

    iput-byte v13, v12, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 468
    :goto_3
    iget-object v13, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aput-object v12, v13, v14

    .line 470
    new-instance v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v13}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    .line 471
    .restart local v13    # "config5":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    const/16 v14, 0x3c

    iput-byte v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 472
    const/16 v15, 0x4b

    iput-byte v15, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 473
    iput-byte v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 474
    const/16 v14, -0x38

    iput-byte v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 475
    const/16 v14, 0x14

    iput-short v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 476
    iget-object v14, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v14, v14, v0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    .line 478
    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    goto :goto_4

    .line 480
    :cond_8
    iput-boolean v0, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 481
    iget-object v14, v3, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v14, v14, v0

    int-to-byte v14, v14

    iput-byte v14, v13, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 485
    :goto_4
    iget-object v14, v9, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aput-object v13, v14, v0

    .line 487
    invoke-direct {v1, v9, v11, v6, v7}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->updateConfigForPowerSettings(Landroid/hardware/wifi/V1_0/NanConfigRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;ZZ)V

    .line 489
    if-eqz v10, :cond_9

    .line 490
    invoke-interface {v10, v2, v9, v11}, Landroid/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLandroid/hardware/wifi/V1_0/NanConfigRequest;Landroid/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v14

    .local v14, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_5

    .line 492
    .end local v14    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_9
    invoke-interface {v8, v2, v9}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLandroid/hardware/wifi/V1_0/NanConfigRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v14

    .end local v9    # "req":Landroid/hardware/wifi/V1_0/NanConfigRequest;
    .end local v12    # "config24":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    .end local v13    # "config5":Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;
    .restart local v14    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_5
    move-object v9, v14

    .line 495
    .end local v14    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .local v9, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v12, v9, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v12, :cond_a

    .line 496
    return v0

    .line 498
    :cond_a
    const-string v0, "WifiAwareNativeApi"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enableAndConfigure: error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    const/4 v12, 0x0

    return v12

    .line 501
    .end local v9    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_6
    nop

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "WifiAwareNativeApi"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enableAndConfigure: exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v9, 0x0

    return v9
.end method

.method public endDataPath(SI)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "ndpId"    # I

    .line 1032
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1033
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endDataPath: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ndpId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 1038
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1039
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "endDataPath: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return v1

    .line 1044
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1045
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 1046
    const/4 v1, 0x1

    return v1

    .line 1048
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endDataPath: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    return v1

    .line 1051
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 1052
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endDataPath: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return v1
.end method

.method public getCapabilities(S)Z
    .locals 6
    .param p1, "transactionId"    # S

    .line 295
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 298
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 299
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 300
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "getCapabilities: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return v1

    .line 305
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 306
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 307
    const/4 v1, 0x1

    return v1

    .line 309
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCapabilities: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return v1

    .line 312
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCapabilities: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v1
.end method

.method public initiateDataPath(SIII[BLjava/lang/String;[BLjava/lang/String;ZLcom/android/server/wifi/aware/Capabilities;)Z
    .locals 17
    .param p1, "transactionId"    # S
    .param p2, "peerId"    # I
    .param p3, "channelRequestType"    # I
    .param p4, "channel"    # I
    .param p5, "peer"    # [B
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p7, "pmk"    # [B
    .param p8, "passphrase"    # Ljava/lang/String;
    .param p9, "isOutOfBand"    # Z
    .param p10, "capabilities"    # Lcom/android/server/wifi/aware/Capabilities;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 891
    move-object/from16 v8, p10

    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "WifiAwareNativeApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initiateDataPath: transactionId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", peerId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", channelRequestType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", channel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", peer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-static/range {p5 .. p5}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", interfaceName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 892
    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 899
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v9

    .line 900
    .local v9, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v10, 0x0

    if-nez v9, :cond_1

    .line 901
    const-string v0, "WifiAwareNativeApi"

    const-string v11, "initiateDataPath: null interface"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return v10

    .line 905
    :cond_1
    if-nez v8, :cond_2

    .line 906
    const-string v0, "WifiAwareNativeApi"

    const-string v11, "initiateDataPath: null capabilities"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return v10

    .line 910
    :cond_2
    new-instance v0, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    move-object v11, v0

    .line 911
    .local v11, "req":Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;
    iput v3, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    .line 912
    iget-object v0, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    move-object/from16 v12, p5

    invoke-direct {v1, v12, v0}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    .line 913
    iput v4, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    .line 914
    iput v5, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    .line 915
    iput-object v6, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 916
    iget-object v0, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v10, v0, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 917
    const/4 v0, 0x1

    if-eqz v7, :cond_3

    array-length v13, v7

    if-eqz v13, :cond_3

    .line 918
    iget-object v13, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v14, v8, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {v1, v14}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v14

    iput v14, v13, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 920
    iget-object v13, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v0, v13, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 921
    iget-object v13, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v13, v13, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    invoke-direct {v1, v7, v13}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    .line 923
    :cond_3
    if-eqz p8, :cond_4

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_4

    .line 924
    iget-object v14, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v15, v8, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {v1, v15}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v15

    iput v15, v14, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 926
    iget-object v14, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const/4 v15, 0x2

    iput v15, v14, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 927
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    iget-object v15, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v15, v15, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-direct {v1, v14, v15}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 930
    :cond_4
    iget-object v14, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v14, v14, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    if-eqz v14, :cond_5

    if-eqz p9, :cond_5

    .line 931
    const-string v15, "Wi-Fi Aware Data Path"

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 932
    invoke-virtual {v15, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    iget-object v15, v11, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 931
    invoke-direct {v1, v10, v15}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 937
    :cond_5
    :try_start_0
    invoke-interface {v9, v2, v11}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLandroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v10

    .line 938
    .local v10, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v15, v10, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v15, :cond_6

    .line 939
    return v0

    .line 941
    :cond_6
    const-string v0, "WifiAwareNativeApi"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateDataPath: error: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    const/4 v1, 0x0

    return v1

    .line 944
    .end local v10    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiAwareNativeApi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initiateDataPath: exception: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v1, 0x0

    return v1
.end method

.method public mockableCastTo_1_2(Landroid/hardware/wifi/V1_0/IWifiNanIface;)Landroid/hardware/wifi/V1_2/IWifiNanIface;
    .locals 1
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 97
    invoke-static {p1}, Landroid/hardware/wifi/V1_2/IWifiNanIface;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_2/IWifiNanIface;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Landroid/os/ShellCommand;)I
    .locals 9
    .param p1, "parentShell"    # Landroid/os/ShellCommand;

    .line 148
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 150
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "subCmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x1deff826

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v3, :cond_3

    const v3, -0x11252c32

    if-eq v2, v3, :cond_2

    const v3, 0x18f56

    if-eq v2, v3, :cond_1

    const v3, 0x1bc62

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_1
    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "get-power"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "set-power"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v5

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 231
    const-string v2, "Unknown \'wifiaware native_api <cmd>\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    return v5

    .line 214
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "mode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mode -- \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    return v5

    .line 221
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown parameter name -- \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' in mode \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    return v5

    .line 226
    :cond_6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    .line 227
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 226
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 228
    return v4

    .line 203
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown parameter name -- \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    return v5

    .line 210
    :cond_7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 211
    return v4

    .line 174
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "mode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 176
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "valueStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown mode name -- \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return v5

    .line 187
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown parameter name \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' in mode \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    return v5

    .line 194
    :cond_9
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 198
    .local v5, "value":I
    nop

    .line 197
    nop

    .line 199
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return v4

    .line 195
    .end local v5    # "value":I
    :catch_0
    move-exception v4

    .line 196
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t convert value to integer -- \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return v5

    .line 154
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "valueStr":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown parameter name -- \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    return v5

    .line 161
    :cond_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "valueStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    .line 169
    .restart local v5    # "value":I
    nop

    .line 168
    nop

    .line 170
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return v4

    .line 166
    .end local v5    # "value":I
    :catch_1
    move-exception v4

    .line 167
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t convert value to integer -- \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp(Ljava/lang/String;Landroid/os/ShellCommand;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parentShell"    # Landroid/os/ShellCommand;

    .line 273
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 275
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    set <name> <value>: sets named parameter to value. Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    .line 277
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    set-power <mode> <name> <value>: sets named power parameter to value. Modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    .line 279
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    const-string v3, "default"

    .line 280
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    get <name>: gets named parameter value. Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    .line 282
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    get-power <mode> <name>: gets named parameter value. Modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    .line 284
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    const-string v3, "default"

    .line 285
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onReset()V
    .locals 6

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v0, "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "dw_24ghz"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "dw_5ghz"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "disc_beacon_interval_ms"

    .line 243
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 242
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "num_ss_in_discovery"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "enable_dw_early_term"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v1, "inactiveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "dw_24ghz"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v3, "dw_5ghz"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v3, "disc_beacon_interval_ms"

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 250
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v3, "num_ss_in_discovery"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v3, "enable_dw_early_term"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v3, "idleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, "dw_24ghz"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v4, "dw_5ghz"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v4, "disc_beacon_interval_ms"

    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 258
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v4, "num_ss_in_discovery"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v4, "enable_dw_early_term"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    const-string v4, "default"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    const-string v4, "inactive"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettablePowerParameters:Ljava/util/Map;

    const-string v4, "idle"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mSettableParameters:Ljava/util/Map;

    const-string v4, "mac_random_interval_sec"

    .line 268
    const/16 v5, 0x708

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 267
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public publish(SBLandroid/net/wifi/aware/PublishConfig;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "publishId"    # B
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 547
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", publishId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 554
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 555
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "publish: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v1

    .line 559
    :cond_1
    new-instance v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 560
    .local v2, "req":Landroid/hardware/wifi/V1_0/NanPublishRequest;
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte p2, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 561
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v4, p3, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    int-to-short v4, v4

    iput-short v4, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 562
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const/4 v4, 0x1

    iput-short v4, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 563
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 564
    iget-object v3, p3, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 565
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const/4 v5, 0x2

    iput v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 566
    iget-object v3, p3, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 568
    iget-object v3, p3, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 569
    iget v5, p3, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-nez v5, :cond_2

    .line 570
    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 568
    :goto_0
    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 571
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 572
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-boolean v5, p3, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    xor-int/2addr v5, v4

    iput-boolean v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 574
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v4, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 575
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 577
    iput-boolean v1, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    .line 579
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-boolean v5, p3, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    iput-boolean v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 582
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v1, v3, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 584
    iget v3, p3, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    .line 585
    iput v1, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    .line 588
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLandroid/hardware/wifi/V1_0/NanPublishRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 589
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v5, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v5, :cond_3

    .line 590
    return v4

    .line 592
    :cond_3
    const-string v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publish: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    return v1

    .line 595
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 596
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publish: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v1
.end method

.method public respondToDataPathRequest(SZILjava/lang/String;[BLjava/lang/String;ZLcom/android/server/wifi/aware/Capabilities;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "accept"    # Z
    .param p3, "ndpId"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;
    .param p5, "pmk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;
    .param p7, "isOutOfBand"    # Z
    .param p8, "capabilities"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 969
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 970
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondToDataPathRequest: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", int ndpId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interfaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 975
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 976
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 977
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "respondToDataPathRequest: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return v1

    .line 981
    :cond_1
    if-nez p8, :cond_2

    .line 982
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "initiateDataPath: null capabilities"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return v1

    .line 986
    :cond_2
    new-instance v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 987
    .local v2, "req":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    iput-boolean p2, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    .line 988
    iput p3, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    .line 989
    iput-object p4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 990
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v1, v3, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 991
    const/4 v3, 0x1

    if-eqz p5, :cond_3

    array-length v4, p5

    if-eqz v4, :cond_3

    .line 992
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v5, p8, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 994
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v3, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 995
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    invoke-direct {p0, p5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    .line 997
    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 998
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v5, p8, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    .line 1000
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const/4 v5, 0x2

    iput v5, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 1001
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1004
    :cond_4
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v4, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    if-eqz v4, :cond_5

    if-eqz p7, :cond_5

    .line 1005
    const-string v4, "Wi-Fi Aware Data Path"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1006
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 1005
    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1011
    :cond_5
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLandroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1012
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v5, v4, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v5, :cond_6

    .line 1013
    return v3

    .line 1015
    :cond_6
    const-string v3, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "respondToDataPathRequest: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    return v1

    .line 1018
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 1019
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "respondToDataPathRequest: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return v1
.end method

.method public sendMessage(SBI[B[BI)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "pubSubId"    # B
    .param p3, "requestorInstanceId"    # I
    .param p4, "dest"    # [B
    .param p5, "message"    # [B
    .param p6, "messageId"    # I

    .line 693
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 694
    const-string v0, "WifiAwareNativeApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage: transactionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requestorInstanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {p4}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    if-nez p5, :cond_0

    const-string v3, "<null>"

    goto :goto_0

    .line 699
    :cond_0
    invoke-static {p5}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", message.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_1

    .line 700
    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, p5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 704
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 705
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    if-nez v0, :cond_3

    .line 706
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "sendMessage: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return v1

    .line 710
    :cond_3
    new-instance v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 711
    .local v2, "req":Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;
    iput-byte p2, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    .line 712
    iput p3, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    .line 713
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    invoke-direct {p0, p4, v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    .line 714
    iput-boolean v1, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    .line 715
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    .line 716
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 717
    iput-boolean v1, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    .line 720
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLandroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 721
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v5, v4, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v5, :cond_4

    .line 722
    return v3

    .line 724
    :cond_4
    const-string v3, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    return v1

    .line 727
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 728
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return v1
.end method

.method public stopPublish(SB)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "pubSubId"    # B

    .line 742
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPublish: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pubSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 747
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 748
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 749
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "stopPublish: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v1

    .line 754
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 755
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 756
    const/4 v1, 0x1

    return v1

    .line 758
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPublish: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    return v1

    .line 761
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPublish: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v1
.end method

.method public stopSubscribe(SB)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "pubSubId"    # B

    .line 776
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSubscribe: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pubSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 781
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 782
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 783
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "stopSubscribe: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return v1

    .line 788
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 789
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_2

    .line 790
    const/4 v1, 0x1

    return v1

    .line 792
    :cond_2
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopSubscribe: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    return v1

    .line 795
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 796
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopSubscribe: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return v1
.end method

.method public subscribe(SBLandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "subscribeId"    # B
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 612
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "WifiAwareNativeApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe: transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subscribeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->recordTransactionId(I)V

    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 619
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 620
    const-string v2, "WifiAwareNativeApi"

    const-string v3, "subscribe: null interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v1

    .line 624
    :cond_1
    new-instance v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 625
    .local v2, "req":Landroid/hardware/wifi/V1_0/NanSubscribeRequest;
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte p2, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 626
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v4, p3, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    int-to-short v4, v4

    iput-short v4, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 627
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const/4 v4, 0x1

    iput-short v4, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 628
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 629
    iget-object v3, p3, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 631
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 632
    iget-object v3, p3, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 634
    iget-object v3, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 635
    iget v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v5, v4, :cond_2

    .line 636
    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 634
    :goto_0
    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 637
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 638
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-boolean v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    xor-int/2addr v5, v4

    iput-boolean v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 640
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v4, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 641
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 643
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-boolean v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez v5, :cond_4

    iget-boolean v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v4

    :goto_2
    iput-boolean v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 645
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput v1, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 647
    iget-boolean v3, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    const/16 v5, 0x7fff

    if-eqz v3, :cond_5

    .line 648
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v6, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 650
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v6, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 652
    :cond_5
    iget-boolean v3, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v3, :cond_6

    .line 653
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v6, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 655
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 659
    :cond_6
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v1, v3, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    .line 661
    iget v3, p3, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    .line 664
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLandroid/hardware/wifi/V1_0/NanSubscribeRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 665
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v5, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v5, :cond_7

    .line 666
    return v4

    .line 668
    :cond_7
    const-string v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscribe: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    return v1

    .line 671
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 672
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscribe: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v1
.end method
