.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;,
        Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WapPushOverSms$1;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 140
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    .end local v1    # "userFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/WapPushOverSms;

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/WapPushOverSms;
    .param p1, "x1"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    return-void
.end method

.method private bindWapPushManagerService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 111
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    .line 117
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 113
    :cond_1
    :goto_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    return-void
.end method

.method private decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .locals 24
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 168
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$1;)V

    move-object v4, v0

    .line 172
    .local v4, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    const/4 v0, 0x0

    .line 173
    .local v0, "index":I
    add-int/lit8 v5, v0, 0x1

    .local v5, "index":I
    const/4 v6, 0x2

    :try_start_0
    aget-byte v0, v2, v0

    .end local v0    # "index":I
    and-int/lit16 v0, v0, 0xff

    .line 174
    .local v0, "transactionId":I
    add-int/lit8 v7, v5, 0x1

    .local v7, "index":I
    aget-byte v5, v2, v5

    .end local v5    # "index":I
    and-int/lit16 v5, v5, 0xff

    .line 177
    .local v5, "pduType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 179
    .local v8, "phoneId":I
    const/4 v9, -0x1

    const/4 v10, 0x6

    const/4 v11, 0x1

    if-eq v5, v10, :cond_1

    const/4 v12, 0x7

    if-eq v5, v12, :cond_1

    .line 181
    iget-object v13, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e00a3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move v7, v13

    .line 183
    if-eq v7, v9, :cond_0

    .line 184
    add-int/lit8 v13, v7, 0x1

    .local v13, "index":I
    aget-byte v7, v2, v7

    .end local v7    # "index":I
    and-int/lit16 v0, v7, 0xff

    .line 185
    add-int/lit8 v7, v13, 0x1

    .restart local v7    # "index":I
    aget-byte v13, v2, v13

    .end local v13    # "index":I
    and-int/lit16 v5, v13, 0xff

    .line 191
    if-eq v5, v10, :cond_1

    if-eq v5, v12, :cond_1

    .line 194
    iput v11, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 195
    return-object v4

    .line 199
    :cond_0
    iput v11, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 200
    return-object v4

    .line 205
    :cond_1
    move v10, v5

    move v5, v0

    .end local v0    # "transactionId":I
    .local v5, "transactionId":I
    .local v10, "pduType":I
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v0

    move-object v12, v0

    .line 213
    .local v12, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iput v6, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 216
    return-object v4

    .line 218
    :cond_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v13

    long-to-int v13, v13

    .line 219
    .local v13, "headerLength":I
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v7, v0

    .line 221
    move v14, v7

    .line 235
    .local v14, "headerStartIndex":I
    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    iput v6, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 238
    return-object v4

    .line 241
    :cond_3
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 242
    .local v15, "mimeType":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 243
    .local v18, "binaryContentType":J
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v7, v0

    .line 245
    new-array v0, v13, [B

    move-object/from16 v20, v0

    .line 246
    .local v20, "header":[B
    move-object/from16 v6, v20

    array-length v0, v6

    .end local v20    # "header":[B
    .local v6, "header":[B
    const/4 v9, 0x0

    invoke-static {v2, v14, v6, v9, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 250
    if-eqz v15, :cond_4

    const-string v0, "application/vnd.wap.coc"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    move-object v0, v2

    .line 258
    .local v0, "intentData":[B
    move-object v11, v0

    goto :goto_0

    .line 253
    .end local v0    # "intentData":[B
    :cond_4
    add-int v0, v14, v13

    .line 254
    .local v0, "dataIndex":I
    array-length v11, v2

    sub-int/2addr v11, v0

    new-array v11, v11, [B

    .line 255
    .local v11, "intentData":[B
    array-length v3, v11

    invoke-static {v2, v0, v11, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 258
    .end local v0    # "dataIndex":I
    :goto_0
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    move-object v3, v0

    .line 259
    .local v3, "subIds":[I
    if-eqz v3, :cond_5

    array-length v0, v3

    if-lez v0, :cond_5

    aget v0, v3, v9

    goto :goto_1

    .line 260
    :cond_5
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v9, v0

    .line 264
    .local v9, "subId":I
    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 266
    .local v17, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :try_start_1
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v9}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v2

    invoke-direct {v0, v11, v2}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v0

    .line 269
    nop

    .line 271
    move-object/from16 v21, v3

    move/from16 v22, v14

    goto :goto_2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "WAP PUSH"

    move-object/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "subIds":[I
    .local v21, "subIds":[I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v14

    const-string v14, "Unable to parse PDU: "

    .end local v14    # "headerStartIndex":I
    .local v22, "headerStartIndex":I
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    move-object/from16 v0, v17

    .end local v17    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v0, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_6

    .line 272
    move-object v2, v0

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .line 273
    .local v2, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    invoke-static {v3, v14, v1}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    const/4 v1, 0x1

    iput v1, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 276
    return-object v4

    .line 286
    .end local v2    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :cond_6
    add-int v1, v7, v13

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v12, v7, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 287
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v1

    long-to-int v7, v1

    .line 288
    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 289
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "wapAppId":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 291
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 293
    :cond_7
    iput-object v1, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    .line 294
    if-nez v15, :cond_8

    .line 295
    move-wide/from16 v2, v18

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .end local v18    # "binaryContentType":J
    .local v2, "binaryContentType":J
    goto :goto_3

    .end local v2    # "binaryContentType":J
    .restart local v18    # "binaryContentType":J
    :cond_8
    move-wide/from16 v2, v18

    move-object v14, v15

    .line 296
    .end local v18    # "binaryContentType":J
    .restart local v2    # "binaryContentType":J
    .local v14, "contentType":Ljava/lang/String;
    :goto_3
    iput-object v14, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .end local v1    # "wapAppId":Ljava/lang/String;
    .end local v14    # "contentType":Ljava/lang/String;
    goto :goto_4

    .line 300
    .end local v2    # "binaryContentType":J
    .restart local v18    # "binaryContentType":J
    :cond_9
    move-wide/from16 v2, v18

    .end local v18    # "binaryContentType":J
    .restart local v2    # "binaryContentType":J
    :goto_4
    iput v9, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    .line 301
    iput v8, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    .line 302
    iput-object v0, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 303
    iput-object v15, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 304
    iput v5, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    .line 305
    iput v10, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    .line 306
    iput-object v6, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    .line 307
    iput-object v11, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    .line 308
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    .line 309
    const/4 v1, -0x1

    iput v1, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    .end local v0    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v2    # "binaryContentType":J
    .end local v5    # "transactionId":I
    .end local v6    # "header":[B
    .end local v7    # "index":I
    .end local v8    # "phoneId":I
    .end local v9    # "subId":I
    .end local v10    # "pduType":I
    .end local v11    # "intentData":[B
    .end local v12    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v13    # "headerLength":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v21    # "subIds":[I
    .end local v22    # "headerStartIndex":I
    goto :goto_5

    .line 310
    :catch_1
    move-exception v0

    .line 313
    .local v0, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v1, 0x2

    iput v1, v4, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 316
    .end local v0    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    return-object v4
.end method

.method public static getAppOpsPermissionForIntent(Ljava/lang/String;)I
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 645
    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/16 v0, 0x12

    .local v0, "appOp":I
    goto :goto_0

    .line 648
    .end local v0    # "appOp":I
    :cond_0
    const/16 v0, 0x13

    .line 650
    .restart local v0    # "appOp":I
    :goto_0
    return v0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .line 562
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .local v0, "messageId":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 564
    .end local v0    # "messageId":Ljava/lang/String;
    :cond_0
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_5

    .line 565
    new-instance v0, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 569
    .restart local v0    # "messageId":Ljava/lang/String;
    :goto_1
    nop

    .line 571
    const/4 v3, 0x0

    .line 573
    .local v3, "cursor":Landroid/database/Cursor;
    nop

    .line 575
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "thread_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "m_id=? AND m_type=?"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    .line 580
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/4 v4, 0x1

    const/16 v10, 0x80

    .line 581
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x0

    .line 573
    move-object v4, p0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 584
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 585
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    if-eqz v3, :cond_1

    .line 591
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_1
    return-wide v4

    .line 590
    :cond_2
    if-eqz v3, :cond_3

    .line 591
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 590
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 587
    :catch_0
    move-exception v4

    .line 588
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "WAP PUSH"

    const-string v6, "Failed to query delivery or read report thread id"

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v3, :cond_3

    goto :goto_2

    .line 594
    :cond_3
    :goto_3
    return-wide v1

    .line 590
    :goto_4
    if-eqz v3, :cond_4

    .line 591
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 567
    .end local v0    # "messageId":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_5
    const-string v0, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-wide v1
.end method

.method public static getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 635
    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "android.permission.RECEIVE_MMS"

    .local v0, "permission":Ljava/lang/String;
    goto :goto_0

    .line 638
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 640
    .restart local v0    # "permission":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .line 601
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 602
    .local v0, "rawLocation":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 603
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 604
    .local v2, "location":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v2, v4, v1

    .line 605
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 607
    .local v5, "cursor":Landroid/database/Cursor;
    nop

    .line 609
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "m_type=? AND ct_l =?"

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/String;

    const/16 v6, 0x82

    .line 614
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v11, v3

    const/4 v12, 0x0

    .line 607
    move-object v6, p0

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    .line 618
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v6, :cond_1

    .line 620
    nop

    .line 625
    if-eqz v5, :cond_0

    .line 626
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_0
    return v3

    .line 625
    :cond_1
    if-eqz v5, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 622
    :catch_0
    move-exception v3

    .line 623
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "WAP PUSH"

    const-string v7, "failed to query existing notification ind"

    invoke-static {v6, v7, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v5, :cond_3

    .line 626
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 625
    :goto_1
    if-eqz v5, :cond_2

    .line 626
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 630
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return v1
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .line 459
    nop

    .line 460
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "carrierConfigValues":Landroid/os/Bundle;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 463
    const-string v2, "supportMmsContentDisposition"

    .line 464
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 463
    return v1

    .line 466
    :cond_0
    return v1
.end method

.method private writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V
    .locals 15
    .param p1, "subId"    # I
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    move-object v1, p0

    .line 471
    move-object/from16 v8, p2

    if-nez v8, :cond_0

    .line 472
    const-string v0, "WAP PUSH"

    const-string v2, "Invalid PUSH PDU"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 475
    .local v9, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    move v10, v0

    .line 477
    .local v10, "type":I
    const/16 v0, 0x82

    const/4 v11, 0x1

    if-eq v10, v0, :cond_4

    const/16 v0, 0x86

    if-eq v10, v0, :cond_1

    const/16 v0, 0x88

    if-eq v10, v0, :cond_1

    .line 547
    :try_start_0
    const-string v0, "WAP PUSH"

    const-string v2, "Received unrecognized WAP Push PDU."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 551
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 549
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 480
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v2

    move-wide v12, v2

    .line 481
    .local v12, "threadId":J
    const-wide/16 v2, -0x1

    cmp-long v0, v12, v2

    if-nez v0, :cond_2

    .line 484
    const-string v0, "WAP PUSH"

    const-string v2, "Failed to find delivery or read report\'s thread id"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    goto/16 :goto_2

    .line 487
    :cond_2
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    .line 493
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 494
    const-string v2, "WAP PUSH"

    const-string v3, "Failed to persist delivery or read report"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    goto/16 :goto_2

    .line 498
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v11}, Landroid/content/ContentValues;-><init>(I)V

    move-object v14, v2

    .line 499
    .local v14, "values":Landroid/content/ContentValues;
    const-string v2, "thread_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 500
    iget-object v2, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 500
    move-object v4, v0

    move-object v5, v14

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v11, :cond_8

    .line 507
    const-string v2, "WAP PUSH"

    const-string v3, "Failed to update delivery or read report thread id"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 512
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v12    # "threadId":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .line 514
    .local v0, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v2

    move-object v12, v2

    .line 516
    .local v12, "configs":Landroid/os/Bundle;
    if-eqz v12, :cond_5

    const-string v2, "enabledTransID"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    .line 519
    .local v2, "contentLocation":[B
    const/16 v4, 0x3d

    array-length v5, v2

    sub-int/2addr v5, v11

    aget-byte v5, v2, v5

    if-ne v4, v5, :cond_5

    .line 520
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v4

    .line 521
    .local v4, "transactionId":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 523
    .local v5, "contentLocationWithId":[B
    array-length v6, v2

    invoke-static {v2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 525
    array-length v6, v2

    array-length v7, v4

    invoke-static {v4, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 527
    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 530
    .end local v2    # "contentLocation":[B
    .end local v4    # "transactionId":[B
    .end local v5    # "contentLocationWithId":[B
    :cond_5
    iget-object v2, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 531
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    .line 537
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_6

    .line 538
    const-string v3, "WAP PUSH"

    const-string v4, "Failed to save MMS WAP push notification ind"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_6
    goto :goto_2

    .line 541
    :cond_7
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    .line 542
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_2

    .line 551
    .end local v0    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v12    # "configs":Landroid/os/Bundle;
    :goto_0
    nop

    .line 552
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "WAP PUSH"

    const-string v3, "Unexpected RuntimeException in persisting MMS WAP push data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 549
    :goto_1
    nop

    .line 550
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save MMS WAP push data: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_8
    :goto_2
    nop

    .line 555
    :goto_3
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I
    .locals 16
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "address"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 344
    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v11, p3

    invoke-direct {v1, v3, v11}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v12

    .line 345
    .local v12, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    iget v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v13, -0x1

    if-eq v0, v13, :cond_0

    .line 346
    iget v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return v0

    .line 349
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    iget-object v4, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V

    .line 359
    :cond_1
    iget-object v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 361
    const/4 v6, 0x1

    .line 362
    .local v6, "processFurther":Z
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object v7, v0

    .line 364
    .local v7, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v7, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    iget-object v8, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string v9, "mms-mgr"

    invoke-interface {v0, v8, v4, v9}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    .line 370
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const-string v8, "transactionId"

    iget v9, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v8, "pduType"

    iget v9, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v8, "header"

    iget-object v9, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 376
    const-string v8, "data"

    iget-object v9, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 377
    const-string v8, "contentTypeParameters"

    iget-object v9, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 378
    iget v8, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v0, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 379
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 380
    const-string v8, "address"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :cond_3
    iget-object v8, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    iget-object v9, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v0}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 386
    .local v8, "procRet":I
    and-int/lit8 v9, v8, 0x1

    if-lez v9, :cond_4

    const v9, 0x8000

    and-int/2addr v9, v8

    if-nez v9, :cond_4

    .line 388
    const/4 v6, 0x0

    .line 391
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v8    # "procRet":I
    :cond_4
    :goto_0
    if-nez v6, :cond_5

    .line 392
    return v5

    .line 396
    .end local v6    # "processFurther":Z
    .end local v7    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_5
    goto :goto_1

    .line 370
    .restart local v6    # "processFurther":Z
    .restart local v7    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 394
    .end local v6    # "processFurther":Z
    .end local v7    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v0

    .line 400
    :cond_6
    :goto_1
    iget-object v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 402
    const/4 v0, 0x2

    return v0

    .line 405
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 406
    .local v14, "intent":Landroid/content/Intent;
    iget-object v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v0, "transactionId"

    iget v6, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v0, "pduType"

    iget v6, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v0, "header"

    iget-object v6, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 410
    const-string v0, "data"

    iget-object v6, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 411
    const-string v0, "contentTypeParameters"

    iget-object v6, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    iget v0, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v14, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 413
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 414
    const-string v0, "address"

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    :cond_8
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v15

    .line 420
    .local v15, "componentName":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 421
    .local v5, "options":Landroid/os/Bundle;
    if-eqz v15, :cond_9

    .line 423
    invoke-virtual {v14, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 427
    :try_start_5
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 428
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mms-app"

    .line 427
    invoke-interface {v0, v6, v4, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    .line 429
    .local v6, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 430
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v6, v7}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 431
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v4

    .line 433
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "duration":J
    .local v0, "options":Landroid/os/Bundle;
    goto :goto_2

    .line 432
    .end local v0    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 436
    :cond_9
    move-object v0, v5

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local v0    # "options":Landroid/os/Bundle;
    :goto_2
    iget-object v4, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v12, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 437
    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsPermissionForIntent(Ljava/lang/String;)I

    move-result v7

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 436
    move-object v4, v11

    move-object v5, v14

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 439
    return v13
.end method

.method public dispose()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 154
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void
.end method

.method public isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v0

    .line 447
    .local v0, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    iget v1, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "application/vnd.wap.mms-message"

    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 447
    :goto_0
    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 124
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 126
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 132
    return-void
.end method
