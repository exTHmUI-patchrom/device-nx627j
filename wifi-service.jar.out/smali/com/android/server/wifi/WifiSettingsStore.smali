.class public Lcom/android/server/wifi/WifiSettingsStore;
.super Ljava/lang/Object;
.source "WifiSettingsStore.java"


# static fields
.field static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private mAirplaneModeOn:Z

.field private mCheckSavedStateAtBoot:Z

.field private final mContext:Landroid/content/Context;

.field private mPersistWifiState:I

.field private mScanAlwaysAvailable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 54
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 55
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z

    .line 56
    return-void
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private getPersistedWifiState()I
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "wifi_on"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "wifi_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    return v3
.end method

.method private isAirplaneSensitive()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "wifi"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 147
    :goto_1
    return v1
.end method

.method private isAirplaneToggleable()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "toggleableRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1
.end method

.method private persistWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, "cr":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 140
    const-string v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    return-void
.end method

.method private testAndClearWifiSavedState()Z
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v0

    .line 169
    .local v0, "wifiSavedState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    .line 172
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistWifiState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAirplaneModeOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public getLocationModeSetting(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWifiSavedState()I
    .locals 2

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method declared-synchronized handleAirplaneModeToggled()Z
    .locals 3

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneSensitive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 111
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 112
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 114
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-ne v0, v2, :cond_3

    .line 115
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 122
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_3
    :goto_0
    monitor-exit p0

    return v2

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiSettingsStore;
    throw v0
.end method

.method declared-synchronized handleWifiScanAlwaysAvailableToggled()V
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiSettingsStore;
    throw v0
.end method

.method public declared-synchronized handleWifiToggled(Z)Z
    .locals 2
    .param p1, "wifiEnabled"    # Z

    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneToggleable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 86
    monitor-exit p0

    return v1

    .line 89
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 90
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v1, :cond_1

    .line 91
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return v0

    .line 84
    .end local p1    # "wifiEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiSettingsStore;
    throw p1
.end method

.method public declared-synchronized isAirplaneModeOn()Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiSettingsStore;
    throw v0
.end method

.method public declared-synchronized isScanAlwaysAvailable()Z
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiSettingsStore;
    throw v0
.end method

.method public declared-synchronized isWifiToggleEnabled()Z
    .locals 4

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 61
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 64
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 65
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    .line 67
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    monitor-exit p0

    return v1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiSettingsStore;
    throw v0
.end method

.method public setWifiSavedState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    return-void
.end method
