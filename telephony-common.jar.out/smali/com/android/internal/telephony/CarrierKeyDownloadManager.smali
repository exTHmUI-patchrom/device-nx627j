.class public Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.super Ljava/lang/Object;
.source "CarrierKeyDownloadManager.java"


# static fields
.field private static final CARRIER_KEY_TYPES:[I

.field private static final DAY_IN_MILLIS:I = 0x5265c00

.field private static final END_RENEWAL_WINDOW_DAYS:I = 0x7

.field private static final INTENT_KEY_RENEWAL_ALARM_PREFIX:Ljava/lang/String; = "com.android.internal.telephony.carrier_key_download_alarm"

.field private static final JSON_CARRIER_KEYS:Ljava/lang/String; = "carrier-keys"

.field private static final JSON_CERTIFICATE:Ljava/lang/String; = "certificate"

.field private static final JSON_CERTIFICATE_ALTERNATE:Ljava/lang/String; = "public-key"

.field private static final JSON_IDENTIFIER:Ljava/lang/String; = "key-identifier"

.field private static final JSON_TYPE:Ljava/lang/String; = "key-type"

.field private static final JSON_TYPE_VALUE_EPDG:Ljava/lang/String; = "EPDG"

.field private static final JSON_TYPE_VALUE_WLAN:Ljava/lang/String; = "WLAN"

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierKeyDownloadManager"

.field public static final MCC:Ljava/lang/String; = "MCC"

.field private static final MCC_MNC_PREF_TAG:Ljava/lang/String; = "CARRIER_KEY_DM_MCC_MNC"

.field public static final MNC:Ljava/lang/String; = "MNC"

.field private static final SEPARATOR:Ljava/lang/String; = ":"

.field private static final START_RENEWAL_WINDOW_DAYS:I = 0x15

.field private static final UNINITIALIZED_KEY_TYPE:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field public final mDownloadManager:Landroid/app/DownloadManager;

.field public mKeyAvailability:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    .line 127
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->handleAlarmOrConfigChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getMccMncSetFromPref()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierKeyDownloadManager;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierKeyDownloadManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->onDownloadComplete(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierKeyDownloadManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierKeyDownloadManager;
    .param p1, "x1"    # J

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->onPostDownloadProcessing(J)V

    return-void
.end method

.method private carrierUsesKeys()Z
    .locals 9

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 363
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 364
    return v1

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 367
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 368
    .local v3, "b":Landroid/os/PersistableBundle;
    if-nez v3, :cond_1

    .line 369
    return v1

    .line 371
    :cond_1
    const-string v4, "imsi_key_availability_int"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    .line 372
    const-string v4, "imsi_key_download_url_string"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    .line 373
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    if-nez v4, :cond_2

    goto :goto_1

    .line 377
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_4

    aget v7, v4, v6

    .line 378
    .local v7, "key_type":I
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 379
    const/4 v1, 0x1

    return v1

    .line 377
    .end local v7    # "key_type":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 382
    :cond_4
    return v1

    .line 374
    :cond_5
    :goto_1
    const-string v4, "CarrierKeyDownloadManager"

    const-string v5, "Carrier not enabled or invalid values"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v1
.end method

.method private cleanupDownloadPreferences(J)V
    .locals 3
    .param p1, "carrierKeyDownloadIdentifier"    # J

    .line 185
    const-string v0, "CarrierKeyDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up download preferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method

.method private cleanupRenewalAlarms()V
    .locals 5

    .line 192
    const-string v0, "CarrierKeyDownloadManager"

    const-string v1, "Cleaning up existing renewal alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 194
    .local v0, "slotId":I
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 197
    .local v2, "carrierKeyDownloadIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    .line 198
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 199
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 200
    return-void
.end method

.method private static convertToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .line 390
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 391
    .local v0, "gunzip":Ljava/util/zip/GZIPInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 392
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 399
    .end local v0    # "gunzip":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private downloadKey()Z
    .locals 12

    .line 508
    const-string v0, "CarrierKeyDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting download from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, ""

    .line 510
    .local v0, "mcc":Ljava/lang/String;
    const-string v1, ""

    .line 511
    .local v1, "mnc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "simOperator":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 514
    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "using values for mcc, mnc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 523
    .local v3, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 524
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 525
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 527
    .local v5, "carrierKeyDownloadRequestId":Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 529
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "mccMnc":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 531
    .local v8, "slotId":I
    const-string v9, "CarrierKeyDownloadManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "storing values in sharedpref mcc, mnc, days: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CARRIER_KEY_DM_MCC_MNC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v3    # "request":Landroid/app/DownloadManager$Request;
    .end local v5    # "carrierKeyDownloadRequestId":Ljava/lang/Long;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "mccMnc":Ljava/lang/String;
    .end local v8    # "slotId":I
    nop

    .line 539
    const/4 v3, 0x1

    return v3

    .line 535
    :catch_0
    move-exception v3

    .line 536
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "CarrierKeyDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception trying to dowload key from url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return v4

    .line 518
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "CarrierKeyDownloadManager"

    const-string v5, "mcc, mnc: is empty"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v4
.end method

.method public static getKeyInformation([B)Landroid/util/Pair;
    .locals 7
    .param p0, "certificate"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 550
    .local v0, "inStream":Ljava/io/InputStream;
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 551
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 552
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/util/Pair;

    .line 553
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 554
    .local v3, "keyInformation":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PublicKey;Ljava/lang/Long;>;"
    return-object v3
.end method

.method private getMccMncSetFromPref()Ljava/lang/String;
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 267
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 268
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CARRIER_KEY_DM_MCC_MNC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleAlarmOrConfigChange()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->carrierUsesKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->areCarrierKeysAbsentOrExpiring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->downloadKey()Z

    move-result v0

    .line 172
    .local v0, "downloadStartedSuccessfully":Z
    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->resetRenewalAlarm()V

    .line 175
    .end local v0    # "downloadStartedSuccessfully":Z
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    return-void

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupRenewalAlarms()V

    .line 182
    :goto_0
    return-void
.end method

.method private onDownloadComplete(JLjava/lang/String;)V
    .locals 10
    .param p1, "carrierKeyDownloadIdentifier"    # J
    .param p3, "mccMnc"    # Ljava/lang/String;

    .line 318
    const-string v0, "CarrierKeyDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 321
    .local v0, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 323
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 325
    .local v4, "source":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 329
    const-string v5, "status"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 330
    .local v5, "columnIndex":I
    const/16 v6, 0x8

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 332
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 333
    invoke-virtual {v7, p1, p2}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 334
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v6

    .line 335
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->convertToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "jsonStr":Ljava/lang/String;
    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->parseJsonAndPersistKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v7, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 343
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :goto_0
    goto :goto_3

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 341
    .end local v6    # "jsonStr":Ljava/lang/String;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 337
    :catch_1
    move-exception v6

    .line 338
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "CarrierKeyDownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in download:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    .end local v6    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v6, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 343
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 341
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v7, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 343
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 346
    goto :goto_2

    .line 344
    :catch_2
    move-exception v1

    .line 345
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 346
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    throw v6

    .line 349
    :cond_1
    :goto_3
    const-string v1, "CarrierKeyDownloadManager"

    const-string v3, "Completed downloading keys"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v5    # "columnIndex":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 352
    return-void
.end method

.method private onPostDownloadProcessing(J)V
    .locals 0
    .param p1, "carrierKeyDownloadIdentifier"    # J

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->resetRenewalAlarm()V

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupDownloadPreferences(J)V

    .line 163
    return-void
.end method


# virtual methods
.method public areCarrierKeysAbsentOrExpiring()Z
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 490
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 491
    .local v4, "key_type":I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 492
    nop

    .line 490
    .end local v4    # "key_type":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .restart local v4    # "key_type":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 495
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v0

    .line 496
    .local v0, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 497
    const-string v2, "CarrierKeyDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key not found for: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v1

    .line 500
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v3

    .line 501
    .local v3, "imsiDate":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 502
    .local v5, "timeToExpire":J
    const-wide/32 v7, 0x6c258c00

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 504
    .end local v0    # "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    .end local v3    # "imsiDate":Ljava/util/Date;
    .end local v4    # "key_type":I
    .end local v5    # "timeToExpire":J
    :cond_3
    return v2
.end method

.method public getExpirationDate()J
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 208
    const-wide v0, 0x7fffffffffffffffL

    .line 209
    .local v0, "minExpirationDate":J
    sget-object v2, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 210
    .local v5, "key_type":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 211
    goto :goto_1

    .line 213
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 214
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v6

    .line 215
    .local v6, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 216
    invoke-virtual {v6}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    .line 217
    invoke-virtual {v6}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 209
    .end local v5    # "key_type":I
    .end local v6    # "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    goto :goto_2

    .line 231
    :cond_3
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 232
    .local v2, "random":Ljava/util/Random;
    const v3, 0x6c258c00

    .line 233
    .local v3, "max":I
    const v4, 0x240c8400

    .line 234
    .local v4, "min":I
    sub-int v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 235
    .local v5, "randomTime":I
    int-to-long v6, v5

    sub-long/2addr v0, v6

    .end local v2    # "random":Ljava/util/Random;
    .end local v3    # "max":I
    .end local v4    # "min":I
    .end local v5    # "randomTime":I
    goto :goto_3

    .line 227
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long v0, v2, v4

    .line 237
    :goto_3
    return-wide v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 278
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isKeyEnabled(I)Z
    .locals 2
    .param p1, "keyType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 479
    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    add-int/lit8 v1, p1, -0x1

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    .line 480
    .local v0, "returnValue":I
    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValidDownload(Ljava/lang/String;)Z
    .locals 11
    .param p1, "mccMnc"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 288
    const-string v0, ""

    .line 289
    .local v0, "mccCurrent":Ljava/lang/String;
    const-string v1, ""

    .line 290
    .local v1, "mncCurrent":Ljava/lang/String;
    const-string v2, ""

    .line 291
    .local v2, "mccSource":Ljava/lang/String;
    const-string v3, ""

    .line 293
    .local v3, "mncSource":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "simOperator":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "splitValue":[Ljava/lang/String;
    aget-object v2, v5, v6

    .line 301
    const/4 v7, 0x1

    aget-object v3, v5, v7

    .line 302
    const-string v8, "CarrierKeyDownloadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "values from sharedPrefs mcc, mnc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v8, 0x3

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    const-string v8, "CarrierKeyDownloadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "using values for mcc, mnc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    return v7

    .line 311
    :cond_1
    return v6

    .line 295
    .end local v5    # "splitValue":[Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v5, "CarrierKeyDownloadManager"

    const-string v7, "simOperator or mcc/mnc is empty"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v6
.end method

.method public parseJsonAndPersistKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p2, "mccMnc"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 418
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 422
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 424
    .local v1, "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :try_start_0
    const-string v0, ""

    .line 425
    .local v0, "mcc":Ljava/lang/String;
    const-string v2, ""

    .line 426
    .local v2, "mnc":Ljava/lang/String;
    const-string v3, ":"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "splitValue":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v12, v3, v5

    .line 428
    .end local v0    # "mcc":Ljava/lang/String;
    .local v12, "mcc":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v13, v3, v0

    .line 429
    .end local v2    # "mnc":Ljava/lang/String;
    .local v13, "mnc":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v2, p1

    :try_start_2
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v6, "carrier-keys"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v14, v6

    .line 431
    .local v14, "keys":Lorg/json/JSONArray;
    nop

    .local v5, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 432
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object v15, v6

    .line 435
    .local v15, "key":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 436
    .local v6, "cert":Ljava/lang/String;
    const-string v7, "certificate"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    const-string v7, "certificate"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 441
    .end local v6    # "cert":Ljava/lang/String;
    .local v10, "cert":Ljava/lang/String;
    :goto_1
    move-object v10, v6

    goto :goto_2

    .line 439
    .end local v10    # "cert":Ljava/lang/String;
    .restart local v6    # "cert":Ljava/lang/String;
    :cond_1
    const-string v7, "public-key"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 441
    .end local v6    # "cert":Ljava/lang/String;
    .restart local v10    # "cert":Ljava/lang/String;
    :goto_2
    const-string v6, "key-type"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    .line 442
    .local v11, "typeString":Ljava/lang/String;
    const/4 v6, -0x1

    .line 443
    .local v6, "type":I
    const-string v7, "WLAN"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 444
    const/4 v6, 0x2

    .line 448
    .end local v6    # "type":I
    .local v16, "type":I
    :cond_2
    :goto_3
    move/from16 v16, v6

    goto :goto_4

    .line 445
    .end local v16    # "type":I
    .restart local v6    # "type":I
    :cond_3
    const-string v7, "EPDG"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 446
    const/4 v6, 0x1

    goto :goto_3

    .line 448
    .end local v6    # "type":I
    .restart local v16    # "type":I
    :goto_4
    const-string v6, "key-identifier"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "identifier":Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v6

    .line 450
    .local v8, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v6

    .line 451
    .local v7, "fReader":Ljava/io/Reader;
    new-instance v6, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v1, v6

    .line 452
    nop

    .line 453
    :try_start_3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getKeyInformation([B)Landroid/util/Pair;

    move-result-object v6

    .line 454
    .local v6, "keyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PublicKey;Ljava/lang/Long;>;"
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    .line 455
    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .local v17, "jsonObj":Lorg/json/JSONObject;
    check-cast v0, Ljava/security/PublicKey;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v1

    :try_start_4
    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .local v18, "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object v1, v6

    move-object/from16 v6, p0

    .end local v6    # "keyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PublicKey;Ljava/lang/Long;>;"
    .local v1, "keyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PublicKey;Ljava/lang/Long;>;"
    move-object/from16 v21, v7

    move-object v7, v0

    .end local v7    # "fReader":Ljava/io/Reader;
    .local v21, "fReader":Ljava/io/Reader;
    move-object v0, v8

    move/from16 v8, v16

    .end local v8    # "inStream":Ljava/io/ByteArrayInputStream;
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    move-object/from16 v23, v10

    move-object/from16 v22, v11

    move-wide/from16 v10, v19

    .end local v10    # "cert":Ljava/lang/String;
    .end local v11    # "typeString":Ljava/lang/String;
    .local v22, "typeString":Ljava/lang/String;
    .local v23, "cert":Ljava/lang/String;
    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->savePublicKey(Ljava/security/PublicKey;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 431
    .end local v0    # "inStream":Ljava/io/ByteArrayInputStream;
    .end local v1    # "keyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PublicKey;Ljava/lang/Long;>;"
    .end local v9    # "identifier":Ljava/lang/String;
    .end local v15    # "key":Lorg/json/JSONObject;
    .end local v16    # "type":I
    .end local v21    # "fReader":Ljava/io/Reader;
    .end local v22    # "typeString":Ljava/lang/String;
    .end local v23    # "cert":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    goto/16 :goto_0

    .line 462
    .end local v3    # "splitValue":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v12    # "mcc":Ljava/lang/String;
    .end local v13    # "mnc":Ljava/lang/String;
    .end local v14    # "keys":Lorg/json/JSONArray;
    .end local v17    # "jsonObj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v18

    goto/16 :goto_b

    .line 459
    :catch_0
    move-exception v0

    move-object/from16 v1, v18

    goto/16 :goto_8

    .line 457
    :catch_1
    move-exception v0

    move-object/from16 v1, v18

    goto/16 :goto_9

    .line 462
    .end local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .local v1, "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v3, v18

    .end local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    goto/16 :goto_b

    .line 459
    .end local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :catch_2
    move-exception v0

    move-object/from16 v18, v1

    .end local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    goto :goto_8

    .line 457
    .end local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :catch_3
    move-exception v0

    move-object/from16 v18, v1

    .end local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    goto/16 :goto_9

    .line 463
    .end local v18    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :cond_4
    if-eqz v1, :cond_5

    .line 464
    :try_start_5
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 466
    :catch_4
    move-exception v0

    move-object v3, v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v6, "Exception getting certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_a

    .line 468
    :cond_5
    :goto_6
    goto/16 :goto_a

    .line 459
    :catch_5
    move-exception v0

    goto :goto_8

    .line 457
    :catch_6
    move-exception v0

    goto :goto_9

    .line 462
    :catchall_2
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_7

    .line 459
    :catch_7
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_8

    .line 457
    :catch_8
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_9

    .line 462
    :catchall_3
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .end local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .local v3, "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :goto_7
    move-object v3, v1

    move-object v1, v0

    goto :goto_b

    .line 459
    .end local v3    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :catch_9
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 460
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_6
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getting certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 464
    :try_start_7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_6

    .line 466
    :catch_a
    move-exception v0

    move-object v3, v0

    .line 467
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 458
    .local v0, "e":Lorg/json/JSONException;
    :goto_9
    :try_start_8
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Json parsing error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 463
    .end local v0    # "e":Lorg/json/JSONException;
    if-eqz v1, :cond_5

    .line 464
    :try_start_9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_6

    .line 466
    :catch_c
    move-exception v0

    move-object v3, v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void

    .line 462
    :catchall_4
    move-exception v0

    goto :goto_7

    .line 463
    .end local v1    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    .restart local v3    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :goto_b
    if-eqz v3, :cond_6

    .line 464
    :try_start_a
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_c

    .line 466
    :catch_d
    move-exception v0

    move-object v5, v0

    .line 467
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getting certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CarrierKeyDownloadManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 468
    :cond_6
    :goto_c
    throw v1

    .line 419
    .end local v3    # "reader":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :cond_7
    :goto_d
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    const-string v0, "CarrierKeyDownloadManager"

    const-string v1, "jsonStr or mcc, mnc: is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method public resetRenewalAlarm()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupRenewalAlarms()V

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 250
    .local v0, "slotId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getExpirationDate()J

    move-result-wide v1

    .line 251
    .local v1, "minExpirationDate":J
    const-string v3, "CarrierKeyDownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minExpirationDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 254
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 257
    .local v5, "carrierKeyDownloadIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 259
    const-string v6, "CarrierKeyDownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRenewelAlarm: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public savePublicKey(Ljava/security/PublicKey;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "type"    # I
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "expirationDate"    # J
    .param p6, "mcc"    # Ljava/lang/String;
    .param p7, "mnc"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 569
    new-instance v7, Landroid/telephony/ImsiEncryptionInfo;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p4, p5}, Ljava/util/Date;-><init>(J)V

    move-object v0, v7

    move-object v1, p6

    move-object v2, p7

    move v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;)V

    .line 571
    .local v0, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    .line 572
    return-void
.end method
