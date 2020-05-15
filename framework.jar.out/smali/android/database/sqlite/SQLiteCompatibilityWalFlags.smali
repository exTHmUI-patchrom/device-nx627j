.class public Landroid/database/sqlite/SQLiteCompatibilityWalFlags;
.super Ljava/lang/Object;
.source "SQLiteCompatibilityWalFlags.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompatibilityWalFlags"

.field private static volatile sCallingGlobalSettings:Z

.field private static volatile sCompatibilityWalSupported:Z

.field private static volatile sFlagsSet:Z

.field private static volatile sInitialized:Z

.field private static volatile sTruncateSize:J

.field private static volatile sWALSyncMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areFlagsSet()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 53
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 54
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sFlagsSet:Z

    return v0
.end method

.method public static getTruncateSize()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 85
    sget-wide v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    return-wide v0
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 72
    sget-object v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 6
    .param p0, "flags"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 118
    sput-boolean v1, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 119
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v0, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 123
    .local v0, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    const-string v2, "compatibility_wal_supported"

    .line 130
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->isCompatibilityWalSupported()Z

    move-result v3

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCompatibilityWalSupported:Z

    .line 131
    const-string/jumbo v2, "wal_syncmode"

    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    .line 132
    const-string/jumbo v2, "truncate_size"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    .line 133
    const-string v2, "SQLiteCompatibilityWalFlags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read compatibility WAL flags: compatibility_wal_supported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCompatibilityWalSupported:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wal_syncmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sput-boolean v1, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sFlagsSet:Z

    .line 136
    sput-boolean v1, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 137
    return-void

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SQLiteCompatibilityWalFlags"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting has invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    sput-boolean v1, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 127
    return-void
.end method

.method private static initIfNeeded()V
    .locals 6

    .line 89
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 93
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 94
    .local v1, "app":Landroid/app/Application;
    :goto_0
    const/4 v2, 0x0

    .line 95
    .local v2, "flags":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 96
    const-string v3, "SQLiteCompatibilityWalFlags"

    const-string v4, "Cannot read global setting sqlite_compatibility_wal_flags - Application state not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sput-boolean v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 102
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "sqlite_compatibility_wal_flags"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 105
    sput-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 106
    nop

    .line 109
    :goto_1
    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 110
    return-void

    .line 105
    :catchall_0
    move-exception v3

    sput-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    throw v3

    .line 90
    .end local v0    # "activityThread":Landroid/app/ActivityThread;
    .end local v1    # "app":Landroid/app/Application;
    .end local v2    # "flags":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method public static isCompatibilityWalSupported()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 63
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCompatibilityWalSupported:Z

    return v0
.end method

.method public static reset()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 145
    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sFlagsSet:Z

    .line 146
    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCompatibilityWalSupported:Z

    .line 147
    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    .line 148
    return-void
.end method
