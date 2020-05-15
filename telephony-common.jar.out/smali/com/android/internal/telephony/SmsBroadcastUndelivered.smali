.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final DEFAULT_PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 56
    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "date"

    const-string v4, "reference_number"

    const-string v5, "count"

    const-string v6, "address"

    const-string v7, "_id"

    const-string v8, "message_body"

    const-string v9, "display_originating_addr"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 131
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 133
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .end local v1    # "userFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsBroadcastUndelivered;
    .param p1, "x1"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;)V

    return-void
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    .line 233
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 235
    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 238
    :cond_1
    const-string v1, "SmsBroadcastUndelivered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " format, can\'t deliver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_1
    return-void
.end method

.method private getUndeliveredSmsExpirationTime(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 244
    .local v0, "subId":I
    const-string v1, "carrier_config"

    .line 245
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 246
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 248
    .local v2, "bundle":Landroid/os/PersistableBundle;
    const-wide v3, 0x9a7ec800L

    if-eqz v2, :cond_0

    .line 249
    const-string v5, "undelivered_sms_message_expiration_time"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    return-wide v3

    .line 252
    :cond_0
    return-wide v3
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p2, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 109
    sget-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    .line 117
    :cond_0
    const/4 v0, 0x6

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 120
    :cond_1
    if-eqz p2, :cond_2

    .line 121
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 123
    :cond_2
    return-void
.end method

.method private scanRawTable(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 146
    const-string v0, "SmsBroadcastUndelivered"

    const-string v2, "scanning raw table for undelivered messages"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 148
    .local v2, "startTime":J
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object v5, v0

    .line 150
    .local v5, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object v4, v0

    .line 151
    .local v4, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/4 v0, 0x0

    move-object v6, v0

    .line 154
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/32 v7, 0xf4240

    :try_start_0
    iget-object v9, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v11, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v12, "deleted = 0"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 157
    if-nez v6, :cond_1

    .line 158
    const-string v0, "SmsBroadcastUndelivered"

    const-string v9, "error getting pending message cursor"

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v6, :cond_0

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_0
    const-string v0, "SmsBroadcastUndelivered"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finished scanning raw table in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    div-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    move-result v0

    .local v0, "isCurrentFormat3gpp2":Z
    :goto_0
    move v9, v0

    .line 163
    .end local v0    # "isCurrentFormat3gpp2":Z
    .local v9, "isCurrentFormat3gpp2":Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 166
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    nop

    .line 170
    nop

    .line 173
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 175
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    goto :goto_1

    .line 177
    :cond_2
    new-instance v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 178
    .local v10, "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 179
    .local v12, "receivedCount":Ljava/lang/Integer;
    if-nez v12, :cond_4

    .line 180
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getUndeliveredSmsExpirationTime(Landroid/content/Context;)J

    move-result-wide v13

    .line 182
    .local v13, "expirationTime":J
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v15

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v13

    cmp-long v11, v15, v17

    if-gez v11, :cond_3

    .line 185
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v13    # "expirationTime":J
    :cond_3
    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v11

    .line 189
    .local v13, "newCount":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v11

    if-ne v13, v11, :cond_5

    .line 192
    const-string v11, "SmsBroadcastUndelivered"

    const-string v14, "found complete multi-part message"

    invoke-static {v11, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 195
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v10    # "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v12    # "receivedCount":Ljava/lang/Integer;
    .end local v13    # "newCount":I
    :goto_1
    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "SmsBroadcastUndelivered"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error loading SmsTracker: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    nop

    .line 162
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    move v0, v9

    goto/16 :goto_0

    .line 203
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 205
    .local v10, "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    iget-object v11, v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 206
    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhere()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v14

    .line 205
    invoke-virtual {v11, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 207
    .local v11, "rows":I
    if-nez v11, :cond_7

    .line 208
    const-string v12, "SmsBroadcastUndelivered"

    const-string v13, "No rows were deleted from raw table!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 210
    :cond_7
    const-string v12, "SmsBroadcastUndelivered"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleted "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " rows from raw table for incomplete "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " part message"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    .end local v10    # "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v11    # "rows":I
    :goto_4
    goto :goto_3

    .line 217
    .end local v9    # "isCurrentFormat3gpp2":Z
    :cond_8
    if-eqz v6, :cond_9

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_9
    const-string v0, "SmsBroadcastUndelivered"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 217
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 214
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v9, "SmsBroadcastUndelivered"

    const-string v10, "error reading pending SMS messages"

    invoke-static {v9, v10, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    .end local v0    # "e":Landroid/database/SQLException;
    if-eqz v6, :cond_a

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_a
    const-string v0, "SmsBroadcastUndelivered"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v10, "finished scanning raw table in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    div-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    nop

    .line 223
    return-void

    .line 217
    :goto_6
    if-eqz v6, :cond_b

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finished scanning raw table in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    div-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    const-string v8, "SmsBroadcastUndelivered"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
