.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme;
    }
.end annotation


# static fields
.field public static final APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field public static final FLAG_REQUIRED_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "clientSideEncryption"

.field public static final FLAG_REQUIRED_DEVICE_TO_DEVICE_TRANSFER:Ljava/lang/String; = "deviceToDeviceTransfer"

.field public static final FLAG_REQUIRED_FAKE_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "fakeClientSideEncryption"

.field public static final FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field public static final KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final TAG:Ljava/lang/String; = "FullBackup"

.field static final TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/app/backup/FullBackup;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme;

    .line 102
    .local v1, "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    if-nez v1, :cond_0

    .line 103
    new-instance v2, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v2, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 104
    sget-object v2, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v0

    return-object v1

    .line 99
    .end local v1    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "testing":Landroid/app/backup/FullBackup$BackupScheme;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 112
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 113
    return-object v0
.end method

.method public static restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .locals 17
    .param p0, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "size"    # J
    .param p3, "type"    # I
    .param p4, "mode"    # J
    .param p6, "mtime"    # J
    .param p8, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    move-object/from16 v3, p8

    const-wide/16 v4, 0x0

    const/4 v0, 0x2

    move/from16 v6, p3

    if-ne v6, v0, :cond_1

    .line 152
    if-eqz v3, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    .line 202
    :cond_0
    move-wide/from16 v11, p1

    goto/16 :goto_6

    .line 154
    :cond_1
    const/4 v0, 0x0

    move-object v7, v0

    .line 158
    .local v7, "out":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_3

    .line 159
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .end local v0    # "parent":Ljava/io/File;
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "FullBackup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create/open file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 171
    :cond_3
    :goto_0
    nop

    .line 173
    :goto_1
    const v0, 0x8000

    new-array v8, v0, [B

    .line 174
    .local v8, "buffer":[B
    move-wide/from16 v9, p1

    .line 175
    .local v9, "origSize":J
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-wide/from16 v11, p1

    .end local p1    # "size":J
    .local v0, "in":Ljava/io/FileInputStream;
    .local v11, "size":J
    :goto_2
    move-object v13, v0

    .line 176
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v13, "in":Ljava/io/FileInputStream;
    cmp-long v0, v11, v4

    if-lez v0, :cond_7

    .line 177
    array-length v0, v8

    int-to-long v14, v0

    cmp-long v0, v11, v14

    if-lez v0, :cond_4

    array-length v0, v8

    goto :goto_3

    :cond_4
    long-to-int v0, v11

    :goto_3
    move v14, v0

    .line 178
    .local v14, "toRead":I
    const/4 v0, 0x0

    invoke-virtual {v13, v8, v0, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    .line 179
    .local v15, "got":I
    if-gtz v15, :cond_5

    .line 180
    const-string v0, "FullBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incomplete read: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v9, v11

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto :goto_5

    .line 184
    :cond_5
    if-eqz v7, :cond_6

    .line 186
    :try_start_1
    invoke-virtual {v7, v8, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    goto :goto_4

    .line 187
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "FullBackup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 192
    const/4 v4, 0x0

    .line 193
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    move-object v7, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_4
    int-to-long v4, v15

    sub-long/2addr v11, v4

    .line 197
    .end local v14    # "toRead":I
    .end local v15    # "got":I
    nop

    .line 175
    move-object v0, v13

    const-wide/16 v4, 0x0

    move/from16 v6, p3

    goto :goto_2

    .line 198
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 202
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "buffer":[B
    .end local v9    # "origSize":J
    .end local v13    # "in":Ljava/io/FileInputStream;
    :cond_8
    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v0, p4, v4

    if-ltz v0, :cond_9

    if-eqz v3, :cond_9

    .line 205
    const-wide/16 v4, 0x1c0

    and-long v1, p4, v4

    .line 206
    .end local p4    # "mode":J
    .local v1, "mode":J
    :try_start_2
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    long-to-int v4, v1

    invoke-static {v0, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    goto :goto_7

    .line 207
    :catch_2
    move-exception v0

    .line 208
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 210
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_7
    move-wide/from16 v4, p6

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_8

    .line 212
    .end local v1    # "mode":J
    .restart local p4    # "mode":J
    :cond_9
    move-wide/from16 v4, p6

    move-wide/from16 v1, p4

    .end local p4    # "mode":J
    .restart local v1    # "mode":J
    :goto_8
    return-void
.end method
