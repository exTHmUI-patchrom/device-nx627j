.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 44
    const-string v0, "CellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "debugTag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 49
    return-void
.end method

.method private isReceiveCommonCb()Z
    .locals 2

    .line 82
    :try_start_0
    const-string v0, "cellbroadcastreceiver_feature"

    const-string v1, "cb_receiver"

    invoke-static {v0, v1}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "values":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 84
    .end local v0    # "values":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 58
    .local v0, "handler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    .line 59
    return-object v0
.end method


# virtual methods
.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 21
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    move-object/from16 v0, p0

    .line 95
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->isReceiveCommonCb()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->sendMessage(I)V

    .line 100
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    .line 109
    .local v2, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v3, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v5

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v8

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v10

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 109
    move-object v3, v2

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNewCBSms(IIIZZIIJ)V

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching emergency SMS CB, SmsCbMessage is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 117
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 122
    .local v4, "receiverPermission":Ljava/lang/String;
    const/16 v5, 0x11

    .line 130
    .local v10, "appOp":I
    :goto_0
    move v10, v5

    goto :goto_1

    .line 124
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "receiverPermission":Ljava/lang/String;
    .end local v10    # "appOp":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching SMS CB, SmsCbMessage is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const-string v4, "android.permission.RECEIVE_SMS"

    .line 130
    .restart local v4    # "receiverPermission":Ljava/lang/String;
    const/16 v5, 0x10

    goto :goto_0

    .line 133
    .restart local v10    # "appOp":I
    :goto_1
    const-string v5, "message"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    iget-object v5, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v3, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 136
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cmas_additional_broadcast_pkg"

    .line 139
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "additionalPackage":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 142
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v15, v6

    .line 143
    .local v15, "additionalIntent":Landroid/content/Intent;
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v6, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 144
    move-object v7, v15

    move-object v9, v4

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    .end local v15    # "additionalIntent":Landroid/content/Intent;
    .local v17, "additionalIntent":Landroid/content/Intent;
    invoke-virtual/range {v6 .. v15}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 150
    .end local v5    # "additionalPackage":Ljava/lang/String;
    .end local v17    # "additionalIntent":Landroid/content/Intent;
    :cond_2
    iget-object v11, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v17

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 150
    move-object v12, v3

    move-object v14, v4

    move v15, v10

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v20}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/telephony/SmsCbMessage;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 73
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage got object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    return v0
.end method
