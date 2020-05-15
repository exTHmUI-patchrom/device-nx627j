.class public Lcom/android/server/wifi/WifiCountryCode;
.super Ljava/lang/Object;
.source "WifiCountryCode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCountryCode"


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentCountryCode:Ljava/lang/String;

.field private mDefaultCountryCode:Ljava/lang/String;

.field private mReady:Z

.field private mRevertCountryCodeOnCellularLoss:Z

.field private mTelephonyCountryCode:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "oemDefaultCountryCode"    # Ljava/lang/String;
    .param p4, "revertCountryCodeOnCellularLoss"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 58
    iput-boolean p4, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "WifiCountryCode"

    const-string v2, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    .line 67
    return-void

    .line 71
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country code will be reverted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on MCC loss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "oemDefaultCountryCode"    # Ljava/lang/String;
    .param p3, "revertCountryCodeOnCellularLoss"    # Z

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/WifiCountryCode;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method private pickCountryCode()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    return-object v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendCountryCodeChangedBroadcast()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const-string v0, "WifiCountryCode"

    const-string v1, "sending WIFI_COUNTRY_CODE_CHANGED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.COUNTRY_CODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    const-string v1, "country_code"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method

.method private setCountryCodeNative(Ljava/lang/String;)Z
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Succeeded to set country code to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_0
    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set country code to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method private updateCountryCode()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    const-string v1, "Update country code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 211
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeNative(Ljava/lang/String;)Z

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized airplaneModeEnabled()V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    const-string v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->sendCountryCodeChangedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryCode sent to driver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not sent to driver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "CountryCode was not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 88
    if-lez p1, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    goto :goto_0

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    .line 93
    :goto_0
    return-void
.end method

.method public declared-synchronized getCountryCode()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method public declared-synchronized getCountryCodeSentToDriver()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive set country code request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_3

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiCountryCode"

    const-string v1, "Received empty country code, reset to default country code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 156
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V

    .line 159
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->sendCountryCodeChangedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 143
    .end local p1    # "countryCode":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method

.method public declared-synchronized setReadyForChange(Z)V
    .locals 3
    .param p1, "ready"    # Z

    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    monitor-exit p0

    return-void

    .line 126
    .end local p1    # "ready":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method
