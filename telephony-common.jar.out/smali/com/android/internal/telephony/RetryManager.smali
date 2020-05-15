.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final DEFAULT_APN_RETRY_AFTER_DISCONNECT_DELAY:J = 0x2710L

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final DEFAULT_INTER_APN_DELAY:J = 0x4e20L

.field private static final DEFAULT_INTER_APN_DELAY_FOR_PROVISIONING:J = 0xbb8L

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field private static final MAX_SAME_APN_RETRY:I = 0x3

.field public static final NO_RETRY:J = -0x1L

.field public static final NO_SUGGESTED_RETRY_DELAY:J = -0x2L

.field private static final OTHERS_APN_TYPE:Ljava/lang/String; = "others"

.field public static final VDBG:Z = false


# instance fields
.field private mApnRetryAfterDisconnectDelay:J

.field private mApnType:Ljava/lang/String;

.field private mConfig:Ljava/lang/String;

.field private mCurrentApnIndex:I

.field private mFailFastInterApnDelay:J

.field private mInterApnDelay:J

.field private mMaxRetryCount:I

.field private mModemSuggestedDelay:J

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;

.field private mSameApnRetryCount:I

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    .line 185
    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 195
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 201
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    iput-object p2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    .line 232
    return-void
.end method

.method private configure(Ljava/lang/String;)Z
    .locals 10
    .param p1, "configStr"    # Ljava/lang/String;

    .line 243
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->reset()V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configure: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 254
    const/4 v0, 0x0

    .line 258
    .local v0, "defaultRandomization":I
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "strArray":[Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "defaultRandomization":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_a

    .line 262
    aget-object v5, v2, v0

    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "splitStr":[Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 265
    array-length v6, v5

    if-le v6, v1, :cond_6

    .line 266
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 268
    aget-object v6, v5, v3

    const-string v7, "default_randomization"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    aget-object v6, v5, v3

    aget-object v7, v5, v1

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 270
    .local v6, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    return v3

    .line 271
    :cond_1
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_2

    .line 272
    .end local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_2
    aget-object v6, v5, v3

    const-string v7, "max_retries"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 273
    const-string v6, "infinite"

    aget-object v7, v5, v1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 274
    iput-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto/16 :goto_2

    .line 276
    :cond_3
    aget-object v6, v5, v3

    aget-object v7, v5, v1

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 277
    .restart local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    return v3

    .line 278
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto/16 :goto_2

    .line 281
    .end local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    const-string v1, "RetryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized configuration name value pair: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v3

    .line 290
    :cond_6
    aget-object v6, v2, v0

    const-string v8, ":"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 291
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 292
    new-instance v6, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v6, v3, v3}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    .line 293
    .local v6, "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string v7, "delayTime"

    aget-object v8, v5, v3

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 294
    .local v7, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    return v3

    .line 295
    :cond_7
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    .line 298
    array-length v8, v5

    if-le v8, v1, :cond_9

    .line 299
    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 301
    const-string v8, "randomizationTime"

    aget-object v9, v5, v1

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 302
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_8

    return v3

    .line 303
    :cond_8
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_1

    .line 305
    :cond_9
    iput v4, v6, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 307
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v5    # "splitStr":[Ljava/lang/String;
    .end local v6    # "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v7    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v3, :cond_b

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 314
    .end local v2    # "strArray":[Ljava/lang/String;
    .end local v4    # "defaultRandomization":I
    :cond_b
    goto :goto_3

    .line 315
    :cond_c
    const-string v0, "configure: cleared"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 319
    :goto_3
    return v1
.end method

.method private configureRetry()V
    .locals 17

    .line 326
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 327
    .local v2, "configString":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v3, v0

    .line 330
    .local v3, "otherConfigString":Ljava/lang/String;
    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0x4e20

    :try_start_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "test.data_retry_config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 334
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 335
    return-void

    .line 339
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 340
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "carrier_config"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 341
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v8, v1, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 343
    .local v8, "b":Landroid/os/PersistableBundle;
    const-string v9, "carrier_data_call_apn_delay_default_long"

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 346
    const-string v9, "carrier_data_call_apn_delay_faster_long"

    invoke-virtual {v8, v9, v4, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 349
    const-string v9, "carrier_data_call_apn_retry_after_disconnect_long"

    const-wide/16 v10, 0x2710

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    .line 354
    const-string v9, "carrier_data_call_retry_config_strings"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "allConfigStrings":[Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 357
    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    move-object v12, v3

    move v3, v11

    .end local v3    # "otherConfigString":Ljava/lang/String;
    .local v12, "otherConfigString":Ljava/lang/String;
    :goto_0
    if-ge v3, v10, :cond_3

    :try_start_1
    aget-object v13, v9, v3

    .line 358
    .local v13, "s":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 359
    const-string v14, ":"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, "splitStr":[Ljava/lang/String;
    array-length v4, v14

    if-ne v4, v15, :cond_2

    .line 361
    aget-object v4, v14, v11

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "apnType":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v15, 0x1

    if-eqz v5, :cond_1

    .line 366
    aget-object v3, v14, v15

    move-object v2, v3

    .line 367
    goto :goto_1

    .line 368
    :cond_1
    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 371
    aget-object v5, v14, v15
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v5

    .line 357
    .end local v4    # "apnType":Ljava/lang/String;
    .end local v13    # "s":Ljava/lang/String;
    .end local v14    # "splitStr":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0xbb8

    goto :goto_0

    .line 388
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "b":Landroid/os/PersistableBundle;
    .end local v9    # "allConfigStrings":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v12

    goto :goto_3

    .line 378
    .end local v12    # "otherConfigString":Ljava/lang/String;
    .restart local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "otherConfigString":Ljava/lang/String;
    .restart local v8    # "b":Landroid/os/PersistableBundle;
    .restart local v9    # "allConfigStrings":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v3, v12

    :cond_4
    if-nez v2, :cond_6

    .line 379
    if-eqz v3, :cond_5

    .line 380
    move-object v2, v3

    goto :goto_2

    .line 384
    :cond_5
    :try_start_2
    const-string v4, "Invalid APN retry configuration!. Use the default one now."

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 385
    const-string v4, "max_retries=3, 5000, 5000, 5000"
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v4

    .line 395
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "b":Landroid/os/PersistableBundle;
    .end local v9    # "allConfigStrings":[Ljava/lang/String;
    :cond_6
    :goto_2
    goto :goto_4

    .line 388
    :catch_1
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/lang/NullPointerException;
    :goto_3
    const-string v4, "Failed to read configuration! Use the hardcoded default value."

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 392
    iput-wide v6, v1, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 393
    const-wide/16 v4, 0xbb8

    iput-wide v4, v1, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 394
    const-string v2, "max_retries=3, 5000, 5000, 5000"

    .line 402
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_4
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 403
    return-void
.end method

.method private getRetryTimer()I
    .locals 4

    .line 410
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 411
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .local v0, "index":I
    goto :goto_0

    .line 413
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 417
    .restart local v0    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v1, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v2

    add-int/2addr v1, v2

    .local v1, "retVal":I
    goto :goto_1

    .line 420
    .end local v1    # "retVal":I
    :cond_1
    const/4 v1, 0x0

    .line 423
    .restart local v1    # "retVal":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 424
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 692
    const-string v0, "RetryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 2
    .param p1, "index"    # I

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v0, v0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 488
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    .line 489
    const/4 v1, 0x0

    return v1

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 451
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, "value":I
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 453
    .end local v0    # "value":I
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "RetryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bad value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    move-object v0, v1

    .line 461
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .local v0, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method private reset()V
    .locals 2

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 620
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 621
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 622
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 623
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 625
    return-void
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 472
    if-gez p2, :cond_0

    .line 473
    const-string v0, "RetryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bad value: is < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_0

    .line 476
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x1

    .line 479
    .restart local v0    # "retVal":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public getDelayForNextApn(Z)J
    .locals 7
    .param p1, "failFastEnabled"    # Z

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 546
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 547
    const-string v0, "Modem suggested not retrying."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 548
    return-wide v1

    .line 551
    :cond_1
    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modem suggested retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 556
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    return-wide v0

    .line 565
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 567
    .local v0, "index":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    const/4 v0, 0x0

    .line 570
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    if-nez v3, :cond_8

    .line 581
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-gt v0, v3, :cond_6

    .line 583
    iget-boolean v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v3, v4, :cond_5

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reached maximum retry count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 585
    return-wide v1

    .line 587
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v1

    int-to-long v1, v1

    .line 588
    .local v1, "delay":J
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    goto :goto_0

    .line 591
    .end local v1    # "delay":J
    :cond_6
    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 594
    .restart local v1    # "delay":J
    :goto_0
    if-eqz p1, :cond_7

    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_7

    .line 599
    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 602
    :cond_7
    return-wide v1

    .line 574
    .end local v1    # "delay":J
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v0, v3, :cond_3

    .line 575
    const-string v3, "All APNs have permanently failed."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 576
    return-wide v1

    .line 542
    .end local v0    # "index":I
    :cond_9
    :goto_1
    const-string v0, "Waiting APN list is null or empty."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 543
    return-wide v1
.end method

.method public getNBRetryTimer()I
    .locals 4

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v1, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v2

    add-int/2addr v1, v2

    .local v1, "retVal":I
    goto :goto_0

    .line 434
    .end local v1    # "retVal":I
    :cond_0
    const/16 v1, 0x1388

    .line 437
    .restart local v1    # "retVal":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nubiaGetRetryTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 438
    return v1
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 6

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 511
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v0

    .line 515
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 517
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 520
    .local v0, "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    .line 523
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    if-nez v2, :cond_4

    .line 529
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v1

    .line 526
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v0, v2, :cond_2

    return-object v1

    .line 502
    .end local v0    # "index":I
    :cond_5
    :goto_0
    const-string v0, "Waiting APN list is null or empty."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 503
    return-object v1
.end method

.method public getRetryAfterDisconnectDelay()J
    .locals 2

    .line 678
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    return-wide v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 610
    if-eqz p1, :cond_0

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 613
    :cond_0
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 670
    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 671
    return-void
.end method

.method public setWaitingApns(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-nez p1, :cond_0

    .line 634
    const-string v0, "No waiting APNs provided"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 635
    return-void

    .line 638
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 641
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 644
    .local v1, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 645
    .end local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    .line 647
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " waiting APNs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetryManager: mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMaxRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentApnIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSameApnRtryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mModemSuggestedDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mRetryForever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mInterApnDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mApnRetryAfterDisconnectDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mConfig={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
