.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final BACKUP_SERVER:Ljava/lang/String; = "persist.backup.ntpServer"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mBackupServer:Ljava/lang/String;

.field private static mNtpRetries:I

.field private static mNtpRetriesMax:I

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mBackupmode:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, ""

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 57
    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    .line 62
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 63
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 64
    return-void
.end method

.method private countInBackupmode()V
    .locals 3

    .line 234
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 236
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v2, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lt v0, v2, :cond_0

    .line 237
    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 238
    invoke-virtual {p0, v1}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    .line 242
    :cond_0
    return-void
.end method

.method private getBackupmode()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    const-class v1, Landroid/util/NtpTrustedTime;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v0, :cond_4

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    .local v2, "resolver":Landroid/content/ContentResolver;
    const v3, 0x104015c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "defaultServer":Ljava/lang/String;
    const v4, 0x10e0083

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 76
    .local v4, "defaultTimeout":J
    const-string/jumbo v6, "ntp_server"

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v2, v7, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 81
    .local v7, "timeout":J
    if-eqz v6, :cond_0

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v9, v3

    .line 82
    .local v9, "server":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v9, v7, v8}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 83
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v11, "ntp_server_2"

    invoke-static {v2, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "sserver_prop":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 89
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 90
    move-object v12, v11

    goto :goto_1

    :cond_1
    const-string/jumbo v12, "persist.backup.ntpServer"

    .line 92
    .local v12, "secondServer_prop":Ljava/lang/String;
    :goto_1
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "backupServer":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 95
    const v14, 0x10e0081

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 96
    .local v14, "retryMax":I
    if-lez v14, :cond_2

    .line 97
    sget-object v15, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sput v14, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 98
    sget-object v15, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, "\""

    .line 98
    .end local v0    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v17, v2

    const-string v2, ""

    .line 98
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .local v17, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v15, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 98
    .end local v14    # "retryMax":I
    goto :goto_2

    .line 102
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 102
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "resolver":Landroid/content/ContentResolver;
    :goto_2
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sget-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sget-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 104
    :cond_3
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string v0, "0.pool.ntp.org"

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 105
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const/4 v0, 0x3

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 110
    .end local v3    # "defaultServer":Ljava/lang/String;
    .end local v4    # "defaultTimeout":J
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "timeout":J
    .end local v9    # "server":Ljava/lang/String;
    .end local v11    # "sserver_prop":Ljava/lang/String;
    .end local v12    # "secondServer_prop":Ljava/lang/String;
    .end local v13    # "backupServer":Ljava/lang/String;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isBackupSupported()Z
    .locals 1

    .line 228
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v0, :cond_0

    sget-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .line 197
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 204
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceRefresh()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->forceSync()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forceRefresh(Landroid/net/Network;)Z
    .locals 8
    .param p1, "network"    # Landroid/net/Network;

    .line 132
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 138
    :cond_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 142
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 145
    .local v0, "ni":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 152
    :cond_3
    new-instance v2, Landroid/net/SntpClient;

    invoke-direct {v2}, Landroid/net/SntpClient;-><init>()V

    .line 154
    .local v2, "client":Landroid/net/SntpClient;
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 155
    .local v3, "targetServer":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getBackupmode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    invoke-virtual {p0, v1}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    .line 157
    sget-object v3, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 160
    :cond_4
    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 162
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 163
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 164
    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 165
    return v1

    .line 167
    :cond_5
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->countInBackupmode()V

    .line 168
    return v1

    .line 147
    .end local v2    # "client":Landroid/net/SntpClient;
    .end local v3    # "targetServer":Ljava/lang/String;
    :cond_6
    :goto_1
    return v1

    .line 142
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceSync()Z
    .locals 2

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 125
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 128
    .local v0, "network":Landroid/net/Network;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    move-result v1

    return v1

    .line 125
    .end local v0    # "network":Landroid/net/Network;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCacheAge()J
    .locals 4

    .line 179
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 182
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    .line 188
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 189
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    .line 191
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .line 209
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .line 213
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setBackupmode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 217
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    .line 221
    :cond_0
    return-void
.end method
