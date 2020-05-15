.class public Lcom/android/server/wifi/SupplicantStaNetworkHal;
.super Ljava/lang/Object;
.source "SupplicantStaNetworkHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field public static final ID_STRING_KEY_CONFIG_KEY:Ljava/lang/String; = "configKey"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ID_STRING_KEY_CREATOR_UID:Ljava/lang/String; = "creatorUid"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ID_STRING_KEY_FQDN:Ljava/lang/String; = "fqdn"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SupplicantStaNetworkHal"

.field private static final UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field private static final UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthAlgMask:I

.field private mBssid:[B

.field private mEapAltSubjectMatch:Ljava/lang/String;

.field private mEapAnonymousIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapCACert:Ljava/lang/String;

.field private mEapCAPath:Ljava/lang/String;

.field private mEapClientCert:Ljava/lang/String;

.field private mEapDomainSuffixMatch:Ljava/lang/String;

.field private mEapEngine:Z

.field private mEapEngineID:Ljava/lang/String;

.field private mEapIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethod:I

.field private mEapPassword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapPhase2Method:I

.field private mEapPrivateKeyId:Ljava/lang/String;

.field private mEapSubjectMatch:Ljava/lang/String;

.field private mGroupCipherMask:I

.field private mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

.field private mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

.field private mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

.field private mIdStr:Ljava/lang/String;

.field private final mIfaceName:Ljava/lang/String;

.field private mKeyMgmtMask:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkId:I

.field private mPairwiseCipherMask:I

.field private mProtoMask:I

.field private mPsk:[B

.field private mPskPassphrase:Ljava/lang/String;

.field private mRequirePmf:Z

.field private mScanSsid:Z

.field private mSsid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSupportsFastBssTransition:Z

.field private mVerboseLoggingEnabled:Z

.field private mWapiCertSel:Ljava/lang/String;

.field private mWapiCertSelMode:I

.field private mWapiPsk:Ljava/lang/String;

.field private mWapiPskType:I

.field private mWepKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mWepTxKeyIdx:I

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-string v0, ":([0-9a-fA-F]+):([0-9a-fA-F]+)"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "^:([0-9a-fA-F]+):([0-9a-fA-F]+):([0-9a-fA-F]+)$"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "^:([0-9a-fA-F]+)$"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 2
    .param p1, "iSupplicantStaNetwork"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "monitor"    # Lcom/android/server/wifi/WifiMonitor;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    .line 141
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 142
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 144
    nop

    .line 145
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method private addFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 3
    .param p1, "keyManagementFlags"    # Ljava/util/BitSet;

    .line 3232
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3233
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    if-nez v1, :cond_0

    .line 3234
    monitor-exit v0

    return-object p1

    .line 3236
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 3237
    .local v1, "modifiedFlags":Ljava/util/BitSet;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3238
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 3240
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3241
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 3243
    :cond_2
    monitor-exit v0

    return-object v1

    .line 3244
    .end local v1    # "modifiedFlags":Ljava/util/BitSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 3199
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    if-nez v1, :cond_0

    .line 3201
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantStaNetwork is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3204
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 3212
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    if-nez v1, :cond_0

    .line 3214
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantVendorStaNetwork is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3217
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3153
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3154
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 3155
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3158
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 3159
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3171
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3172
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 3173
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3176
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 3177
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createNetworkExtra(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3265
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3272
    .local v0, "encoded":Ljava/lang/String;
    nop

    .line 3271
    nop

    .line 3273
    return-object v0

    .line 3269
    .end local v0    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3270
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize networkExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    return-object v0

    .line 3266
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 3267
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize networkExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    return-object v0
.end method

.method private disable()Z
    .locals 5

    .line 2824
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2825
    :try_start_0
    const-string v1, "disable"

    .line 2826
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "disable"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2828
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2829
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "disable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2830
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2831
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "disable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2832
    monitor-exit v0

    return v3

    .line 2834
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private enable(Z)Z
    .locals 5
    .param p1, "noConnect"    # Z

    .line 2810
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2811
    :try_start_0
    const-string v1, "enable"

    .line 2812
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "enable"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2814
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2815
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "enable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2816
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2817
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "enable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2818
    monitor-exit v0

    return v3

    .line 2820
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getAuthAlg()Z
    .locals 6

    .line 2270
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2271
    :try_start_0
    const-string v1, "getAuthAlg"

    .line 2272
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getAuthAlg"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2274
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2275
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$JmBxY3USQmDLXDNAXhy8yopIWEQ;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$JmBxY3USQmDLXDNAXhy8yopIWEQ;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    .line 2284
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2285
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2286
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getAuthAlg"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2287
    monitor-exit v0

    return v3

    .line 2289
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getBssid()Z
    .locals 6

    .line 2179
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2180
    :try_start_0
    const-string v1, "getBssid"

    .line 2181
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getBssid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2183
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2184
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$Q5uBy3Bbd1sBV5L5-ze6NWb0nfU;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$Q5uBy3Bbd1sBV5L5-ze6NWb0nfU;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    .line 2193
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2194
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2195
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getBssid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2196
    monitor-exit v0

    return v3

    .line 2198
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapAltSubjectMatch()Z
    .locals 6

    .line 2697
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2698
    :try_start_0
    const-string v1, "getEapAltSubjectMatch"

    .line 2699
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapAltSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2701
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2702
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$zlvtJtPmiMSfQ7Kuna35ExQr_dw;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$zlvtJtPmiMSfQ7Kuna35ExQr_dw;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    .line 2711
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2712
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2713
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapAltSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2714
    monitor-exit v0

    return v3

    .line 2716
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapAnonymousIdentity()Z
    .locals 6

    .line 2522
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2523
    :try_start_0
    const-string v1, "getEapAnonymousIdentity"

    .line 2524
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapAnonymousIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2526
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2527
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$_KXFFUYMj7QUby8qNBCLqXMm1-g;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$_KXFFUYMj7QUby8qNBCLqXMm1-g;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    .line 2536
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2537
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2538
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapAnonymousIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2539
    monitor-exit v0

    return v3

    .line 2541
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapCACert()Z
    .locals 6

    .line 2584
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2585
    :try_start_0
    const-string v1, "getEapCACert"

    .line 2586
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapCACert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2588
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2589
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$6qvGsijjG6AMrj2uZOQ3n_CoDoc;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$6qvGsijjG6AMrj2uZOQ3n_CoDoc;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    .line 2597
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2598
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2599
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapCACert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2600
    monitor-exit v0

    return v3

    .line 2602
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapCAPath()Z
    .locals 6

    .line 2606
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2607
    :try_start_0
    const-string v1, "getEapCAPath"

    .line 2608
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapCAPath"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2610
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2611
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eu9lzidYZV_ibJGepjPu3LFfBs0;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eu9lzidYZV_ibJGepjPu3LFfBs0;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    .line 2619
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2620
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2621
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapCAPath"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2622
    monitor-exit v0

    return v3

    .line 2624
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapClientCert()Z
    .locals 6

    .line 2628
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2629
    :try_start_0
    const-string v1, "getEapClientCert"

    .line 2630
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapClientCert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2632
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2633
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWz9a9gFh42T-YtCNc0n7THxMqs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWz9a9gFh42T-YtCNc0n7THxMqs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    .line 2642
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2643
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2644
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapClientCert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2645
    monitor-exit v0

    return v3

    .line 2647
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapDomainSuffixMatch()Z
    .locals 6

    .line 2765
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2766
    :try_start_0
    const-string v1, "getEapDomainSuffixMatch"

    .line 2767
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapDomainSuffixMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2769
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2770
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$ciy-HJqKjGUfeTc-fGQEtnmWmkE;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$ciy-HJqKjGUfeTc-fGQEtnmWmkE;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    .line 2779
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2780
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2781
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapDomainSuffixMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2782
    monitor-exit v0

    return v3

    .line 2784
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapEngine()Z
    .locals 6

    .line 2720
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2721
    :try_start_0
    const-string v1, "getEapEngine"

    .line 2722
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapEngine"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2724
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2725
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$KquC9lH5VhOY90dQtE1r9rOy5pM;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$KquC9lH5VhOY90dQtE1r9rOy5pM;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    .line 2734
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2735
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2736
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapEngine"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2737
    monitor-exit v0

    return v3

    .line 2739
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapEngineID()Z
    .locals 6

    .line 2743
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2744
    :try_start_0
    const-string v1, "getEapEngineID"

    .line 2745
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapEngineID"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2747
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2748
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pRxa9P8P5j5gvbU8p3VlbdbxfgA;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pRxa9P8P5j5gvbU8p3VlbdbxfgA;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    .line 2756
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2757
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2758
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapEngineID"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2759
    monitor-exit v0

    return v3

    .line 2761
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapIdentity()Z
    .locals 6

    .line 2499
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2500
    :try_start_0
    const-string v1, "getEapIdentity"

    .line 2501
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2503
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2504
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vAcw2W8PnMsu8oK6dTPfH--8JtQ;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vAcw2W8PnMsu8oK6dTPfH--8JtQ;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    .line 2513
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2514
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2515
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2516
    monitor-exit v0

    return v3

    .line 2518
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapMethod()Z
    .locals 6

    .line 2453
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2454
    :try_start_0
    const-string v1, "getEapMethod"

    .line 2455
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapMethod"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2457
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2458
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$iC0TTHJMbUz_dnzTqWqnpXOKbEs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$iC0TTHJMbUz_dnzTqWqnpXOKbEs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    .line 2467
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2468
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2469
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapMethod"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2470
    monitor-exit v0

    return v3

    .line 2472
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapPassword()Z
    .locals 6

    .line 2561
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2562
    :try_start_0
    const-string v1, "getEapPassword"

    .line 2563
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapPassword"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2565
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2566
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWXNtgjw13tGOnW75TJZ9I4eBZM;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWXNtgjw13tGOnW75TJZ9I4eBZM;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    .line 2575
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2576
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2577
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapPassword"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2578
    monitor-exit v0

    return v3

    .line 2580
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapPhase2Method()Z
    .locals 6

    .line 2476
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2477
    :try_start_0
    const-string v1, "getEapPhase2Method"

    .line 2478
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapPhase2Method"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2480
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2481
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$1hQI2wPSiyHk9VMa1GvpSxqIYCU;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$1hQI2wPSiyHk9VMa1GvpSxqIYCU;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    .line 2490
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2491
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2492
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapPhase2Method"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2493
    monitor-exit v0

    return v3

    .line 2495
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapPrivateKeyId()Z
    .locals 6

    .line 2651
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2652
    :try_start_0
    const-string v1, "getEapPrivateKeyId"

    .line 2653
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapPrivateKeyId"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2655
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2656
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$tXpXVuXfvc8q3aGK-EGhOwB2lqI;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$tXpXVuXfvc8q3aGK-EGhOwB2lqI;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    .line 2665
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2666
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2667
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapPrivateKeyId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2668
    monitor-exit v0

    return v3

    .line 2670
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapSubjectMatch()Z
    .locals 6

    .line 2674
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2675
    :try_start_0
    const-string v1, "getEapSubjectMatch"

    .line 2676
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2678
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2679
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eIuT1Hp77nJuThTf5m3OWbAtG9A;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eIuT1Hp77nJuThTf5m3OWbAtG9A;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    .line 2688
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2689
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2690
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2691
    monitor-exit v0

    return v3

    .line 2693
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getGroupCipher()Z
    .locals 6

    .line 2293
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2294
    :try_start_0
    const-string v1, "getGroupCipher"

    .line 2295
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getGroupCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2297
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2298
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$OMBcqiu2U5V6QIe5V_QNnsJM3eI;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$OMBcqiu2U5V6QIe5V_QNnsJM3eI;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    .line 2307
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2308
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2309
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2310
    monitor-exit v0

    return v3

    .line 2312
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getIdStr()Z
    .locals 6

    .line 2788
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2789
    :try_start_0
    const-string v1, "getIdStr"

    .line 2790
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getIdStr"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2792
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2793
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$2FQJsVKh4TNG6OBcopTjoZaR1vs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$2FQJsVKh4TNG6OBcopTjoZaR1vs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    .line 2801
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2802
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2803
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getIdStr"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2804
    monitor-exit v0

    return v3

    .line 2806
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getKeyMgmt()Z
    .locals 6

    .line 2225
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2226
    :try_start_0
    const-string v1, "getKeyMgmt"

    .line 2227
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getKeyMgmt"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2229
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2230
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$o4-bq-MCZb9vsWcgSd4F6GH8fJo;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$o4-bq-MCZb9vsWcgSd4F6GH8fJo;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    .line 2239
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2240
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2241
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2242
    monitor-exit v0

    return v3

    .line 2244
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPairwiseCipher()Z
    .locals 6

    .line 2316
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2317
    :try_start_0
    const-string v1, "getPairwiseCipher"

    .line 2318
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getPairwiseCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2320
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2321
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$EQ5cOIkAPEH9ppa5XEfiVWDPWGs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$EQ5cOIkAPEH9ppa5XEfiVWDPWGs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    .line 2330
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2331
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2332
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2333
    monitor-exit v0

    return v3

    .line 2335
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getProto()Z
    .locals 6

    .line 2248
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2249
    :try_start_0
    const-string v1, "getProto"

    .line 2250
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getProto"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2252
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2253
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$GHC5kDo5jt_phutQiXqimQNAbh8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$GHC5kDo5jt_phutQiXqimQNAbh8;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    .line 2261
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2262
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2263
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2264
    monitor-exit v0

    return v3

    .line 2266
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPsk()Z
    .locals 6

    .line 2362
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2363
    :try_start_0
    const-string v1, "getPsk"

    .line 2364
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2366
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2367
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    .line 2375
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2376
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2377
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2378
    monitor-exit v0

    return v3

    .line 2380
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPskPassphrase()Z
    .locals 6

    .line 2339
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2340
    :try_start_0
    const-string v1, "getPskPassphrase"

    .line 2341
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getPskPassphrase"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2343
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2344
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$VGtlb40XfNM6ONPPJVjP5wNDoZI;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$VGtlb40XfNM6ONPPJVjP5wNDoZI;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    .line 2353
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2354
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2355
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getPskPassphrase"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2356
    monitor-exit v0

    return v3

    .line 2358
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getRequirePmf()Z
    .locals 6

    .line 2430
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2431
    :try_start_0
    const-string v1, "getRequirePmf"

    .line 2432
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getRequirePmf"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2434
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2435
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vjiiQgcantRh3jpBzrpYGP0pWPo;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vjiiQgcantRh3jpBzrpYGP0pWPo;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    .line 2444
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2445
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2446
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getRequirePmf"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2447
    monitor-exit v0

    return v3

    .line 2449
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getScanSsid()Z
    .locals 6

    .line 2202
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2203
    :try_start_0
    const-string v1, "getScanSsid"

    .line 2204
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getScanSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2206
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2207
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$fht0U9JpzJ2H4kTxMlc2L0jqjf4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$fht0U9JpzJ2H4kTxMlc2L0jqjf4;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    .line 2216
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2217
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2218
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getScanSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2219
    monitor-exit v0

    return v3

    .line 2221
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getSsid()Z
    .locals 6

    .line 2156
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_0
    const-string v1, "getSsid"

    .line 2158
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2160
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2161
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$V46mYiXoVbLDyWUyszREM5DgY6U;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$V46mYiXoVbLDyWUyszREM5DgY6U;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    .line 2170
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2171
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2172
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2173
    monitor-exit v0

    return v3

    .line 2175
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiCertSel()Z
    .locals 6

    .line 2118
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2119
    :try_start_0
    const-string v1, "getWapiCertSel"

    .line 2120
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiCertSel"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2122
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2123
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$X2c2FhV_1WB_wWaiwG3_Q42Y32k;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$X2c2FhV_1WB_wWaiwG3_Q42Y32k;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiCertSel(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiCertSelCallback;)V

    .line 2132
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2133
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2134
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiCertSel"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2135
    monitor-exit v0

    return v3

    .line 2137
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiCertSelMode()Z
    .locals 6

    .line 2096
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2097
    :try_start_0
    const-string v1, "getWapiCertSelMode"

    .line 2098
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiCertSelMode"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2100
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2101
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$35tkcTr5egAFgtSmzWUvTeeY--g;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$35tkcTr5egAFgtSmzWUvTeeY--g;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiCertSelMode(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiCertSelModeCallback;)V

    .line 2110
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2111
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2112
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiCertSelMode"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2113
    monitor-exit v0

    return v3

    .line 2115
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiPsk()Z
    .locals 6

    .line 2073
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2074
    :try_start_0
    const-string v1, "getWapiPsk"

    .line 2075
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2077
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2078
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRym_3VIIbE9SA4E4xuefL09gOY;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRym_3VIIbE9SA4E4xuefL09gOY;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiPsk(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskCallback;)V

    .line 2087
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2088
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2089
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2090
    monitor-exit v0

    return v3

    .line 2092
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiPskType()Z
    .locals 6

    .line 2050
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2051
    :try_start_0
    const-string v1, "getWapiPskType"

    .line 2052
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiPskType"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2054
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2055
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$nPcnzFbO2rJtelOd_nqumWUaviw;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$nPcnzFbO2rJtelOd_nqumWUaviw;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiPskType(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskTypeCallback;)V

    .line 2064
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2065
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2066
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiPskType"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2067
    monitor-exit v0

    return v3

    .line 2069
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWepKey(I)Z
    .locals 6
    .param p1, "keyIdx"    # I

    .line 2384
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2385
    :try_start_0
    const-string v1, "keyIdx"

    .line 2386
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "keyIdx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2388
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2389
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$g8l9S6sFBYS1UbFs_xs81cGLNa8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$g8l9S6sFBYS1UbFs_xs81cGLNa8;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, p1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    .line 2398
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2399
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2400
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "keyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2401
    monitor-exit v0

    return v3

    .line 2403
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWepTxKeyIdx()Z
    .locals 6

    .line 2407
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2408
    :try_start_0
    const-string v1, "getWepTxKeyIdx"

    .line 2409
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWepTxKeyIdx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2411
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2412
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$C1UdaeAaNSFX9fMio-Rh2_cDbnk;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$C1UdaeAaNSFX9fMio-Rh2_cDbnk;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    .line 2421
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2422
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2423
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWepTxKeyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2424
    monitor-exit v0

    return v3

    .line 2426
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWpsNfcConfigurationTokenInternal()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 3130
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3131
    :try_start_0
    const-string v1, "getWpsNfcConfigurationToken"

    .line 3132
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWpsNfcConfigurationToken"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3133
    :cond_0
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3135
    .local v2, "gotToken":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3143
    goto :goto_0

    .line 3141
    :catch_0
    move-exception v3

    .line 3142
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "getWpsNfcConfigurationToken"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3144
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v3

    .line 3145
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "gotToken":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Landroid/os/RemoteException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3222
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3223
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 3224
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3225
    monitor-exit v0

    .line 3226
    return-void

    .line 3225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAuthAlgNeeded(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 510
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 511
    .local v0, "keyMgmtMask":Ljava/util/BitSet;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const-string v1, "SupplicantStaNetworkHal"

    const-string v2, "no need to set Auth Algo for SAE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, 0x0

    return v1

    .line 515
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$getAuthAlg$10(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "authAlgMaskValue"    # I

    .line 2277
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2278
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2279
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAuthAlgMask:I

    goto :goto_1

    .line 2281
    :cond_1
    const-string v0, "getAuthAlg"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2283
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getBssid$6(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "bssidValue"    # [B

    .line 2186
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2187
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2188
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    goto :goto_1

    .line 2190
    :cond_1
    const-string v0, "getBssid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2192
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapAltSubjectMatch$28(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "matchValue"    # Ljava/lang/String;

    .line 2704
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2705
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2706
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    goto :goto_1

    .line 2708
    :cond_1
    const-string v0, "getEapAltSubjectMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2710
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapAnonymousIdentity$21(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "identityValue"    # Ljava/util/ArrayList;

    .line 2529
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2530
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2531
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    goto :goto_1

    .line 2533
    :cond_1
    const-string v0, "getEapAnonymousIdentity"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2535
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapCACert$23(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pathValue"    # Ljava/lang/String;

    .line 2590
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2591
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2592
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    goto :goto_1

    .line 2594
    :cond_1
    const-string v0, "getEapCACert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2596
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapCAPath$24(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pathValue"    # Ljava/lang/String;

    .line 2612
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2613
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2614
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    goto :goto_1

    .line 2616
    :cond_1
    const-string v0, "getEapCAPath"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2618
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapClientCert$25(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pathValue"    # Ljava/lang/String;

    .line 2635
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2636
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2637
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    goto :goto_1

    .line 2639
    :cond_1
    const-string v0, "getEapClientCert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2641
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapDomainSuffixMatch$31(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "matchValue"    # Ljava/lang/String;

    .line 2772
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2773
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2774
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    goto :goto_1

    .line 2776
    :cond_1
    const-string v0, "getEapDomainSuffixMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2778
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapEngine$29(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "enabledValue"    # Z

    .line 2727
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2728
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2729
    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngine:Z

    goto :goto_1

    .line 2731
    :cond_1
    const-string v0, "getEapEngine"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2733
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapEngineID$30(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idValue"    # Ljava/lang/String;

    .line 2749
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2750
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2751
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    goto :goto_1

    .line 2753
    :cond_1
    const-string v0, "getEapEngineID"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2755
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapIdentity$20(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "identityValue"    # Ljava/util/ArrayList;

    .line 2506
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2507
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2508
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    goto :goto_1

    .line 2510
    :cond_1
    const-string v0, "getEapIdentity"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2512
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapMethod$18(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "methodValue"    # I

    .line 2460
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2461
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2462
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    goto :goto_1

    .line 2464
    :cond_1
    const-string v0, "getEapMethod"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2466
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapPassword$22(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "passwordValue"    # Ljava/util/ArrayList;

    .line 2568
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2569
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2570
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    goto :goto_1

    .line 2572
    :cond_1
    const-string v0, "getEapPassword"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2574
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapPhase2Method$19(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "methodValue"    # I

    .line 2483
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2484
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2485
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase2Method:I

    goto :goto_1

    .line 2487
    :cond_1
    const-string v0, "getEapPhase2Method"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2489
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapPrivateKeyId$26(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idValue"    # Ljava/lang/String;

    .line 2658
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2659
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2660
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    goto :goto_1

    .line 2662
    :cond_1
    const-string v0, "getEapPrivateKeyId"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2664
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapSubjectMatch$27(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "matchValue"    # Ljava/lang/String;

    .line 2681
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2682
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2683
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    goto :goto_1

    .line 2685
    :cond_1
    const-string v0, "getEapSubjectMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2687
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getGroupCipher$11(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "groupCipherMaskValue"    # I

    .line 2300
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2301
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2302
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mGroupCipherMask:I

    goto :goto_1

    .line 2304
    :cond_1
    const-string v0, "getGroupCipher"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2306
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getId$0(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idValue"    # I

    .line 1335
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1336
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1337
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    goto :goto_1

    .line 1339
    :cond_1
    const-string v0, "getId"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 1341
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getIdStr$32(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idString"    # Ljava/lang/String;

    .line 2794
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2795
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2796
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    goto :goto_1

    .line 2798
    :cond_1
    const-string v0, "getIdStr"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2800
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getKeyMgmt$8(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "keyMgmtMaskValue"    # I

    .line 2232
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2233
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2234
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mKeyMgmtMask:I

    goto :goto_1

    .line 2236
    :cond_1
    const-string v0, "getKeyMgmt"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2238
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getPairwiseCipher$12(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pairwiseCipherMaskValue"    # I

    .line 2323
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2324
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2325
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPairwiseCipherMask:I

    goto :goto_1

    .line 2327
    :cond_1
    const-string v0, "getPairwiseCipher"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2329
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getProto$9(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "protoMaskValue"    # I

    .line 2254
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2255
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2256
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mProtoMask:I

    goto :goto_1

    .line 2258
    :cond_1
    const-string v0, "getProto"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2260
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getPsk$14(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pskValue"    # [B

    .line 2368
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2369
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2370
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    goto :goto_1

    .line 2372
    :cond_1
    const-string v0, "getPsk"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2374
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getPskPassphrase$13(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pskValue"    # Ljava/lang/String;

    .line 2346
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2347
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2348
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    goto :goto_1

    .line 2350
    :cond_1
    const-string v0, "getPskPassphrase"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2352
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getRequirePmf$17(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "enabledValue"    # Z

    .line 2437
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2438
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2439
    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mRequirePmf:Z

    goto :goto_1

    .line 2441
    :cond_1
    const-string v0, "getRequirePmf"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2443
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getScanSsid$7(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "enabledValue"    # Z

    .line 2209
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2210
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2211
    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mScanSsid:Z

    goto :goto_1

    .line 2213
    :cond_1
    const-string v0, "getScanSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2215
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getSsid$5(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "ssidValue"    # Ljava/util/ArrayList;

    .line 2163
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2164
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2165
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    goto :goto_1

    .line 2167
    :cond_1
    const-string v0, "getSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2169
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiCertSel$4(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiCertSelValue"    # Ljava/lang/String;

    .line 2125
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2126
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2127
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSel:Ljava/lang/String;

    goto :goto_1

    .line 2129
    :cond_1
    const-string v0, "getWapiCertSel"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2131
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiCertSelMode$3(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiCertSelModeValue"    # I

    .line 2103
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2104
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2105
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSelMode:I

    goto :goto_1

    .line 2107
    :cond_1
    const-string v0, "getWapiCertSelMode"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2109
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiPsk$2(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiPskValue"    # Ljava/lang/String;

    .line 2080
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2081
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2082
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPsk:Ljava/lang/String;

    goto :goto_1

    .line 2084
    :cond_1
    const-string v0, "getWapiPsk"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2086
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiPskType$1(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiPskTypeValue"    # I

    .line 2057
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2058
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2059
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPskType:I

    goto :goto_1

    .line 2061
    :cond_1
    const-string v0, "getWapiPskType"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2063
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWepKey$15(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wepKeyValue"    # Ljava/util/ArrayList;

    .line 2391
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2392
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2393
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    goto :goto_1

    .line 2395
    :cond_1
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyIdx,  failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWepTxKeyIdx$16(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "keyIdxValue"    # I

    .line 2414
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2415
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2416
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepTxKeyIdx:I

    goto :goto_1

    .line 2418
    :cond_1
    const-string v0, "getWepTxKeyIdx"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2420
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWpsNfcConfigurationTokenInternal$33(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "gotToken"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "token"    # Ljava/util/ArrayList;

    .line 3137
    const-string v0, "getWpsNfcConfigurationToken"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3138
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 3140
    :cond_0
    return-void
.end method

.method private loadWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "eapConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 526
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 606
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapMethod()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 530
    iget v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapMethod(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 537
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPhase2Method()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 538
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase2Method:I

    .line 539
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapPhase2Method(I)I

    move-result v1

    .line 538
    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 546
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    const-string v1, "identity"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    .line 549
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAnonymousIdentity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 553
    const-string v1, "anonymous_identity"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    .line 555
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 559
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    .line 561
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapClientCert()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 565
    const-string v1, "client_cert"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapCACert()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 569
    const-string v1, "ca_cert"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapSubjectMatch()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 573
    const-string v1, "subject_match"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapEngineID()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 577
    const-string v1, "engine_id"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapEngine()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 581
    const-string v1, "engine"

    .line 583
    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngine:Z

    if-eqz v2, :cond_8

    .line 584
    const-string v2, "1"

    goto :goto_0

    .line 585
    :cond_8
    const-string v2, "0"

    .line 581
    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPrivateKeyId()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 589
    const-string v1, "key_id"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_a
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAltSubjectMatch()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 593
    const-string v1, "altsubject_match"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapDomainSuffixMatch()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 598
    const-string v1, "domain_suffix_match"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapCAPath()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 603
    const-string v1, "ca_path"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_d
    monitor-exit v0

    return v3

    .line 542
    :cond_e
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "failed to get eap phase2 method"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    monitor-exit v0

    return v1

    .line 533
    :cond_f
    const-string v1, "SupplicantStaNetworkHal"

    const-string v2, "failed to get eap method. Assumimg not an enterprise network"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v0

    return v3

    .line 606
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 3188
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3189
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 3190
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetworkCallback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_0
    monitor-exit v0

    .line 3193
    return-void

    .line 3192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3280
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3281
    return-object v1

    .line 3288
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3289
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3290
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 3291
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3293
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 3294
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 3295
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3297
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 3298
    :cond_2
    return-object v2

    .line 3302
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 3306
    .local v0, "e":Lorg/json/JSONException;
    return-object v1

    .line 3299
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 3300
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to deserialize networkExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    return-object v1
.end method

.method private registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Z
    .locals 5
    .param p1, "callback"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    .line 1368
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_0
    const-string v1, "registerCallback"

    .line 1370
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "registerCallback"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1372
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1373
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "registerCallback"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1374
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1375
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "registerCallback"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1376
    monitor-exit v0

    return v3

    .line 1378
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 3
    .param p1, "keyManagementFlags"    # Ljava/util/BitSet;

    .line 3251
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3252
    :try_start_0
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 3253
    .local v1, "modifiedFlags":Ljava/util/BitSet;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 3254
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 3255
    monitor-exit v0

    return-object v1

    .line 3256
    .end local v1    # "modifiedFlags":Ljava/util/BitSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveDppConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 617
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    .line 618
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppConnector(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP connector"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v1

    .line 623
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    .line 624
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppNetAccessKey(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP Net Access key"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v1

    .line 629
    :cond_1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    .line 630
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppNetAccessKeyExpiry(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP Net Access Key Expiry time"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v1

    .line 635
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    .line 636
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppCsign(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 637
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP c-sign"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v1

    .line 641
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private saveSuiteBConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 652
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 653
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupCipher(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set Group Cipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v1

    .line 659
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 660
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPairwiseCipher(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set PairwiseCipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return v1

    .line 666
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 667
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorGroupMgmtCipherMask(Ljava/util/BitSet;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupMgmtCipher(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 669
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set GroupMgmtCipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v1

    .line 673
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    const-string v0, "tls_suiteb=1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPhase1Params(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 675
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set TLSSuiteB"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return v1

    .line 679
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 680
    const-string v0, "SUITE_B_192"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapOpensslCiphers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 681
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set OpensslCipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return v1

    .line 685
    :cond_4
    return v2
.end method

.method private saveWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "eapConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 696
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 815
    :catchall_0
    move-exception v1

    goto/16 :goto_0

    .line 699
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapMethod(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapMethod(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 700
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": failed to set eap method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    monitor-exit v0

    return v1

    .line 704
    :cond_1
    nop

    .line 705
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 704
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapPhase2Method(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPhase2Method(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 706
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": failed to set eap phase 2 method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    monitor-exit v0

    return v1

    .line 710
    :cond_2
    const/4 v2, 0x0

    .line 712
    .local v2, "eapParam":Ljava/lang/String;
    const-string v3, "identity"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 713
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 714
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapIdentity(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 715
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    monitor-exit v0

    return v1

    .line 719
    :cond_3
    const-string v3, "anonymous_identity"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 720
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 721
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 722
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap anonymous identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    monitor-exit v0

    return v1

    .line 726
    :cond_4
    const-string v3, "password"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 727
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 728
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPassword(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 729
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit v0

    return v1

    .line 733
    :cond_5
    const-string v3, "client_cert"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 734
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapClientCert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 735
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap client cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    monitor-exit v0

    return v1

    .line 739
    :cond_6
    const-string v3, "ca_cert"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 740
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapCACert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 741
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap ca cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    monitor-exit v0

    return v1

    .line 745
    :cond_7
    const-string v3, "subject_match"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 746
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapSubjectMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 747
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap subject match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    monitor-exit v0

    return v1

    .line 751
    :cond_8
    const-string v3, "engine_id"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 752
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapEngineID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 753
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap engine id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    monitor-exit v0

    return v1

    .line 757
    :cond_9
    const-string v3, "engine"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 758
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 759
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 758
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapEngine(Z)Z

    move-result v3

    if-nez v3, :cond_a

    .line 760
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap engine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    monitor-exit v0

    return v1

    .line 764
    :cond_a
    const-string v3, "key_id"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 765
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPrivateKeyId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 766
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap private key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    monitor-exit v0

    return v1

    .line 770
    :cond_b
    const-string v3, "altsubject_match"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 771
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapAltSubjectMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 772
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap alt subject match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    monitor-exit v0

    return v1

    .line 776
    :cond_c
    const-string v3, "domain_suffix_match"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 777
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapDomainSuffixMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 778
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap domain suffix match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    monitor-exit v0

    return v1

    .line 782
    :cond_d
    const-string v3, "ca_path"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 783
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapCAPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 784
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap ca path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v0

    return v1

    .line 789
    :cond_e
    const-string v3, "proactive_key_caching"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 790
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 791
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapProactiveKeyCaching(Z)Z

    move-result v3

    if-nez v3, :cond_f

    .line 792
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set proactive key caching: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    monitor-exit v0

    return v1

    .line 796
    :cond_f
    const-string v3, "eap_erp"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 797
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_11

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 798
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapErp(Z)Z

    move-result v3

    if-nez v3, :cond_10

    .line 799
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap erp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    monitor-exit v0

    return v1

    .line 801
    :cond_10
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setAuthAlg(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 803
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to reset AuthAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    monitor-exit v0

    return v1

    .line 808
    :cond_11
    const-string v1, "sim_num"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .end local v2    # "eapParam":Ljava/lang/String;
    .local v1, "eapParam":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 810
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorSimNumber(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 811
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set VendorSimNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_12
    monitor-exit v0

    return v4

    .line 815
    .end local v1    # "eapParam":Ljava/lang/String;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendNetworkEapIdentityResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 3088
    .local p1, "unencryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p2, "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3089
    :try_start_0
    const-string v1, "sendNetworkEapIdentityResponse"

    .line 3090
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3094
    :cond_0
    nop

    .line 3095
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSupplicantStaNetworkForV1_1Mockable()Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;

    move-result-object v2

    .line 3097
    .local v2, "iSupplicantStaNetworkV11":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 3098
    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse_1_1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    goto :goto_0

    .line 3101
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v4, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 3105
    .restart local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :goto_0
    const-string v5, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 3106
    .end local v2    # "iSupplicantStaNetworkV11":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3107
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3108
    monitor-exit v0

    return v3

    .line 3110
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;",
            ">;)Z"
        }
    .end annotation

    .line 2905
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2906
    :try_start_0
    const-string v1, "sendNetworkEapSimGsmAuthResponse"

    .line 2907
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2909
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 2910
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2911
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2912
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2913
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2914
    monitor-exit v0

    return v3

    .line 2916
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Z
    .locals 5
    .param p1, "params"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    .line 2979
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2980
    :try_start_0
    const-string v1, "sendNetworkEapSimUmtsAuthResponse"

    .line 2981
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2983
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 2984
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2985
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2986
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2987
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2988
    monitor-exit v0

    return v3

    .line 2990
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendNetworkEapSimUmtsAutsResponse([B)Z
    .locals 5
    .param p1, "auts"    # [B

    .line 3020
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3021
    :try_start_0
    const-string v1, "sendNetworkEapSimUmtsAutsResponse"

    .line 3022
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3024
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 3025
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3026
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 3027
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3028
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3029
    monitor-exit v0

    return v3

    .line 3031
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setAuthAlg(I)Z
    .locals 5
    .param p1, "authAlgMask"    # I

    .line 1500
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1501
    :try_start_0
    const-string v1, "setAuthAlg"

    .line 1502
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setAuthAlg"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1504
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1505
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setAuthAlg"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1506
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1507
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setAuthAlg"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1508
    monitor-exit v0

    return v3

    .line 1510
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setBssid([B)Z
    .locals 5
    .param p1, "bssid"    # [B

    .line 1415
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_0
    const-string v1, "setBssid"

    .line 1417
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setBssid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1419
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1420
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setBssid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1421
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1422
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setBssid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1423
    monitor-exit v0

    return v3

    .line 1425
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppConnector(Ljava/lang/String;)Z
    .locals 5
    .param p1, "connector"    # Ljava/lang/String;

    .line 1924
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1925
    :try_start_0
    const-string v1, "setDppConnector"

    .line 1926
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppConnector"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1928
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppConnector(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1929
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppConnector"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1930
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1931
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppConnector"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1932
    monitor-exit v0

    return v3

    .line 1934
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppCsign(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1966
    .local p1, "csign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1967
    :try_start_0
    const-string v1, "setDppCsign"

    .line 1968
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppCsign"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1970
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppCsign(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1971
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppCsign"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1972
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1973
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppCsign"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1974
    monitor-exit v0

    return v3

    .line 1976
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppNetAccessKey(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1938
    .local p1, "netAccessKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1939
    :try_start_0
    const-string v1, "setDppNetAccessKey"

    .line 1940
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppNetAccessKey"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1942
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppNetAccessKey(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1943
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppNetAccessKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1944
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1945
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppNetAccessKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1946
    monitor-exit v0

    return v3

    .line 1948
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppNetAccessKeyExpiry(I)Z
    .locals 5
    .param p1, "expiry"    # I

    .line 1952
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1953
    :try_start_0
    const-string v1, "setDppNetAccessKeyExpiry"

    .line 1954
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppNetAccessKeyExpiry"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1956
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppNetAccessKeyExpiry(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1957
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppNetAccessKeyExpiry"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1958
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1959
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppNetAccessKeyExpiry"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1960
    monitor-exit v0

    return v3

    .line 1962
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapAltSubjectMatch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "match"    # Ljava/lang/String;

    .line 1840
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1841
    :try_start_0
    const-string v1, "setEapAltSubjectMatch"

    .line 1842
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapAltSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1844
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1845
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapAltSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1846
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1847
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapAltSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1848
    monitor-exit v0

    return v3

    .line 1850
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapAnonymousIdentity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1742
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_0
    const-string v1, "setEapAnonymousIdentity"

    .line 1744
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapAnonymousIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1746
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1747
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapAnonymousIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1748
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1749
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapAnonymousIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1750
    monitor-exit v0

    return v3

    .line 1752
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapCACert(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1770
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :try_start_0
    const-string v1, "setEapCACert"

    .line 1772
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapCACert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1774
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1775
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapCACert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1776
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1777
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapCACert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1778
    monitor-exit v0

    return v3

    .line 1780
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapCAPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1784
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1785
    :try_start_0
    const-string v1, "setEapCAPath"

    .line 1786
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapCAPath"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1788
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1789
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapCAPath"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1790
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1791
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapCAPath"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1792
    monitor-exit v0

    return v3

    .line 1794
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapClientCert(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1798
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1799
    :try_start_0
    const-string v1, "setEapClientCert"

    .line 1800
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapClientCert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1802
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1803
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapClientCert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1804
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1805
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapClientCert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1806
    monitor-exit v0

    return v3

    .line 1808
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapDomainSuffixMatch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "match"    # Ljava/lang/String;

    .line 1882
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1883
    :try_start_0
    const-string v1, "setEapDomainSuffixMatch"

    .line 1884
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1886
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1887
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1888
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1889
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1890
    monitor-exit v0

    return v3

    .line 1892
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapEngine(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1854
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1855
    :try_start_0
    const-string v1, "setEapEngine"

    .line 1856
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapEngine"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1858
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1859
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapEngine"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1860
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1861
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapEngine"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1862
    monitor-exit v0

    return v3

    .line 1864
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapEngineID(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1868
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1869
    :try_start_0
    const-string v1, "setEapEngineID"

    .line 1870
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapEngineID"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1872
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1873
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapEngineID"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1874
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1875
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapEngineID"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1876
    monitor-exit v0

    return v3

    .line 1878
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapErp(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1910
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1911
    :try_start_0
    const-string v1, "setEapErp"

    .line 1912
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapErp"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1914
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setEapErp(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1915
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapErp"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1916
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1917
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapErp"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1918
    monitor-exit v0

    return v3

    .line 1920
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapIdentity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1728
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1729
    :try_start_0
    const-string v1, "setEapIdentity"

    .line 1730
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1732
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1733
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1734
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1735
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1736
    monitor-exit v0

    return v3

    .line 1738
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapMethod(I)Z
    .locals 5
    .param p1, "method"    # I

    .line 1700
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_0
    const-string v1, "setEapMethod"

    .line 1702
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapMethod"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1704
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1705
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapMethod"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1706
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1707
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapMethod"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1708
    monitor-exit v0

    return v3

    .line 1710
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapOpensslCiphers(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cipher"    # Ljava/lang/String;

    .line 1586
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_0
    const-string v1, "setEapOpensslCiphers"

    .line 1588
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapOpensslCiphers"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1590
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setEapOpensslCiphers(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1591
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapOpensslCiphers"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1592
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1593
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapOpensslCiphers"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1594
    monitor-exit v0

    return v3

    .line 1596
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPassword(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1756
    .local p1, "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1757
    :try_start_0
    const-string v1, "setEapPassword"

    .line 1758
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPassword"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1760
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1761
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPassword"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1762
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1763
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPassword"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1764
    monitor-exit v0

    return v3

    .line 1766
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPhase1Params(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phase1"    # Ljava/lang/String;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_0
    const-string v1, "setEapPhase1Params"

    .line 1574
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPhase1Params"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1576
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setEapPhase1Params(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1577
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPhase1Params"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1578
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1579
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPhase1Params"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1580
    monitor-exit v0

    return v3

    .line 1582
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPhase2Method(I)Z
    .locals 5
    .param p1, "method"    # I

    .line 1714
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1715
    :try_start_0
    const-string v1, "setEapPhase2Method"

    .line 1716
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPhase2Method"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1718
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1719
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPhase2Method"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1720
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1721
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPhase2Method"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1722
    monitor-exit v0

    return v3

    .line 1724
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPrivateKeyId(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1812
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1813
    :try_start_0
    const-string v1, "setEapPrivateKeyId"

    .line 1814
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPrivateKeyId"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1816
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1817
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPrivateKeyId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1818
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1819
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPrivateKeyId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1820
    monitor-exit v0

    return v3

    .line 1822
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapProactiveKeyCaching(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1896
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1897
    :try_start_0
    const-string v1, "setEapProactiveKeyCaching"

    .line 1898
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1900
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1901
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1902
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1903
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1904
    monitor-exit v0

    return v3

    .line 1906
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapSubjectMatch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "match"    # Ljava/lang/String;

    .line 1826
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1827
    :try_start_0
    const-string v1, "setEapSubjectMatch"

    .line 1828
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1830
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1831
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1832
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1833
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1834
    monitor-exit v0

    return v3

    .line 1836
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setGroupCipher(I)Z
    .locals 5
    .param p1, "groupCipherMask"    # I

    .line 1514
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1515
    :try_start_0
    const-string v1, "setGroupCipher"

    .line 1516
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setGroupCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1518
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1519
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1520
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1521
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1522
    monitor-exit v0

    return v3

    .line 1524
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setGroupMgmtCipher(I)Z
    .locals 5
    .param p1, "groupMgmtCipherMask"    # I

    .line 1558
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1559
    :try_start_0
    const-string v1, "setGroupMgmtCipher"

    .line 1560
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setGroupMgmtCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1562
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setGroupMgmtCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1563
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setGroupMgmtCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1564
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1565
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setGroupMgmtCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1566
    monitor-exit v0

    return v3

    .line 1568
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setIdStr(Ljava/lang/String;)Z
    .locals 5
    .param p1, "idString"    # Ljava/lang/String;

    .line 2142
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2143
    :try_start_0
    const-string v1, "setIdStr"

    .line 2144
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setIdStr"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2146
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2147
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setIdStr"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2148
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2149
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setIdStr"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2150
    monitor-exit v0

    return v3

    .line 2152
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setKeyMgmt(I)Z
    .locals 5
    .param p1, "keyMgmtMask"    # I

    .line 1443
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_0
    const-string v1, "setKeyMgmt"

    .line 1445
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setKeyMgmt"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1447
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1448
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1449
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1450
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1451
    monitor-exit v0

    return v3

    .line 1453
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPairwiseCipher(I)Z
    .locals 5
    .param p1, "pairwiseCipherMask"    # I

    .line 1601
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1602
    :try_start_0
    const-string v1, "setPairwiseCipher"

    .line 1603
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPairwiseCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1605
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 1606
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1607
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1608
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1609
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1610
    monitor-exit v0

    return v3

    .line 1612
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setProto(I)Z
    .locals 5
    .param p1, "protoMask"    # I

    .line 1472
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1473
    :try_start_0
    const-string v1, "setProto"

    .line 1474
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setProto"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1476
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1477
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1478
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1479
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1480
    monitor-exit v0

    return v3

    .line 1482
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPsk([B)Z
    .locals 5
    .param p1, "psk"    # [B

    .line 1630
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_0
    const-string v1, "setPsk"

    .line 1632
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1634
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1635
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1636
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1637
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1638
    monitor-exit v0

    return v3

    .line 1640
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPskPassphrase(Ljava/lang/String;)Z
    .locals 5
    .param p1, "psk"    # Ljava/lang/String;

    .line 1616
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1617
    :try_start_0
    const-string v1, "setPskPassphrase"

    .line 1618
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPskPassphrase"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1620
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1621
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setPskPassphrase"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1622
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1623
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setPskPassphrase"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1624
    monitor-exit v0

    return v3

    .line 1626
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setRequirePmf(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1672
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1673
    :try_start_0
    const-string v1, "setRequirePmf"

    .line 1674
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setRequirePmf"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1676
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1677
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setRequirePmf"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1678
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1679
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setRequirePmf"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1680
    monitor-exit v0

    return v3

    .line 1682
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setScanSsid(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1429
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_0
    const-string v1, "setScanSsid"

    .line 1431
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setScanSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1433
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1434
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setScanSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1435
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1436
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setScanSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1437
    monitor-exit v0

    return v3

    .line 1439
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setSsid(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1383
    .local p1, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_0
    const-string v1, "setSsid"

    .line 1385
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1387
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1388
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1389
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1390
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1391
    monitor-exit v0

    return v3

    .line 1393
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setUpdateIdentifier(I)Z
    .locals 5
    .param p1, "identifier"    # I

    .line 1686
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_0
    const-string v1, "setUpdateIdentifier"

    .line 1688
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setUpdateIdentifier"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1690
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1691
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setUpdateIdentifier"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1692
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1693
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setUpdateIdentifier"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1694
    monitor-exit v0

    return v3

    .line 1696
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorGroupCipher(I)Z
    .locals 5
    .param p1, "groupCipherMask"    # I

    .line 1528
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_0
    const-string v1, "setVendorGroupCipher"

    .line 1530
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor group cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-string v2, "setVendorGroupCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1533
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1534
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1535
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1536
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1537
    monitor-exit v0

    return v3

    .line 1539
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorKeyMgmt(I)Z
    .locals 5
    .param p1, "keyMgmtMask"    # I

    .line 1457
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1458
    :try_start_0
    const-string v1, "setVendorKeyMgmt"

    .line 1459
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor Key Management "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const-string v2, "setVendorKeyMgmt"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1462
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1463
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1464
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1465
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1466
    monitor-exit v0

    return v3

    .line 1468
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorPairwiseCipher(I)Z
    .locals 5
    .param p1, "pairwiseCipherMask"    # I

    .line 1543
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1544
    :try_start_0
    const-string v1, "setVendorPairwiseCipher"

    .line 1545
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor Pairwise cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const-string v2, "setVendorPairwiseCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1548
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1549
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1550
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1551
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1552
    monitor-exit v0

    return v3

    .line 1554
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorProto(I)Z
    .locals 5
    .param p1, "protoMask"    # I

    .line 1486
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_0
    const-string v1, "setVendorProto"

    .line 1488
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setVendorProto"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1490
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1491
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1492
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1493
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1494
    monitor-exit v0

    return v3

    .line 1496
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorSimNumber(I)Z
    .locals 5
    .param p1, "SimNum"    # I

    .line 1979
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1980
    :try_start_0
    const-string v1, "setVendorSimNumber"

    .line 1981
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setVendorSimNumber"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1983
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorSimNumber(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1984
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorSimNumber"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1985
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1986
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorSimNumber"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1987
    monitor-exit v0

    return v3

    .line 1989
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiCertSel(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2036
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2037
    :try_start_0
    const-string v1, "setWapiCertSel"

    .line 2038
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiCertSel"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2040
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiCertSel(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2041
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiCertSel"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2042
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2043
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiCertSel"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2044
    monitor-exit v0

    return v3

    .line 2046
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiCertSelMode(I)Z
    .locals 5
    .param p1, "mode"    # I

    .line 2022
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2023
    :try_start_0
    const-string v1, "setWapiCertSelMode"

    .line 2024
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiCertSelMode"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2026
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiCertSelMode(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2027
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiCertSelMode"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2028
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2029
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiCertSelMode"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2030
    monitor-exit v0

    return v3

    .line 2032
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiPsk(Ljava/lang/String;)Z
    .locals 5
    .param p1, "psk"    # Ljava/lang/String;

    .line 2008
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2009
    :try_start_0
    const-string v1, "setWapiPsk"

    .line 2010
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2012
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiPsk(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2013
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2014
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2015
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2016
    monitor-exit v0

    return v3

    .line 2018
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiPskType(I)Z
    .locals 5
    .param p1, "type"    # I

    .line 1994
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1995
    :try_start_0
    const-string v1, "setWapiPskType"

    .line 1996
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiPskType"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1998
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiPskType(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1999
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiPskType"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2000
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2001
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiPskType"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2002
    monitor-exit v0

    return v3

    .line 2004
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWepKey(ILjava/util/ArrayList;)Z
    .locals 5
    .param p1, "keyIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1644
    .local p2, "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1645
    :try_start_0
    const-string v1, "setWepKey"

    .line 1646
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWepKey"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1648
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1649
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWepKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1650
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1651
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWepKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1652
    monitor-exit v0

    return v3

    .line 1654
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWepTxKeyIdx(I)Z
    .locals 5
    .param p1, "keyIdx"    # I

    .line 1658
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1659
    :try_start_0
    const-string v1, "setWepTxKeyIdx"

    .line 1660
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWepTxKeyIdx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1662
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1663
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWepTxKeyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1664
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1665
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWepTxKeyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1666
    monitor-exit v0

    return v3

    .line 1668
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I
    .locals 1
    .param p0, "supplicantMask"    # I
    .param p1, "supplicantValue"    # I
    .param p2, "bitset"    # Ljava/util/BitSet;
    .param p3, "bitSetPosition"    # I

    .line 1130
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p3, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 1131
    not-int v0, p1

    and-int/2addr v0, p0

    .line 1132
    .local v0, "modifiedSupplicantMask":I
    return v0
.end method

.method private static supplicantToWifiConfigurationAuthAlgMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1198
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1199
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1202
    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1205
    const/4 v1, 0x4

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1208
    if-nez p0, :cond_0

    .line 1212
    return-object v0

    .line 1209
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid auth alg mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationEapMethod(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1079
    packed-switch p0, :pswitch_data_0

    .line 1098
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v0, -0x1

    return v0

    .line 1095
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1093
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1091
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1089
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1087
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1085
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1083
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1081
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static supplicantToWifiConfigurationEapPhase2Method(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1104
    packed-switch p0, :pswitch_data_0

    .line 1122
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap phase2 method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v0, -0x1

    return v0

    .line 1120
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1118
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1116
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1114
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1112
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1110
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1108
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1106
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static supplicantToWifiConfigurationGroupCipherMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1216
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1217
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1220
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1223
    const/16 v3, 0x8

    invoke-static {p0, v3, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1226
    const/16 v1, 0x10

    const/4 v3, 0x3

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1229
    const/16 v1, 0x100

    const/4 v3, 0x5

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1232
    const/16 v1, 0x4000

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1235
    if-nez p0, :cond_0

    .line 1239
    return-object v0

    .line 1236
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid group cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationGroupMgmtCipherMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1243
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1244
    .local v0, "bitset":Ljava/util/BitSet;
    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1247
    const/16 v1, 0x2000

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1250
    if-nez p0, :cond_0

    .line 1254
    return-object v0

    .line 1251
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid group mgmt cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1136
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1137
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1140
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1143
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1146
    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1149
    const v1, 0x8000

    const/4 v2, 0x5

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1152
    const/16 v1, 0x40

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1155
    const/16 v1, 0x20

    const/4 v2, 0x7

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1159
    const/16 v1, 0x1000

    const/16 v2, 0xbe

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1162
    const/16 v1, 0x2000

    const/16 v2, 0xbf

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1167
    if-nez p0, :cond_0

    .line 1171
    return-object v0

    .line 1168
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key mgmt mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationPairwiseCipherMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1258
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1259
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1262
    const/16 v2, 0x8

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1265
    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1268
    const/16 v1, 0x100

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1271
    if-nez p0, :cond_0

    .line 1275
    return-object v0

    .line 1272
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pairwise cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationProtoMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1175
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1176
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1179
    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1182
    const/16 v1, 0x8

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1186
    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1190
    if-nez p0, :cond_0

    .line 1194
    return-object v0

    .line 1191
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid proto mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static wifiConfigurationToSupplicantAuthAlgMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "authAlgMask"    # Ljava/util/BitSet;

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 957
    packed-switch v1, :pswitch_data_0

    .line 968
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid authAlgMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 965
    :pswitch_0
    or-int/lit8 v0, v0, 0x4

    .line 966
    goto :goto_1

    .line 962
    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 963
    goto :goto_1

    .line 959
    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 960
    nop

    .line 956
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 972
    .end local v1    # "bit":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantEapMethod(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1279
    packed-switch p0, :pswitch_data_0

    .line 1298
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap method value from WifiConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v0, -0x1

    return v0

    .line 1295
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1293
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1291
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1289
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1287
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1285
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1283
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1281
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static wifiConfigurationToSupplicantEapPhase2Method(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1304
    packed-switch p0, :pswitch_data_0

    .line 1322
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap phase2 method value from WifiConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v0, -0x1

    return v0

    .line 1320
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1318
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1316
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1314
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1312
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1310
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1308
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1306
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "groupCipherMask"    # Ljava/util/BitSet;

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 979
    packed-switch v1, :pswitch_data_0

    .line 998
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid GroupCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 996
    :pswitch_0
    goto :goto_1

    .line 993
    :pswitch_1
    or-int/lit16 v0, v0, 0x4000

    .line 994
    goto :goto_1

    .line 990
    :pswitch_2
    or-int/lit8 v0, v0, 0x10

    .line 991
    goto :goto_1

    .line 987
    :pswitch_3
    or-int/lit8 v0, v0, 0x8

    .line 988
    goto :goto_1

    .line 984
    :pswitch_4
    or-int/lit8 v0, v0, 0x4

    .line 985
    goto :goto_1

    .line 981
    :pswitch_5
    or-int/lit8 v0, v0, 0x2

    .line 982
    nop

    .line 977
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 978
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1002
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantKeyMgmtMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "keyMgmt"    # Ljava/util/BitSet;

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 827
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid protoMask bit in keyMgmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    :pswitch_0
    or-int/lit8 v0, v0, 0x20

    .line 848
    goto :goto_1

    .line 844
    :pswitch_1
    or-int/lit8 v0, v0, 0x40

    .line 845
    goto :goto_1

    .line 841
    :pswitch_2
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 842
    goto :goto_1

    .line 859
    :pswitch_3
    goto :goto_1

    .line 838
    :pswitch_4
    or-int/lit8 v0, v0, 0x8

    .line 839
    goto :goto_1

    .line 835
    :pswitch_5
    or-int/lit8 v0, v0, 0x1

    .line 836
    goto :goto_1

    .line 832
    :pswitch_6
    or-int/lit8 v0, v0, 0x2

    .line 833
    goto :goto_1

    .line 829
    :pswitch_7
    or-int/lit8 v0, v0, 0x4

    .line 830
    nop

    .line 826
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 865
    .end local v1    # "bit":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbe
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "pairwiseCipherMask"    # Ljava/util/BitSet;

    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1043
    packed-switch v1, :pswitch_data_0

    .line 1056
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pairwiseCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1054
    :pswitch_0
    goto :goto_1

    .line 1051
    :pswitch_1
    or-int/lit8 v0, v0, 0x10

    .line 1052
    goto :goto_1

    .line 1048
    :pswitch_2
    or-int/lit8 v0, v0, 0x8

    .line 1049
    goto :goto_1

    .line 1045
    :pswitch_3
    or-int/lit8 v0, v0, 0x1

    .line 1046
    nop

    .line 1042
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1060
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantProtoMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "protoMask"    # Ljava/util/BitSet;

    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 917
    packed-switch v1, :pswitch_data_0

    .line 930
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid protoMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 928
    :pswitch_0
    goto :goto_1

    .line 925
    :pswitch_1
    or-int/lit8 v0, v0, 0x8

    .line 926
    goto :goto_1

    .line 922
    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    .line 923
    goto :goto_1

    .line 919
    :pswitch_3
    or-int/lit8 v0, v0, 0x1

    .line 920
    nop

    .line 916
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 934
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantVendorGroupCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "groupCipherMask"    # Ljava/util/BitSet;

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1009
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1014
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid VendorGroupCipherMask bit in wificonfig:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1011
    :cond_0
    or-int/lit16 v0, v0, 0x100

    .line 1012
    nop

    .line 1007
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1008
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1017
    .end local v1    # "bit":I
    :cond_1
    return v0
.end method

.method private static wifiConfigurationToSupplicantVendorGroupMgmtCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "groupMgmtCipherMask"    # Ljava/util/BitSet;

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1024
    packed-switch v1, :pswitch_data_0

    .line 1032
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid GroupMgmtCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1029
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 1030
    goto :goto_1

    .line 1026
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 1027
    nop

    .line 1022
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1023
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1036
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantVendorKeyMgmtMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "keyMgmt"    # Ljava/util/BitSet;

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 877
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 908
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid VendorKeyMgmtMask bit in keyMgmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 904
    :pswitch_0
    or-int/lit16 v0, v0, 0x2000

    .line 905
    goto :goto_1

    .line 901
    :pswitch_1
    or-int/lit16 v0, v0, 0x1000

    .line 902
    goto :goto_1

    .line 897
    :pswitch_2
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 898
    goto :goto_1

    .line 890
    :pswitch_3
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    .line 891
    goto :goto_1

    .line 893
    :pswitch_4
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "wifiConfigurationToSupplicantVendorKeyMgmtMask: SAE: 11"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    or-int/lit16 v0, v0, 0x400

    .line 895
    goto :goto_1

    .line 887
    :pswitch_5
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 888
    goto :goto_1

    .line 883
    :pswitch_6
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "wifiConfigurationToSupplicantVendorKeyMgmtMask: 9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 885
    goto :goto_1

    .line 879
    :pswitch_7
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "wifiConfigurationToSupplicantVendorKeyMgmtMask: 8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 881
    nop

    .line 876
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 911
    .end local v1    # "bit":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantVendorPairwiseCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "pairwiseCipherMask"    # Ljava/util/BitSet;

    .line 1064
    const/4 v0, 0x0

    .line 1065
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1067
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1072
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid VendorPairwiseCipherMask bit in wificonfig:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1069
    :cond_0
    or-int/lit16 v0, v0, 0x100

    .line 1070
    nop

    .line 1065
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1066
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1075
    .end local v1    # "bit":I
    :cond_1
    return v0
.end method

.method private static wifiConfigurationToSupplicantVendorProtoMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "protoMask"    # Ljava/util/BitSet;

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 940
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 947
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid protoMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 943
    :cond_0
    or-int/lit8 v0, v0, 0x4

    .line 944
    nop

    .line 939
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 950
    .end local v1    # "bit":I
    :cond_1
    return v0
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fetchEapAnonymousIdentity()Ljava/lang/String;
    .locals 2

    .line 2551
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2552
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAnonymousIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2553
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2555
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getId()Z
    .locals 6

    .line 1329
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_0
    const-string v1, "getId"

    .line 1331
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getId"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1333
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1334
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRxqwt7Zayh6hYF7VQ3jt-Epcrc;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRxqwt7Zayh6hYF7VQ3jt-Epcrc;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    .line 1342
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1343
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 1344
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1345
    monitor-exit v0

    return v3

    .line 1347
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNetworkId()I
    .locals 1

    .line 1352
    iget v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    return v0
.end method

.method protected getSupplicantStaNetworkForV1_1Mockable()Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
    .locals 1

    .line 3056
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3057
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 3

    .line 3119
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWpsNfcConfigurationTokenInternal()Ljava/util/ArrayList;

    move-result-object v1

    .line 3121
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez v1, :cond_0

    .line 3122
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3124
    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3125
    .end local v1    # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    .local p2, "networkExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 282
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 172
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSsid()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 174
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 180
    const/4 v3, -0x1

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getId()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 182
    iget v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 188
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getBssid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    .line 191
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 194
    :cond_1
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 195
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getScanSsid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    iget-boolean v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mScanSsid:Z

    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 199
    :cond_2
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getRequirePmf()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    iget-boolean v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mRequirePmf:Z

    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 204
    :cond_3
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 205
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWepTxKeyIdx()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    iget v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepTxKeyIdx:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 208
    :cond_4
    nop

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_6

    .line 209
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v1

    .line 210
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWepKey(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 211
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 208
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_6
    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPskPassphrase()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 217
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 218
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPsk()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_8

    .line 219
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 222
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getKeyMgmt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 223
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mKeyMgmtMask:I

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;

    move-result-object v1

    .line 224
    .local v1, "keyMgmtMask":Ljava/util/BitSet;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->removeFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 228
    .end local v1    # "keyMgmtMask":Ljava/util/BitSet;
    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 229
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPskType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 230
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPskType:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 232
    :cond_a
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-nez v1, :cond_b

    .line 233
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPsk()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 234
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPsk:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_2

    .line 237
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPsk()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 238
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPsk:Ljava/lang/String;

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_2

    .line 243
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 244
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiCertSelMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 245
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSelMode:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 247
    :cond_d
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 248
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiCertSel()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 249
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSel:Ljava/lang/String;

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    .line 255
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getProto()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 256
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mProtoMask:I

    .line 257
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationProtoMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 260
    :cond_f
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getAuthAlg()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 261
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAuthAlgMask:I

    .line 262
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationAuthAlgMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 265
    :cond_10
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getGroupCipher()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 266
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mGroupCipherMask:I

    .line 267
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationGroupCipherMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 270
    :cond_11
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPairwiseCipher()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 271
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPairwiseCipherMask:I

    .line 272
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationPairwiseCipherMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 275
    :cond_12
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getIdStr()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 276
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 277
    .local v1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 278
    .end local v1    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 279
    :cond_13
    const-string v1, "SupplicantStaNetworkHal"

    const-string v2, "getIdStr failed or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->loadWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 184
    :cond_14
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "getId failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v0

    return v1

    .line 176
    :cond_15
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "failed to read ssid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v0

    return v1

    .line 282
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 293
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 501
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 296
    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 297
    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk;->getRealSsid(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "ssid":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSsid(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to set SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return v1

    .line 304
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "bssidStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 306
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 307
    .local v3, "bssid":[B
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid([B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 308
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v0

    return v1

    .line 314
    .end local v3    # "bssid":[B
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 315
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPskPassphrase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    const-string v3, "SupplicantStaNetworkHal"

    const-string v4, "failed to set psk passphrase"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v0

    return v1

    .line 321
    :cond_3
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPsk([B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 322
    const-string v3, "SupplicantStaNetworkHal"

    const-string v4, "failed to set psk"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return v1

    .line 329
    :cond_4
    const/4 v3, 0x0

    .line 330
    .local v3, "hasSetKey":Z
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 331
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "hasSetKey":Z
    :goto_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 332
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    .line 333
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 334
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 333
    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWepKey(ILjava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 335
    const-string v5, "SupplicantStaNetworkHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to set wep_key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0

    return v1

    .line 338
    :cond_5
    const/4 v4, 0x1

    .line 331
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "i":I
    :cond_7
    move v3, v4

    .end local v4    # "hasSetKey":Z
    .local v3, "hasSetKey":Z
    :cond_8
    if-eqz v3, :cond_9

    .line 344
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWepTxKeyIdx(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 345
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_tx_keyidx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v0

    return v1

    .line 350
    :cond_9
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setScanSsid(Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 351
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": failed to set hiddenSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v0

    return v1

    .line 355
    :cond_a
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setRequirePmf(Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 356
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": failed to set requirePMF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v0

    return v1

    .line 360
    :cond_b
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_11

    .line 362
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->addFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v4

    .line 363
    .local v4, "keyMgmtMask":Ljava/util/BitSet;
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantKeyMgmtMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setKeyMgmt(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 364
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "failed to set Key Management"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    monitor-exit v0

    return v1

    .line 367
    :cond_c
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorKeyMgmtMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorKeyMgmt(I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 368
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "failed to set Vendor Key Management"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    :cond_d
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_e

    const/16 v5, 0x9

    .line 371
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 372
    :cond_e
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v6, "eap_erp"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_f
    :goto_1
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveDppConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 377
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "Failed to set DPP configurations."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    monitor-exit v0

    return v1

    .line 381
    :cond_10
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveSuiteBConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 382
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "Failed to set Suite_B_192 configurations."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    monitor-exit v0

    return v1

    .line 389
    .end local v4    # "keyMgmtMask":Ljava/util/BitSet;
    :cond_11
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0xbe

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    .line 390
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPskType(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 391
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiPskType"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    monitor-exit v0

    return v1

    .line 395
    :cond_12
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 396
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 397
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPsk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 398
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiPsk with quotes"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v0

    return v1

    .line 402
    :cond_13
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPsk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 403
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiPsk"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    monitor-exit v0

    return v1

    .line 410
    :cond_14
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xbf

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 411
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiCertSelMode(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 412
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiCertSelMode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    monitor-exit v0

    return v1

    .line 415
    :cond_15
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    if-ne v4, v5, :cond_16

    .line 416
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiCertSel(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 417
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiCertSel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit v0

    return v1

    .line 424
    :cond_16
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 425
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantProtoMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setProto(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 426
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set Security Protocol"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    monitor-exit v0

    return v1

    .line 430
    :cond_17
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 431
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorProtoMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorProto(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 432
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "failed to set Vendor Security Protocol"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_18
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_19

    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->isAuthAlgNeeded(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 437
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantAuthAlgMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setAuthAlg(I)Z

    move-result v4

    if-nez v4, :cond_19

    .line 439
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set AuthAlgorithm"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-exit v0

    return v1

    .line 443
    :cond_19
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 444
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupCipher(I)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 446
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set Group Cipher"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    monitor-exit v0

    return v1

    .line 450
    :cond_1a
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 451
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorGroupCipherMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorGroupCipher(I)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 453
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "failed to set Vendor Group Cipher"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1b
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 457
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPairwiseCipher(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 459
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set PairwiseCipher"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    monitor-exit v0

    return v1

    .line 463
    :cond_1c
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 464
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorPairwiseCipher(I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 466
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "failed to set Vendor Group Cipher"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v4, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 471
    const-string v6, "fqdn"

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_1e
    const-string v6, "configKey"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v6, "creatorUid"

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->createNetworkExtra(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setIdStr(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 476
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "failed to set id string"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    monitor-exit v0

    return v1

    .line 480
    :cond_1f
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v6, :cond_20

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    .line 481
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setUpdateIdentifier(I)Z

    move-result v6

    if-nez v6, :cond_20

    .line 482
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "failed to set update identifier"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    monitor-exit v0

    return v1

    .line 486
    :cond_20
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v6, :cond_21

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 487
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_21

    .line 488
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 489
    monitor-exit v0

    return v1

    .line 494
    :cond_21
    new-instance v6, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;ILjava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    .line 496
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 497
    const-string v5, "SupplicantStaNetworkHal"

    const-string v6, "Failed to register callback"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    monitor-exit v0

    return v1

    .line 500
    :cond_22
    monitor-exit v0

    return v5

    .line 501
    .end local v2    # "bssidStr":Ljava/lang/String;
    .end local v3    # "hasSetKey":Z
    .end local v4    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public select()Z
    .locals 5

    .line 2843
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2844
    :try_start_0
    const-string v1, "select"

    .line 2845
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "select"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2847
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2848
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "select"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2849
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2850
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "select"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2851
    monitor-exit v0

    return v3

    .line 2853
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "identityStr"    # Ljava/lang/String;
    .param p2, "encryptedIdentityStr"    # Ljava/lang/String;

    .line 3070
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3072
    nop

    .line 3073
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3074
    .local v1, "unencryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 3075
    .local v2, "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3076
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    .line 3078
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v3

    .line 3083
    .end local v1    # "unencryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3079
    :catch_0
    move-exception v1

    .line 3080
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3081
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3083
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimGsmAuthFailure()Z
    .locals 5

    .line 2920
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2921
    :try_start_0
    const-string v1, "sendNetworkEapSimGsmAuthFailure"

    .line 2922
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2924
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2925
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2926
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2927
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2928
    monitor-exit v0

    return v3

    .line 2930
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z
    .locals 11
    .param p1, "paramsStr"    # Ljava/lang/String;

    .line 2863
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2865
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;->GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2866
    .local v2, "match":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2868
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    .line 2869
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 2870
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed gsm auth response params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2871
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 2873
    :cond_0
    :try_start_2
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;-><init>()V

    .line 2875
    .local v4, "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2876
    .local v7, "kc":[B
    if-eqz v7, :cond_4

    array-length v8, v7

    iget-object v9, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    array-length v9, v9

    if-eq v8, v9, :cond_1

    goto :goto_2

    .line 2880
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2881
    .local v6, "sres":[B
    if-eqz v6, :cond_3

    array-length v8, v6

    iget-object v9, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    array-length v9, v9

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 2885
    :cond_2
    iget-object v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    iget-object v8, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    array-length v8, v8

    invoke-static {v7, v1, v5, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2886
    iget-object v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    iget-object v8, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    array-length v8, v8

    invoke-static {v6, v1, v5, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2887
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    .end local v4    # "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    .end local v6    # "sres":[B
    .end local v7    # "kc":[B
    goto :goto_0

    .line 2882
    .restart local v4    # "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    .restart local v6    # "sres":[B
    .restart local v7    # "kc":[B
    :cond_3
    :goto_1
    const-string v8, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid sres value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2883
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 2877
    .end local v6    # "sres":[B
    :cond_4
    :goto_2
    :try_start_4
    const-string v5, "SupplicantStaNetworkHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid kc value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2878
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v1

    .line 2890
    .end local v4    # "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    .end local v7    # "kc":[B
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x3

    if-gt v4, v6, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_6

    goto :goto_3

    .line 2894
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v4

    .line 2891
    :cond_7
    :goto_3
    :try_start_8
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed gsm auth response params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2892
    :try_start_9
    monitor-exit v0

    return v1

    .line 2899
    .end local v2    # "match":Ljava/util/regex/Matcher;
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2895
    :catch_0
    move-exception v2

    .line 2896
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2897
    monitor-exit v0

    return v1

    .line 2899
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimUmtsAuthFailure()Z
    .locals 5

    .line 3035
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3036
    :try_start_0
    const-string v1, "sendNetworkEapSimUmtsAuthFailure"

    .line 3037
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3039
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3040
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 3041
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3042
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3043
    monitor-exit v0

    return v3

    .line 3045
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z
    .locals 12
    .param p1, "paramsStr"    # Ljava/lang/String;

    .line 2939
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2941
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2942
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_4

    .line 2946
    :cond_0
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 2948
    .local v3, "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2949
    .local v6, "ik":[B
    if-eqz v6, :cond_7

    array-length v7, v6

    iget-object v8, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    array-length v8, v8

    if-eq v7, v8, :cond_1

    goto/16 :goto_3

    .line 2953
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2954
    .local v7, "ck":[B
    if-eqz v7, :cond_6

    array-length v8, v7

    iget-object v9, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    array-length v9, v9

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 2958
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 2959
    .local v5, "res":[B
    if-eqz v5, :cond_5

    array-length v8, v5

    if-nez v8, :cond_3

    goto :goto_1

    .line 2963
    :cond_3
    iget-object v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    iget-object v8, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    array-length v8, v8

    invoke-static {v6, v1, v4, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2964
    iget-object v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    iget-object v8, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    array-length v8, v8

    invoke-static {v7, v1, v4, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2965
    array-length v4, v5

    move v8, v1

    :goto_0
    if-ge v8, v4, :cond_4

    aget-byte v9, v5, v8

    .line 2966
    .local v9, "b":B
    iget-object v10, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2965
    .end local v9    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2968
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    .line 2960
    :cond_5
    :goto_1
    :try_start_2
    const-string v8, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid res value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2961
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 2955
    .end local v5    # "res":[B
    :cond_6
    :goto_2
    :try_start_4
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid ck value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2956
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v1

    .line 2950
    .end local v7    # "ck":[B
    :cond_7
    :goto_3
    :try_start_6
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ik value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2951
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v1

    .line 2943
    .end local v3    # "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    .end local v6    # "ik":[B
    :cond_8
    :goto_4
    :try_start_8
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed umts auth response params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2944
    :try_start_9
    monitor-exit v0

    return v1

    .line 2973
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 2969
    :catch_0
    move-exception v2

    .line 2970
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2971
    monitor-exit v0

    return v1

    .line 2973
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "paramsStr"    # Ljava/lang/String;

    .line 2999
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3001
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3002
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 3006
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 3007
    .local v3, "auts":[B
    if-eqz v3, :cond_2

    array-length v5, v3

    const/16 v6, 0xe

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 3011
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAutsResponse([B)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    .line 3008
    :cond_2
    :goto_0
    :try_start_2
    const-string v5, "SupplicantStaNetworkHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid auts value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3009
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 3003
    .end local v3    # "auts":[B
    :cond_3
    :goto_1
    :try_start_4
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed umts auts response params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3004
    :try_start_5
    monitor-exit v0

    return v1

    .line 3016
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3012
    :catch_0
    move-exception v2

    .line 3013
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3014
    monitor-exit v0

    return v1

    .line 3016
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public setBssid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "bssidStr"    # Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1410
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v1

    .line 1407
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1410
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setVendorStaNetwork(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)V
    .locals 3
    .param p1, "vendor_network"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    .line 1357
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stanetwork getId >>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1358
    if-eqz p1, :cond_0

    .line 1359
    const-string v0, "SupplicantStaNetworkHal"

    const-string v1, "set ISupplicantVendorStaNetwork successfull"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    goto :goto_0

    .line 1362
    :cond_0
    const-string v0, "SupplicantStaNetworkHal"

    const-string v1, "Failed to set ISupplicantVendorStaNetwork due to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_0
    return-void
.end method
