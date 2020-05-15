.class public Lcom/android/server/wifi/CarrierNetworkConfig;
.super Ljava/lang/Object;
.source "CarrierNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    }
.end annotation


# static fields
.field private static final CONFIG_ELEMENT_SIZE:I = 0x2

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final EAP_TYPE_INDEX:I = 0x1

.field private static final ENCODED_SSID_INDEX:I = 0x0

.field private static final NETWORK_CONFIG_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "CarrierNetworkConfig"


# instance fields
.field private final mCarrierNetworkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDbg:Z

.field private mIsCarrierImsiEncryptionInfoAvailable:Z

.field private mLastImsiEncryptionInfo:Landroid/telephony/ImsiEncryptionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "content://carrier_information/carrier"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/CarrierNetworkConfig;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "framework"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mDbg:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mLastImsiEncryptionInfo:Landroid/telephony/ImsiEncryptionInfo;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->updateNetworkConfig(Landroid/content/Context;)V

    .line 77
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    new-instance v2, Lcom/android/server/wifi/CarrierNetworkConfig$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/CarrierNetworkConfig$1;-><init>(Lcom/android/server/wifi/CarrierNetworkConfig;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    sget-object v2, Lcom/android/server/wifi/CarrierNetworkConfig;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/wifi/CarrierNetworkConfig$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/wifi/CarrierNetworkConfig$2;-><init>(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {p3, p1, v2, v0, v3}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .param p1, "x1"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->updateNetworkConfig(Landroid/content/Context;)V

    return-void
.end method

.method private static parseEapType(I)I
    .locals 1
    .param p0, "eapType"    # I

    .line 273
    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    .line 274
    const/4 v0, 0x4

    return v0

    .line 275
    :cond_0
    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    .line 276
    const/4 v0, 0x5

    return v0

    .line 277
    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 278
    const/4 v0, 0x6

    return v0

    .line 280
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private processNetworkConfig(Landroid/os/PersistableBundle;Ljava/lang/String;)V
    .locals 12
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;
    .param p2, "carrierName"    # Ljava/lang/String;

    .line 225
    if-nez p1, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    const-string v0, "carrier_wifi_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "networkConfigs":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mDbg:Z

    if-eqz v1, :cond_1

    .line 231
    const-string v1, "CarrierNetworkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNetworkConfig: networkConfigs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    if-nez v0, :cond_2

    .line 235
    return-void

    .line 238
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 239
    .local v4, "networkConfig":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "configArr":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 241
    const-string v6, "CarrierNetworkConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore invalid config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    goto/16 :goto_2

    .line 245
    :cond_3
    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Ljava/lang/String;

    aget-object v8, v5, v2

    invoke-static {v8, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 247
    .local v7, "ssid":Ljava/lang/String;
    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/wifi/CarrierNetworkConfig;->parseEapType(I)I

    move-result v8

    .line 249
    .local v8, "eapType":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 250
    const-string v9, "CarrierNetworkConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid EAP type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v5, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto :goto_2

    .line 253
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    new-instance v10, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;

    invoke-direct {v10, v8, p2}, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "ssid":Ljava/lang/String;
    .end local v8    # "eapType":I
    goto :goto_1

    .line 257
    :catch_0
    move-exception v6

    .line 258
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "CarrierNetworkConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode SSID: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 258
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "networkConfig":Ljava/lang/String;
    .end local v5    # "configArr":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 254
    .restart local v4    # "networkConfig":Ljava/lang/String;
    .restart local v5    # "configArr":[Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 255
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v8, "CarrierNetworkConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse EAP type: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v4    # "networkConfig":Ljava/lang/String;
    .end local v5    # "configArr":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    nop

    .line 238
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 262
    :cond_5
    return-void
.end method

.method private updateNetworkConfig(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->verifyCarrierImsiEncryptionInfoIsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    .line 183
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    const-string v0, "carrier_config"

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 187
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    const-string v1, "telephony_subscription_service"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 193
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_1

    .line 194
    return-void

    .line 196
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_2

    .line 198
    return-void

    .line 202
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 203
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    nop

    .line 204
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 206
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/CarrierNetworkConfig;->processNetworkConfig(Landroid/os/PersistableBundle;Ljava/lang/String;)V

    .line 211
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 212
    :cond_4
    return-void
.end method

.method private verifyCarrierImsiEncryptionInfoIsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    const-string v0, "phone"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    const/4 v2, 0x2

    .line 142
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mLastImsiEncryptionInfo:Landroid/telephony/ImsiEncryptionInfo;

    .line 143
    iget-object v2, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mLastImsiEncryptionInfo:Landroid/telephony/ImsiEncryptionInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 144
    return v1

    .line 149
    :cond_1
    nop

    .line 151
    const/4 v1, 0x1

    return v1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "CarrierNetworkConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get imsi encryption info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 285
    const-string v0, "CarrierNetworkConfig: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierNetworkMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCarrierImsiEncryptionInfoAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastImsiEncryptionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mLastImsiEncryptionInfo:Landroid/telephony/ImsiEncryptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 68
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mDbg:Z

    .line 69
    return-void
.end method

.method public getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;

    .line 117
    .local v0, "info":Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getNetworkEapType(Ljava/lang/String;)I
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;

    .line 108
    .local v0, "info":Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mEapType:I

    :goto_0
    return v1
.end method

.method public isCarrierEncryptionInfoAvailable()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    return v0
.end method

.method public isCarrierNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
