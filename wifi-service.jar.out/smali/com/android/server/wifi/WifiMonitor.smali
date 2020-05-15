.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# static fields
.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final BASE:I = 0x24000

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field public static final DPP_EVENT:I = 0x24065

.field public static final FILS_NETWORK_CONNECTION_EVENT:I = 0x2403f

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final PNO_SCAN_RESULTS_EVENT:I = 0x24012

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field public static final SCAN_FAILED_EVENT:I = 0x24011

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b


# instance fields
.field private mConnected:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;)V
    .locals 1
    .param p1, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 119
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 120
    return-void
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 167
    .local v0, "val":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    return v1

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Landroid/os/Message;

    .line 287
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I

    .line 231
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .line 239
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 240
    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 243
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 244
    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 248
    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 235
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 236
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Message;

    .line 251
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 252
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 255
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-eqz v1, :cond_1

    .line 256
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 257
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_0

    .line 258
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 260
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_0
    goto :goto_0

    .line 262
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_1
    goto/16 :goto_3

    .line 263
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_7

    .line 264
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping event because ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 268
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_4

    .line 269
    const-string v1, "WifiMonitor"

    const-string v2, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 272
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    iget v4, p2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 274
    .local v3, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 275
    .local v5, "handler":Landroid/os/Handler;
    if-eqz v5, :cond_5

    .line 276
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 278
    .end local v5    # "handler":Landroid/os/Handler;
    :cond_5
    goto :goto_2

    .line 280
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    .end local v3    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_6
    goto :goto_1

    .line 283
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 284
    return-void
.end method

.method private setMonitoringNone()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "iface":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 188
    .end local v1    # "iface":Ljava/lang/String;
    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastAnqpDoneEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/AnqpEvent;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "anqpEvent"    # Lcom/android/server/wifi/hotspot2/AnqpEvent;

    .line 362
    const v0, 0x2402c

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 363
    return-void
.end method

.method public broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 486
    const v2, 0x20093

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method public broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "timedOut"    # Z
    .param p4, "bssid"    # Ljava/lang/String;

    .line 476
    const v2, 0x2402b

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 477
    return-void
.end method

.method public broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "errorCode"    # I

    .line 463
    const v0, 0x24007

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 464
    return-void
.end method

.method public broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "dppEventType"    # I
    .param p3, "result"    # Landroid/net/wifi/WifiDppConfig$DppResult;

    .line 579
    const v2, 0x24065

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 580
    return-void
.end method

.method public broadcastFilsNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkId"    # I
    .param p3, "bssid"    # Ljava/lang/String;

    .line 518
    const v2, 0x2403f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 519
    return-void
.end method

.method public broadcastIconDoneEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;

    .line 372
    const v0, 0x24035

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 373
    return-void
.end method

.method public broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkId"    # I
    .param p3, "bssid"    # Ljava/lang/String;

    .line 507
    const v2, 0x24003

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 508
    return-void
.end method

.method public broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "local"    # I
    .param p3, "reason"    # I
    .param p4, "bssid"    # Ljava/lang/String;

    .line 533
    const v2, 0x24004

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 534
    return-void
.end method

.method public broadcastNetworkGsmAuthRequestEvent(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkId"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "data"    # [Ljava/lang/String;

    .line 407
    new-instance v0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    const v1, 0x24010

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 409
    return-void
.end method

.method public broadcastNetworkIdentityRequestEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkId"    # I
    .param p3, "ssid"    # Ljava/lang/String;

    .line 393
    const v2, 0x2400f

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 394
    return-void
.end method

.method public broadcastNetworkUmtsAuthRequestEvent(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkId"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "data"    # [Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    const v1, 0x24010

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 424
    return-void
.end method

.method public broadcastPnoScanResultEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 439
    const v0, 0x24012

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 440
    return-void
.end method

.method public broadcastScanFailedEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 447
    const v0, 0x24011

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 448
    return-void
.end method

.method public broadcastScanResultEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 431
    const v0, 0x24005

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 432
    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 558
    const v0, 0x24001

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 559
    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 568
    const v0, 0x24002

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 569
    return-void
.end method

.method public broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkId"    # I
    .param p3, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p4, "bssid"    # Ljava/lang/String;
    .param p5, "newSupplicantState"    # Landroid/net/wifi/SupplicantState;

    .line 547
    new-instance v5, Lcom/android/server/wifi/StateChangeResult;

    invoke-direct {v5, p2, p3, p4, p5}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    const v2, 0x24006

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 549
    return-void
.end method

.method public broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 496
    const v2, 0x2008d

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method public broadcastWnmEvent(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "wnmData"    # Lcom/android/server/wifi/hotspot2/WnmData;

    .line 382
    const v0, 0x2403d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 383
    return-void
.end method

.method public broadcastWpsFailEvent(Ljava/lang/String;II)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfgError"    # I
    .param p3, "vendorErrorCode"    # I

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "reason":I
    const v1, 0x24009

    packed-switch p3, :pswitch_data_0

    .line 308
    move v0, p3

    .line 311
    goto :goto_0

    .line 305
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 306
    return-void

    .line 302
    :pswitch_1
    const/4 v2, 0x5

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 303
    return-void

    .line 311
    :goto_0
    const/16 v2, 0xc

    if-eq p2, v2, :cond_2

    const/16 v2, 0x12

    if-eq p2, v2, :cond_1

    .line 319
    if-nez v0, :cond_0

    .line 320
    move v0, p2

    .line 325
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 326
    return-void

    .line 313
    :cond_1
    const/4 v2, 0x6

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 314
    return-void

    .line 316
    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 317
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public broadcastWpsOverlapEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 343
    const v0, 0x2400a

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 344
    return-void
.end method

.method public broadcastWpsSuccessEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 334
    const v0, 0x24008

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 335
    return-void
.end method

.method public broadcastWpsTimeoutEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 352
    const v0, 0x2400b

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public declared-synchronized deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-nez v0, :cond_0

    .line 155
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v1, :cond_1

    .line 159
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    :try_start_2
    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 152
    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "what":I
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiMonitor;
    throw p1
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 123
    if-lez p1, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    .line 128
    :goto_0
    return-void
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 134
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-nez v0, :cond_0

    .line 135
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 136
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 139
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v1, :cond_1

    .line 140
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 141
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "what":I
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiMonitor;
    throw p1
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    monitor-enter p0

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 196
    .end local p1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiMonitor;
    throw p1
.end method

.method public declared-synchronized stopAllMonitoring()V
    .locals 1

    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 221
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoringNone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiMonitor;
    throw v0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 207
    .end local p1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiMonitor;
    throw p1
.end method
