.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SLICES_HELPER:Ljava/lang/String; = "slices"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field private mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/io/File;

    .line 67
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 72
    nop

    .line 73
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/io/File;

    .line 75
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const-string v0, "account_sync_settings"

    new-instance v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 86
    const-string v0, "preferred_activities"

    new-instance v1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 87
    const-string v0, "notifications"

    new-instance v1, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 88
    const-string v0, "permissions"

    new-instance v1, Lcom/android/server/backup/PermissionBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 89
    const-string v0, "usage_stats"

    new-instance v1, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 90
    const-string v0, "shortcut_manager"

    new-instance v1, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 91
    const-string v0, "account_manager"

    new-instance v1, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 92
    const-string v0, "slices"

    new-instance v1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    .line 108
    const-string v0, "wallpaper"

    iget-object v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 111
    const-string v0, "system_files"

    new-instance v1, Landroid/app/backup/WallpaperBackupHelper;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 114
    const-string v0, "account_sync_settings"

    new-instance v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 115
    const-string v0, "preferred_activities"

    new-instance v1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 116
    const-string v0, "notifications"

    new-instance v1, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 117
    const-string v0, "permissions"

    new-instance v1, Lcom/android/server/backup/PermissionBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 118
    const-string v0, "usage_stats"

    new-instance v1, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 119
    const-string v0, "shortcut_manager"

    new-instance v1, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 120
    const-string v0, "account_manager"

    new-instance v1, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 121
    const-string v0, "slices"

    new-instance v1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 124
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 14
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 133
    const-string v0, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring file domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "restoredWallpaper":Z
    const/4 v3, 0x0

    .line 140
    .local v3, "outFile":Ljava/io/File;
    const-string v4, "r"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    const-string v4, "wallpaper_info.xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const-string v4, "wallpaper"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 146
    const/4 v0, 0x1

    .line 151
    .end local v0    # "restoredWallpaper":Z
    .local v13, "restoredWallpaper":Z
    :cond_1
    :goto_0
    move v13, v0

    if-nez v3, :cond_2

    .line 152
    :try_start_0
    const-string v0, "SystemBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unrecognized system file: [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    goto :goto_3

    .line 154
    :cond_2
    :goto_1
    move-object v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object v12, v3

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 156
    if-eqz v13, :cond_3

    .line 157
    const-string v0, "wallpaper"

    .line 158
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 160
    .local v4, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v4, :cond_3

    .line 162
    :try_start_1
    invoke-interface {v4}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 164
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SystemBackupAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore settings\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v4    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_3
    :goto_2
    goto :goto_4

    .line 168
    :goto_3
    nop

    .line 169
    .local v0, "e":Ljava/io/IOException;
    if-eqz v13, :cond_4

    .line 171
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 172
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    return-void
.end method
