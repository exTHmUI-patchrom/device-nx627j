.class Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;
.super Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantStaIfaceHalCallbackV1_1"
.end annotation


# instance fields
.field private mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

.field private mIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 3141
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-direct {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;-><init>()V

    .line 3142
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mIfaceName:Ljava/lang/String;

    .line 3143
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 3144
    return-void
.end method


# virtual methods
.method public onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .locals 1
    .param p1, "bssid"    # [B
    .param p2, "data"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    .param p3, "hs20Data"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    .line 3166
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    .line 3167
    return-void
.end method

.method public onAssociationRejected([BIZ)V
    .locals 1
    .param p1, "bssid"    # [B
    .param p2, "statusCode"    # I
    .param p3, "timedOut"    # Z

    .line 3196
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onAssociationRejected([BIZ)V

    .line 3197
    return-void
.end method

.method public onAuthenticationTimeout([B)V
    .locals 1
    .param p1, "bssid"    # [B

    .line 3201
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onAuthenticationTimeout([B)V

    .line 3202
    return-void
.end method

.method public onBssidChanged(B[B)V
    .locals 1
    .param p1, "reason"    # B
    .param p2, "bssid"    # [B

    .line 3206
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onBssidChanged(B[B)V

    .line 3207
    return-void
.end method

.method public onDisconnected([BZI)V
    .locals 1
    .param p1, "bssid"    # [B
    .param p2, "locallyGenerated"    # Z
    .param p3, "reasonCode"    # I

    .line 3190
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onDisconnected([BZI)V

    .line 3191
    return-void
.end method

.method public onEapFailure()V
    .locals 1

    .line 3211
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onEapFailure()V

    .line 3212
    return-void
.end method

.method public onEapFailure_1_1(I)V
    .locals 4
    .param p1, "code"    # I

    .line 3216
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v2, "onEapFailure_1_1"

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 3218
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 3220
    monitor-exit v0

    .line 3221
    return-void

    .line 3220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onExtRadioWorkStart(I)V
    .locals 1
    .param p1, "id"    # I

    .line 3240
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onExtRadioWorkStart(I)V

    .line 3241
    return-void
.end method

.method public onExtRadioWorkTimeout(I)V
    .locals 1
    .param p1, "id"    # I

    .line 3245
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onExtRadioWorkTimeout(I)V

    .line 3246
    return-void
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # [B
    .param p2, "reasonCode"    # I
    .param p3, "reAuthDelayInSec"    # I
    .param p4, "url"    # Ljava/lang/String;

    .line 3184
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    .line 3185
    return-void
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
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

    .line 3172
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    .line 3173
    return-void
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # [B
    .param p2, "osuMethod"    # B
    .param p3, "url"    # Ljava/lang/String;

    .line 3178
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    .line 3179
    return-void
.end method

.method public onNetworkAdded(I)V
    .locals 1
    .param p1, "id"    # I

    .line 3148
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onNetworkAdded(I)V

    .line 3149
    return-void
.end method

.method public onNetworkRemoved(I)V
    .locals 1
    .param p1, "id"    # I

    .line 3153
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onNetworkRemoved(I)V

    .line 3154
    return-void
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .locals 1
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

    .line 3159
    .local p4, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onStateChanged(I[BILjava/util/ArrayList;)V

    .line 3160
    return-void
.end method

.method public onWpsEventFail([BSS)V
    .locals 1
    .param p1, "bssid"    # [B
    .param p2, "configError"    # S
    .param p3, "errorInd"    # S

    .line 3230
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onWpsEventFail([BSS)V

    .line 3231
    return-void
.end method

.method public onWpsEventPbcOverlap()V
    .locals 1

    .line 3235
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onWpsEventPbcOverlap()V

    .line 3236
    return-void
.end method

.method public onWpsEventSuccess()V
    .locals 1

    .line 3225
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallbackV1_1;->mCallbackV1_0:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->onWpsEventSuccess()V

    .line 3226
    return-void
.end method
