.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPhoneNotifier"


# instance fields
.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 47
    return-void
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 350
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$PhoneInternalInterface$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 358
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 356
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 354
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 352
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    .line 369
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 387
    const/4 v0, 0x0

    return v0

    .line 385
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 383
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 381
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 379
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 377
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 375
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 373
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 371
    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 23
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p3

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v15

    .line 162
    .local v15, "subId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    int-to-long v12, v0

    .line 168
    .local v12, "dds":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    .line 169
    .local v11, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 170
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .line 171
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    .line 173
    .local v4, "roaming":Z
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v10, p4

    if-ne v10, v5, :cond_0

    .line 174
    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 175
    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/Phone;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 177
    .end local v0    # "linkProperties":Landroid/net/LinkProperties;
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v16, "linkProperties":Landroid/net/LinkProperties;
    .local v17, "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 178
    .local v9, "ss":Landroid/telephony/ServiceState;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 181
    .end local v4    # "roaming":Z
    .local v0, "roaming":Z
    move/from16 v18, v0

    goto :goto_0

    .end local v0    # "roaming":Z
    .restart local v4    # "roaming":Z
    :cond_1
    move/from16 v18, v4

    .end local v4    # "roaming":Z
    .local v18, "roaming":Z
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_3

    .line 182
    iget-object v3, v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 183
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v5

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->isDataAllowed()Z

    move-result v6

    .line 185
    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    if-eqz v11, :cond_2

    :try_start_1
    invoke-virtual {v11, v15}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-wide/from16 v21, v12

    goto :goto_3

    .line 190
    :cond_2
    const/4 v0, 0x0

    .line 182
    :goto_1
    move v4, v15

    move-object/from16 v7, p2

    move-object/from16 v19, v9

    move-object v9, v14

    .end local v9    # "ss":Landroid/telephony/ServiceState;
    .local v19, "ss":Landroid/telephony/ServiceState;
    move-object/from16 v10, v16

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    .end local v11    # "telephony":Landroid/telephony/TelephonyManager;
    .local v20, "telephony":Landroid/telephony/TelephonyManager;
    move-wide/from16 v21, v12

    move v12, v0

    .end local v12    # "dds":J
    .local v21, "dds":J
    move/from16 v13, v18

    :try_start_2
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 192
    :catch_1
    move-exception v0

    goto :goto_3

    .line 194
    .end local v19    # "ss":Landroid/telephony/ServiceState;
    .end local v20    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v21    # "dds":J
    .restart local v9    # "ss":Landroid/telephony/ServiceState;
    .restart local v11    # "telephony":Landroid/telephony/TelephonyManager;
    .restart local v12    # "dds":J
    :cond_3
    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-wide/from16 v21, v12

    .end local v9    # "ss":Landroid/telephony/ServiceState;
    .end local v11    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v12    # "dds":J
    .restart local v19    # "ss":Landroid/telephony/ServiceState;
    .restart local v20    # "telephony":Landroid/telephony/TelephonyManager;
    .restart local v21    # "dds":J
    :goto_2
    goto :goto_3

    .line 192
    .end local v19    # "ss":Landroid/telephony/ServiceState;
    .end local v20    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v21    # "dds":J
    .restart local v9    # "ss":Landroid/telephony/ServiceState;
    .restart local v11    # "telephony":Landroid/telephony/TelephonyManager;
    .restart local v12    # "dds":J
    :catch_2
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-wide/from16 v21, v12

    .line 195
    .end local v9    # "ss":Landroid/telephony/ServiceState;
    .end local v11    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v12    # "dds":J
    .restart local v19    # "ss":Landroid/telephony/ServiceState;
    .restart local v20    # "telephony":Landroid/telephony/TelephonyManager;
    .restart local v21    # "dds":J
    :goto_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 392
    const-string v0, "DefaultPhoneNotifier"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 128
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "DefaultPhoneNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallForwardingChanged: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCFActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    .line 132
    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 138
    :goto_0
    return-void
.end method

.method public notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 227
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 233
    :goto_0
    return-void
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 212
    .local v0, "subId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v1, "data":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    .line 221
    :goto_0
    return-void
.end method

.method public notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "activationState"    # I

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 310
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const/4 v3, 0x1

    .line 309
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimActivationStateChangedForPhoneId(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 314
    :goto_0
    return-void
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 144
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;)I

    move-result v2

    .line 145
    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 151
    :goto_0
    return-void
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 157
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 201
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 207
    :goto_0
    return-void
.end method

.method public notifyDisconnectCause(II)V
    .locals 1
    .param p1, "cause"    # I
    .param p2, "preciseCause"    # I

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 284
    :goto_0
    return-void
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 111
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 112
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 115
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v3

    .line 116
    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 122
    :goto_0
    return-void
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOemHookRawEventForSubscriber(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 343
    :goto_0
    return-void
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "otaspMode"    # I

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 258
    :goto_0
    return-void
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 52
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 53
    .local v1, "subId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 54
    .local v2, "phoneId":I
    const-string v3, ""

    .line 55
    .local v3, "incomingNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v5

    .line 60
    invoke-interface {v4, v2, v1, v5, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForPhoneId(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    goto :goto_0

    .line 64
    :catch_0
    move-exception v4

    .line 67
    :goto_0
    return-void
.end method

.method public notifyPhysicalChannelConfiguration(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 240
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPhysicalChannelConfigurationForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 246
    :goto_0
    return-void
.end method

.method public notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 262
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 263
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 264
    .local v1, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 265
    .local v2, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 268
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    .line 269
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    .line 270
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    .line 267
    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v3

    .line 275
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "failCause"    # Ljava/lang/String;

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    :goto_0
    return-void
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 72
    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 73
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 75
    .local v2, "subId":I
    const-string v3, "DefaultPhoneNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nofityServiceState: mRegistry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " sender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " phondId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v0, :cond_0

    .line 78
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    move-object v0, v3

    .line 79
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 82
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v1, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 88
    :goto_0
    return-void
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 93
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 100
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 101
    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 107
    :goto_0
    return-void
.end method

.method public notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "state"    # Z

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 330
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 329
    invoke-interface {v0, v1, v2, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 334
    :goto_0
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "lteState"    # Landroid/telephony/VoLteServiceState;

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 304
    :goto_0
    return-void
.end method

.method public notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "activationState"    # I

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 320
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const/4 v3, 0x0

    .line 319
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimActivationStateChangedForPhoneId(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 324
    :goto_0
    return-void
.end method
