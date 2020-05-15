.class public Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
.super Ljava/lang/Object;
.source "OsuNetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;,
        Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OsuNetworkConnection"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private mCallbacks:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

.field private mConnected:Z

.field private mConnectivityCallbacks:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkId:I

.field private mVerboseLoggingEnabled:Z

.field private mWifiEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mVerboseLoggingEnabled:Z

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetwork:Landroid/net/Network;

    .line 51
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnected:Z

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    .line 53
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiEnabled:Z

    .line 92
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mCallbacks:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
    .param p1, "x1"    # Landroid/net/Network;

    .line 38
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnected:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)Z
    .locals 8
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "nai"    # Ljava/lang/String;

    .line 166
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "OsuNetworkConnection"

    const-string v2, "Connect called twice"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return v1

    .line 173
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 174
    const-string v0, "OsuNetworkConnection"

    const-string v1, "Wifi is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v2

    .line 177
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 178
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 180
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 186
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    .line 187
    iget v3, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    if-gez v3, :cond_3

    .line 188
    const-string v1, "OsuNetworkConnection"

    const-string v3, "Unable to add network"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v2

    .line 191
    :cond_3
    const/4 v3, 0x0

    .line 192
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 193
    invoke-virtual {v4, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnectivityCallbacks:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x2710

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    .line 196
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    invoke-virtual {v4, v5, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 197
    const-string v1, "OsuNetworkConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to enable network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->disconnectIfNeeded()V

    .line 199
    return v2

    .line 201
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_5

    .line 202
    const-string v2, "OsuNetworkConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current network ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_5
    return v1

    .line 183
    .end local v3    # "networkRequest":Landroid/net/NetworkRequest;
    :cond_6
    const-string v1, "OsuNetworkConnection"

    const-string v3, "OSEN not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v2
.end method

.method public disconnectIfNeeded()V
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    if-gez v0, :cond_1

    .line 136
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "OsuNetworkConnection"

    const-string v1, "No connection to tear down"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetworkId:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mNetwork:Landroid/net/Network;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnected:Z

    .line 145
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 212
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mVerboseLoggingEnabled:Z

    .line 213
    return-void
.end method

.method public init(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;-><init>(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;)V

    .line 120
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mWifiEnabled:Z

    .line 123
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 124
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    new-instance v2, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;-><init>(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$1;)V

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mConnectivityCallbacks:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$ConnectivityCallbacks;

    .line 126
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public setEventCallback(Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    .line 152
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->mCallbacks:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection$Callbacks;

    .line 153
    return-void
.end method
