.class public Lcom/android/server/backup/utils/AppBackupUtils;
.super Ljava/lang/Object;
.source "AppBackupUtils.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 149
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 155
    :cond_1
    return v1
.end method

.method public static appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 124
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 128
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 59
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return v1

    .line 64
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 65
    return v1

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    return v1

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    return v1

    .line 80
    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 163
    invoke-static {p0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 7
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 96
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 98
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v2, p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-static {v2, p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    if-eqz p0, :cond_1

    .line 106
    :try_start_1
    const-string v3, "AppBackupUtils.appIsEligibleForBackupAtRuntime"

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 109
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    nop

    .line 110
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 109
    invoke-interface {v3, v0, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    .line 111
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 102
    :cond_2
    :goto_0
    return v1

    .line 117
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 141
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 11
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .param p2, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 186
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_3

    .line 195
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 199
    return v2

    .line 203
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    return v0

    .line 207
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 208
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_3

    .line 209
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v0

    .line 219
    :cond_3
    array-length v3, p0

    .line 220
    .local v3, "nStored":I
    if-ne v3, v2, :cond_4

    .line 226
    aget-object v0, p0, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 231
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 232
    .local v4, "deviceSigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    .line 235
    .local v5, "nDevice":I
    move v6, v0

    .line 235
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_8

    .line 236
    const/4 v7, 0x0

    .line 237
    .local v7, "match":Z
    move v8, v0

    .line 237
    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_6

    .line 238
    aget-object v9, p0, v6

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 239
    const/4 v7, 0x1

    .line 240
    goto :goto_2

    .line 237
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 243
    .end local v8    # "j":I
    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 244
    return v0

    .line 235
    .end local v7    # "match":Z
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    .end local v6    # "i":I
    :cond_8
    return v2

    .line 187
    .end local v1    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v3    # "nStored":I
    .end local v4    # "deviceSigs":[Landroid/content/pm/Signature;
    .end local v5    # "nDevice":I
    :cond_9
    :goto_3
    return v0
.end method
