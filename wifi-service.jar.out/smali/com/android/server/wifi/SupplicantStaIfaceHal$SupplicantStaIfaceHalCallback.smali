.class Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
.super Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantStaIfaceHalCallback"
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mStateIsFourway:Z

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;

    .line 2874
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-direct {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;-><init>()V

    .line 2872
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    .line 2875
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2876
    return-void
.end method

.method private addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V
    .locals 2
    .param p2, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2911
    .local p1, "elementsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    .local p3, "payload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2912
    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2913
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->parseAnqpElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v1

    .line 2914
    .local v1, "element":Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    if-eqz v1, :cond_1

    .line 2915
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    .end local v1    # "element":Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    :cond_1
    monitor-exit v0

    .line 2918
    return-void

    .line 2917
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2912
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 2917
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseAnqpElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 5
    .param p1, "infoID"    # Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;"
        }
    .end annotation

    .line 2887
    .local p2, "payload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2889
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2890
    nop

    .line 2891
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2890
    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v1

    goto :goto_0

    .line 2892
    :cond_0
    nop

    .line 2893
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2892
    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseHS20Element(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    .line 2889
    return-object v1

    .line 2898
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2894
    :catch_0
    move-exception v1

    .line 2895
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing ANQP element payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2896
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2898
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .locals 7
    .param p1, "bssid"    # [B
    .param p2, "data"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    .param p3, "hs20Data"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    .line 2958
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onAnqpQueryDone"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2960
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2961
    .local v1, "elementsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->venueName:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2962
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->roamingConsortium:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2963
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->ipAddrTypeAvailability:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2965
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->naiRealm:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2966
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->anqp3gppCellularNetwork:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2967
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->domainName:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2968
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->operatorFriendlyName:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2969
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->wanMetrics:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2970
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->connectionCapability:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2971
    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    iget-object v3, p3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->osuProvidersList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->addAnqpElementToMap(Ljava/util/Map;Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/util/ArrayList;)V

    .line 2972
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wifi/hotspot2/AnqpEvent;

    .line 2973
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/wifi/hotspot2/AnqpEvent;-><init>(JLjava/util/Map;)V

    .line 2972
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAnqpDoneEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/AnqpEvent;)V

    .line 2974
    .end local v1    # "elementsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    monitor-exit v0

    .line 2975
    return-void

    .line 2974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAssociationRejected([BIZ)V
    .locals 6
    .param p1, "bssid"    # [B
    .param p2, "statusCode"    # I
    .param p3, "timedOut"    # Z

    .line 3033
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3034
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onAssociationRejected"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3037
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$800(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3038
    .local v1, "wificonfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForWepNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3039
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v3, "WEP incorrect password"

    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3040
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 3043
    monitor-exit v0

    return-void

    .line 3046
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 3047
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    .line 3046
    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V

    .line 3048
    .end local v1    # "wificonfig":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v0

    .line 3049
    return-void

    .line 3048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAuthenticationTimeout([B)V
    .locals 5
    .param p1, "bssid"    # [B

    .line 3053
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onAuthenticationTimeout"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3055
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 3057
    monitor-exit v0

    .line 3058
    return-void

    .line 3057
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBssidChanged(B[B)V
    .locals 4
    .param p1, "reason"    # B
    .param p2, "bssid"    # [B

    .line 3062
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3063
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onBssidChanged"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3064
    if-nez p1, :cond_0

    .line 3065
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 3066
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    .line 3065
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3067
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3068
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 3069
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    .line 3068
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    :cond_1
    :goto_0
    monitor-exit v0

    .line 3072
    return-void

    .line 3071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisconnected([BZI)V
    .locals 5
    .param p1, "bssid"    # [B
    .param p2, "locallyGenerated"    # Z
    .param p3, "reasonCode"    # I

    .line 3013
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3014
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3015
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$100(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3016
    const-string v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected 4way="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " locallyGenerated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const/16 v1, 0x11

    if-eq p3, v1, :cond_2

    .line 3022
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 3025
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 3026
    nop

    .line 3027
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    .line 3025
    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 3028
    monitor-exit v0

    .line 3029
    return-void

    .line 3028
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onEapFailure()V
    .locals 5

    .line 3076
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3077
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onEapFailure"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3078
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 3080
    monitor-exit v0

    .line 3081
    return-void

    .line 3080
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onExtRadioWorkStart(I)V
    .locals 3
    .param p1, "id"    # I

    .line 3114
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onExtRadioWorkStart"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3116
    monitor-exit v0

    .line 3117
    return-void

    .line 3116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onExtRadioWorkTimeout(I)V
    .locals 3
    .param p1, "id"    # I

    .line 3121
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onExtRadioWorkTimeout"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3123
    monitor-exit v0

    .line 3124
    return-void

    .line 3123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .locals 10
    .param p1, "bssid"    # [B
    .param p2, "reasonCode"    # I
    .param p3, "reAuthDelayInSec"    # I
    .param p4, "url"    # Ljava/lang/String;

    .line 3002
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3003
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onHs20DeauthImminentNotice"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3004
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    new-instance v9, Lcom/android/server/wifi/hotspot2/WnmData;

    .line 3006
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    :goto_0
    move v7, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    move-object v3, v9

    move-object v6, p4

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wifi/hotspot2/WnmData;-><init>(JLjava/lang/String;ZI)V

    .line 3004
    invoke-virtual {v1, v2, v9}, Lcom/android/server/wifi/WifiMonitor;->broadcastWnmEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/WnmData;)V

    .line 3008
    monitor-exit v0

    .line 3009
    return-void

    .line 3008
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "bssid"    # [B
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2980
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onHs20IconQueryDone"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2982
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    new-instance v9, Lcom/android/server/wifi/hotspot2/IconEvent;

    .line 2984
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2985
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v8

    move-object v3, v9

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wifi/hotspot2/IconEvent;-><init>(JLjava/lang/String;I[B)V

    .line 2982
    invoke-virtual {v1, v2, v9}, Lcom/android/server/wifi/WifiMonitor;->broadcastIconDoneEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/IconEvent;)V

    .line 2986
    monitor-exit v0

    .line 2987
    return-void

    .line 2986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .locals 6
    .param p1, "bssid"    # [B
    .param p2, "osuMethod"    # B
    .param p3, "url"    # Ljava/lang/String;

    .line 2991
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2992
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onHs20SubscriptionRemediation"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2993
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    new-instance v3, Lcom/android/server/wifi/hotspot2/WnmData;

    .line 2995
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToLong([B)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p3, p2}, Lcom/android/server/wifi/hotspot2/WnmData;-><init>(JLjava/lang/String;I)V

    .line 2993
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->broadcastWnmEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/WnmData;)V

    .line 2996
    monitor-exit v0

    .line 2997
    return-void

    .line 2996
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNetworkAdded(I)V
    .locals 3
    .param p1, "id"    # I

    .line 2922
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onNetworkAdded"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2924
    monitor-exit v0

    .line 2925
    return-void

    .line 2924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNetworkRemoved(I)V
    .locals 3
    .param p1, "id"    # I

    .line 2929
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2930
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onNetworkRemoved"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2931
    monitor-exit v0

    .line 2932
    return-void

    .line 2931
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .locals 9
    .param p1, "newState"    # I
    .param p2, "bssid"    # [B
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2937
    .local p4, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2938
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onStateChanged"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2939
    invoke-static {p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$500(I)Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 2940
    .local v1, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    nop

    .line 2941
    invoke-static {p4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiGbk;->createWifiSsidFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    .line 2942
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 2943
    .local v8, "bssidStr":Ljava/lang/String;
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    .line 2944
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_1

    .line 2945
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2946
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2945
    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 2948
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2949
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2948
    move-object v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 2951
    .end local v1    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "bssidStr":Ljava/lang/String;
    monitor-exit v0

    .line 2952
    return-void

    .line 2951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWpsEventFail([BSS)V
    .locals 3
    .param p1, "bssid"    # [B
    .param p2, "configError"    # S
    .param p3, "errorInd"    # S

    .line 3093
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3094
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onWpsEventFail"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3095
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 3097
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsTimeoutEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 3099
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsFailEvent(Ljava/lang/String;II)V

    .line 3101
    :goto_0
    monitor-exit v0

    .line 3102
    return-void

    .line 3101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWpsEventPbcOverlap()V
    .locals 3

    .line 3106
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onWpsEventPbcOverlap"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3108
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsOverlapEvent(Ljava/lang/String;)V

    .line 3109
    monitor-exit v0

    .line 3110
    return-void

    .line 3109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWpsEventSuccess()V
    .locals 3

    .line 3085
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onWpsEventSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3086
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3087
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastWpsSuccessEvent(Ljava/lang/String;)V

    .line 3088
    monitor-exit v0

    .line 3089
    return-void

    .line 3088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStateIsFourway(Z)V
    .locals 3
    .param p1, "stateIsFourway"    # Z

    .line 3127
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "updateStateIsFourway"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3129
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->mStateIsFourway:Z

    .line 3130
    monitor-exit v0

    .line 3131
    return-void

    .line 3130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
