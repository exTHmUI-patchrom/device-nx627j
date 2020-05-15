.class Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;
.super Ljava/lang/Object;
.source "PasspointManager.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method


# virtual methods
.method public onANQPResponse(JLjava/util/Map;)V
    .locals 2
    .param p1, "bssid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p3, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    .line 120
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$000(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->onRequestCompleted(JZ)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v0

    .line 121
    .local v0, "anqpKey":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    if-eqz p3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->access$100(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/AnqpCache;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/android/server/wifi/hotspot2/AnqpCache;->addEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/util/Map;)V

    .line 129
    return-void

    .line 124
    :cond_2
    :goto_1
    return-void
.end method

.method public onIconResponse(JLjava/lang/String;[B)V
    .locals 4
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.action.PASSPOINT_ICON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    const-string v1, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    const-string v1, "android.net.wifi.extra.FILENAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    if-eqz p4, :cond_0

    .line 138
    const-string v1, "android.net.wifi.extra.ICON"

    const/4 v2, 0x0

    array-length v3, p4

    invoke-static {p4, v2, v3}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 4
    .param p1, "event"    # Lcom/android/server/wifi/hotspot2/WnmData;

    .line 149
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->isDeauthEvent()Z

    move-result v0

    const/high16 v1, 0x4000000

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.action.PASSPOINT_DEAUTH_IMMINENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    const-string v1, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getBssid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const-string v1, "android.net.wifi.extra.URL"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "android.net.wifi.extra.ESS"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->isEss()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v1, "android.net.wifi.extra.DELAY"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getDelay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 157
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.action.PASSPOINT_SUBSCRIPTION_REMEDIATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const-string v1, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getBssid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string v1, "android.net.wifi.extra.SUBSCRIPTION_REMEDIATION_METHOD"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getMethod()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v1, "android.net.wifi.extra.URL"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 165
    return-void
.end method
