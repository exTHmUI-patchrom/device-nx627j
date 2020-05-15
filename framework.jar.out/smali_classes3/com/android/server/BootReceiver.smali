.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final FSCK_FS_MODIFIED:Ljava/lang/String; = "FILE SYSTEM WAS MODIFIED"

.field private static final FSCK_PASS_PATTERN:Ljava/lang/String; = "Pass ([1-9]E?):"

.field private static final FSCK_TREE_OPTIMIZATION_PATTERN:Ljava/lang/String; = "Inode [0-9]+ extent tree.*could be shorter"

.field private static final FS_STAT_FS_FIXED:I = 0x400

.field private static final FS_STAT_PATTERN:Ljava/lang/String; = "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

.field private static final LAST_HEADER_FILE:Ljava/lang/String; = "last-header.txt"

.field private static final LAST_KMSG_FILES:[Ljava/lang/String;

.field private static final LAST_SHUTDOWN_TIME_PATTERN:Ljava/lang/String; = "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

.field private static final LOG_FILES_FILE:Ljava/lang/String; = "log-files.xml"

.field private static final LOG_SIZE:I

.field private static final METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = "begin_shutdown"

.field private static final METRIC_SYSTEM_SERVER:Ljava/lang/String; = "shutdown_system_server"

.field private static final MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final SHUTDOWN_METRICS_FILE:Ljava/lang/String; = "/data/system/shutdown-metrics.txt"

.field private static final SHUTDOWN_TRON_METRICS_PREFIX:Ljava/lang/String; = "shutdown_"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TAG_TOMBSTONE:Ljava/lang/String; = "SYSTEM_TOMBSTONE"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static final UMOUNT_STATUS_NOT_AVAILABLE:I = 0x4

.field private static final lastHeaderFile:Ljava/io/File;

.field private static final sFile:Landroid/util/AtomicFile;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x18000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    :goto_0
    sput v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 91
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 92
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "log-files.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "log-files"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 94
    new-instance v0, Ljava/io/File;

    .line 95
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "last-header.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 105
    const-string v0, "early"

    const-string v1, "default"

    const-string v2, "late"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 108
    const-string v0, "/sys/fs/pstore/console-ramoops"

    const-string v1, "/proc/last_kmsg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->feedbackHaltAndRebootIssue(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .line 68
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/io/File;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 68
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    return v0
.end method

.method static synthetic access$600(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/DropBoxManager;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BootReceiver;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BootReceiver;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_6

    invoke-virtual {p0, p4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 329
    :cond_0
    const-string v0, "BootReceiver"

    const-string v1, "Copying audit failures to DropBox"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/last_kmsg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 333
    .local v1, "fileTime":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 334
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/fs/pstore/console-ramoops"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 336
    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 337
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/fs/pstore/console-ramoops-0"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 342
    :cond_1
    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    return-void

    .line 344
    :cond_2
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_3

    .line 345
    return-void

    .line 348
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v3, "[[TRUNCATED]]\n"

    invoke-static {v0, p3, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "log":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 353
    .local v8, "line":Ljava/lang/String;
    const-string v9, "audit"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .end local v8    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 357
    :cond_5
    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copied "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " worth of audits to DropBox"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void

    .line 328
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileTime":J
    .end local v3    # "log":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :goto_1
    return-void
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    return-void
.end method

.method private static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "footers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_4

    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 300
    .local v1, "fileTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    return-void

    .line 302
    :cond_1
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_2

    .line 303
    return-void

    .line 306
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v3, "[[TRUNCATED]]\n"

    invoke-static {v0, p5, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "fileContents":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "text":Ljava/lang/String;
    const-string v5, "SYSTEM_TOMBSTONE"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ">>> system_server <<<"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    const-string v5, "system_server_native_crash"

    invoke-static {p0, v5, v4, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    :cond_3
    invoke-static {p0, p6, v4, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    return-void

    .line 296
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileTime":J
    .end local v3    # "fileContents":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method private static addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 21
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v6, p0

    .line 364
    const/4 v0, 0x1

    .line 365
    .local v0, "uploadEnabled":Z
    if-eqz v6, :cond_1

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 368
    .end local v0    # "uploadEnabled":Z
    .local v8, "uploadEnabled":Z
    :cond_0
    :goto_0
    move v8, v0

    goto :goto_2

    .line 366
    .end local v8    # "uploadEnabled":Z
    .restart local v0    # "uploadEnabled":Z
    :cond_1
    move-object/from16 v7, p4

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    .end local v0    # "uploadEnabled":Z
    .restart local v8    # "uploadEnabled":Z
    :goto_2
    const/4 v0, 0x0

    .line 369
    .local v0, "uploadNeeded":Z
    const-string v1, "BootReceiver"

    const-string v2, "Checking for fsck errors"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/fscklogs/log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 372
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 373
    .local v10, "fileTime":J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-gtz v1, :cond_2

    return-void

    .line 375
    :cond_2
    const-string v1, "[[TRUNCATED]]\n"

    move/from16 v12, p3

    invoke-static {v9, v12, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, "log":Ljava/lang/String;
    const-string v1, "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 377
    .local v14, "pattern":Ljava/util/regex/Pattern;
    const-string v1, "\n"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 378
    .local v15, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 379
    .local v1, "lineNumber":I
    const/4 v2, 0x0

    .line 380
    .local v2, "lastFsStatLineNumber":I
    array-length v3, v15

    const/4 v4, 0x0

    move/from16 v16, v0

    move v5, v1

    .end local v0    # "uploadNeeded":Z
    .end local v1    # "lineNumber":I
    .local v5, "lineNumber":I
    .local v16, "uploadNeeded":Z
    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v0, v15, v4

    .line 381
    .local v0, "line":Ljava/lang/String;
    const-string v1, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    const/4 v1, 0x1

    .line 392
    .end local v16    # "uploadNeeded":Z
    .local v1, "uploadNeeded":Z
    move/from16 v16, v1

    .end local v1    # "uploadNeeded":Z
    .restart local v16    # "uploadNeeded":Z
    :goto_4
    move/from16 v20, v3

    goto :goto_6

    .line 383
    :cond_3
    const-string v1, "fs_stat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 385
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 386
    invoke-static {v1, v15, v2, v5}, Lcom/android/server/BootReceiver;->handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V

    .line 387
    move v2, v5

    goto :goto_4

    .line 389
    :cond_4
    move-object/from16 v18, v1

    const-string v1, "BootReceiver"

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .local v18, "matcher":Ljava/util/regex/Matcher;
    move/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "lastFsStatLineNumber":I
    .local v19, "lastFsStatLineNumber":I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    const-string v3, "cannot parse fs_stat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_5

    .line 392
    .end local v19    # "lastFsStatLineNumber":I
    .restart local v2    # "lastFsStatLineNumber":I
    :cond_5
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "lastFsStatLineNumber":I
    .restart local v19    # "lastFsStatLineNumber":I
    :goto_5
    move/from16 v2, v19

    .end local v19    # "lastFsStatLineNumber":I
    .restart local v2    # "lastFsStatLineNumber":I
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 380
    .end local v0    # "line":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v20

    goto :goto_3

    .line 395
    :cond_6
    move/from16 v19, v2

    .end local v2    # "lastFsStatLineNumber":I
    .restart local v19    # "lastFsStatLineNumber":I
    if-eqz v8, :cond_7

    if-eqz v16, :cond_7

    .line 396
    const-string v3, "/dev/fscklogs/log"

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v17, v19

    move-object/from16 v2, p2

    .end local v19    # "lastFsStatLineNumber":I
    .local v17, "lastFsStatLineNumber":I
    move v4, v12

    move/from16 v18, v5

    move-object v5, v7

    .end local v5    # "lineNumber":I
    .local v18, "lineNumber":I
    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 400
    .end local v17    # "lastFsStatLineNumber":I
    .end local v18    # "lineNumber":I
    .restart local v5    # "lineNumber":I
    .restart local v19    # "lastFsStatLineNumber":I
    :cond_7
    move/from16 v18, v5

    move/from16 v17, v19

    .end local v5    # "lineNumber":I
    .end local v19    # "lastFsStatLineNumber":I
    .restart local v17    # "lastFsStatLineNumber":I
    .restart local v18    # "lineNumber":I
    :goto_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 401
    return-void
.end method

.method private static addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I

    .line 320
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to DropBox ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const v1, 0x13c6a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 323
    return-void
.end method

.method private feedbackHaltAndRebootIssue(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 755
    const-string v0, "ro.bootmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "bootmode":Ljava/lang/String;
    const-string v1, "sys.android.reboot"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "rebootFlag":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "panic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    const-string v3, "issue_tag"

    const-string v4, "halt"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p1, v2}, Lcom/android/server/BootReceiver;->sendFeedbackIssueBroadcast(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 762
    :cond_0
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    const-string v3, "issue_tag"

    const-string v4, "reboot"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-direct {p0, p1, v2}, Lcom/android/server/BootReceiver;->sendFeedbackIssueBroadcast(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 766
    :cond_1
    :goto_0
    return-void
.end method

.method public static fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I
    .locals 18
    .param p0, "partition"    # Ljava/lang/String;
    .param p1, "statOrg"    # I
    .param p2, "lines"    # [Ljava/lang/String;
    .param p3, "startLineNumber"    # I
    .param p4, "endLineNumber"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 568
    move/from16 v1, p1

    .line 569
    .local v1, "stat":I
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_f

    .line 572
    const-string v2, "Pass ([1-9]E?):"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 573
    .local v2, "passPattern":Ljava/util/regex/Pattern;
    const-string v3, "Inode [0-9]+ extent tree.*could be shorter"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 574
    .local v3, "treeOptPattern":Ljava/util/regex/Pattern;
    const-string v4, ""

    .line 575
    .local v4, "currentPass":Ljava/lang/String;
    const/4 v5, 0x0

    .line 576
    .local v5, "foundTreeOptimization":Z
    const/4 v6, 0x0

    .line 577
    .local v6, "foundQuotaFix":Z
    const/4 v7, 0x0

    .line 578
    .local v7, "foundTimestampAdjustment":Z
    const/4 v8, 0x0

    .line 579
    .local v8, "foundOtherFix":Z
    const/4 v9, 0x0

    .line 580
    .local v9, "otherFixLine":Ljava/lang/String;
    move v10, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    move/from16 v4, p3

    .local v4, "i":I
    .local v5, "currentPass":Ljava/lang/String;
    .local v6, "foundTreeOptimization":Z
    .local v7, "foundQuotaFix":Z
    .local v10, "foundTimestampAdjustment":Z
    :goto_0
    move/from16 v11, p4

    if-ge v4, v11, :cond_a

    .line 581
    aget-object v12, p2, v4

    .line 582
    .local v12, "line":Ljava/lang/String;
    const-string v13, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 583
    nop

    .line 630
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_2

    .line 584
    :cond_0
    const-string v13, "Pass "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    .line 585
    invoke-virtual {v2, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 586
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 587
    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 589
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    nop

    .line 580
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 589
    :cond_2
    const-string v13, "Inode "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 590
    invoke-virtual {v3, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 591
    .restart local v13    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v14, "1"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 592
    const/4 v6, 0x1

    .line 593
    const-string v14, "BootReceiver"

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "passPattern":Ljava/util/regex/Pattern;
    .local v16, "passPattern":Ljava/util/regex/Pattern;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "fs_stat, partition:"

    .end local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    .local v17, "treeOptPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found tree optimization:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    goto/16 :goto_1

    .line 596
    .end local v16    # "passPattern":Ljava/util/regex/Pattern;
    .end local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    .restart local v2    # "passPattern":Ljava/util/regex/Pattern;
    .restart local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    .restart local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "passPattern":Ljava/util/regex/Pattern;
    .end local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    .restart local v16    # "passPattern":Ljava/util/regex/Pattern;
    .restart local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    const/4 v8, 0x1

    .line 597
    move-object v9, v12

    .line 598
    goto/16 :goto_2

    .line 600
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    .end local v16    # "passPattern":Ljava/util/regex/Pattern;
    .end local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    .restart local v2    # "passPattern":Ljava/util/regex/Pattern;
    .restart local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "passPattern":Ljava/util/regex/Pattern;
    .end local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    .restart local v16    # "passPattern":Ljava/util/regex/Pattern;
    .restart local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    const-string v2, "[QUOTA WARNING]"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "5"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 601
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fs_stat, partition:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " found quota warning:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v7, 0x1

    .line 604
    if-nez v6, :cond_9

    .line 605
    move-object v9, v12

    .line 606
    goto/16 :goto_2

    .line 608
    :cond_5
    const-string v2, "Update quota info"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "5"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .end local v12    # "line":Ljava/lang/String;
    goto :goto_1

    .line 610
    .restart local v12    # "line":Ljava/lang/String;
    :cond_6
    const-string v2, "Timestamp(s) on inode"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "beyond 2310-04-04 are likely pre-1970"

    .line 611
    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "1"

    .line 612
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 613
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fs_stat, partition:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " found timestamp adjustment:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    add-int/lit8 v2, v4, 0x1

    aget-object v2, p2, v2

    const-string v3, "Fix? yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 617
    add-int/lit8 v4, v4, 0x1

    .line 619
    :cond_7
    const/4 v2, 0x1

    .line 580
    .end local v10    # "foundTimestampAdjustment":Z
    .local v2, "foundTimestampAdjustment":Z
    move v10, v2

    goto :goto_1

    .line 621
    .end local v2    # "foundTimestampAdjustment":Z
    .restart local v10    # "foundTimestampAdjustment":Z
    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 623
    .end local v12    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 624
    const/4 v8, 0x1

    .line 625
    move-object v9, v2

    .line 626
    goto :goto_2

    .line 580
    .end local v2    # "line":Ljava/lang/String;
    :cond_9
    :goto_1
    const/4 v2, 0x1

    add-int/2addr v4, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 630
    .end local v4    # "i":I
    .end local v16    # "passPattern":Ljava/util/regex/Pattern;
    .end local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    .local v2, "passPattern":Ljava/util/regex/Pattern;
    .restart local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "passPattern":Ljava/util/regex/Pattern;
    .end local v3    # "treeOptPattern":Ljava/util/regex/Pattern;
    .restart local v16    # "passPattern":Ljava/util/regex/Pattern;
    .restart local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    :goto_2
    if-eqz v8, :cond_b

    .line 631
    if-eqz v9, :cond_10

    .line 632
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fs_stat, partition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fix:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 634
    :cond_b
    if-eqz v7, :cond_c

    if-nez v6, :cond_c

    .line 635
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fs_stat, got quota fix without tree optimization, partition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 637
    :cond_c
    if-eqz v6, :cond_d

    if-nez v7, :cond_e

    :cond_d
    if-eqz v10, :cond_10

    .line 639
    :cond_e
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fs_stat, partition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fix ignored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    and-int/lit16 v1, v1, -0x401

    .end local v5    # "currentPass":Ljava/lang/String;
    .end local v6    # "foundTreeOptimization":Z
    .end local v7    # "foundQuotaFix":Z
    .end local v8    # "foundOtherFix":Z
    .end local v9    # "otherFixLine":Ljava/lang/String;
    .end local v10    # "foundTimestampAdjustment":Z
    .end local v16    # "passPattern":Ljava/util/regex/Pattern;
    .end local v17    # "treeOptPattern":Ljava/util/regex/Pattern;
    goto :goto_3

    .line 643
    :cond_f
    move/from16 v11, p4

    :cond_10
    :goto_3
    return v1
.end method

.method private getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->getPreviousBootHeaders()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "oldHeaders":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->getCurrentBootHeaders()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "newHeaders":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v0, :cond_0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrevious: false\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrevious: true\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCurrentBootHeaders()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Build: "

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Hardware: "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Revision: "

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.revision"

    const-string v2, ""

    .line 171
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Bootloader: "

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Radio: "

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Kernel: "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "...\n"

    .line 175
    const/16 v3, 0x400

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method private getPreviousBootHeaders()Ljava/lang/String;
    .locals 3

    .line 160
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private static handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V
    .locals 6
    .param p0, "match"    # Ljava/util/regex/Matcher;
    .param p1, "lines"    # [Ljava/lang/String;
    .param p2, "startLineNumber"    # I
    .param p3, "endLineNumber"    # I

    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "partition":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 655
    .local v1, "stat":I
    nop

    .line 654
    nop

    .line 656
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/BootReceiver;->fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I

    move-result v1

    .line 657
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boot_fs_stat_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 658
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fs_stat, partition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stat:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 652
    .end local v1    # "stat":I
    :catch_0
    move-exception v2

    .line 653
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot parse fs_stat: partition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " stat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const-string v0, "dropbox"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 201
    .local v0, "db":Landroid/os/DropBoxManager;
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "headers":Ljava/lang/String;
    const-string v1, "ro.boot.bootreason"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "bootReason":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "recovery":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    .line 206
    const-string v1, "SYSTEM_RECOVERY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    const-string v1, ""

    .line 210
    .local v1, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\n"

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Boot info:\n"

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Last boot reason: "

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .end local v1    # "lastKmsgFooter":Ljava/lang/String;
    .local v11, "lastKmsgFooter":Ljava/lang/String;
    :cond_1
    move-object v11, v1

    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v12

    .line 220
    .local v12, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "ro.runtime.firstboot"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    .line 221
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "now":Ljava/lang/String;
    const-string v2, "ro.runtime.firstboot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v1    # "now":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "SYSTEM_BOOT"

    invoke-virtual {v0, v1, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_3
    const-string v5, "/proc/last_kmsg"

    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v6, v1

    const-string v7, "SYSTEM_LAST_KMSG"

    move-object v1, v0

    move-object v2, v12

    move-object v3, v8

    move-object v4, v11

    invoke-static/range {v1 .. v7}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string v5, "/sys/fs/pstore/console-ramoops"

    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v6, v1

    const-string v7, "SYSTEM_LAST_KMSG"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    const-string v5, "/sys/fs/pstore/console-ramoops-0"

    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v6, v1

    const-string v7, "SYSTEM_LAST_KMSG"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string v4, "/cache/recovery/log"

    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v5, v1

    const-string v6, "SYSTEM_RECOVERY_LOG"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const-string v4, "/cache/recovery/last_kmsg"

    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v5, v1

    const-string v6, "SYSTEM_RECOVERY_KMSG"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v1, v1

    const-string v2, "SYSTEM_AUDIT"

    invoke-static {v0, v12, v8, v1, v2}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "SYSTEM_RESTART"

    invoke-virtual {v0, v1, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsShutdownTime()V

    .line 249
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsMountTime()V

    .line 250
    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v1, v1

    const-string v2, "SYSTEM_FSCK"

    invoke-static {v0, v12, v8, v1, v2}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/android/server/BootReceiver;->logSystemServerShutdownTimeMetrics()V

    .line 254
    sget-object v1, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 255
    .local v7, "tombstoneFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    move v13, v1

    .end local v1    # "i":I
    .local v13, "i":I
    if-eqz v7, :cond_7

    array-length v1, v7

    if-ge v13, v1, :cond_7

    .line 256
    aget-object v1, v7, v13

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 257
    aget-object v1, v7, v13

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v6, "SYSTEM_TOMBSTONE"

    move-object v1, v0

    move-object v2, v12

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    :cond_6
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 262
    .end local v1    # "i":I
    :cond_7
    invoke-direct {p0, v12}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    .line 266
    new-instance v13, Lcom/android/server/BootReceiver$2;

    sget-object v1, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    move-object v1, v13

    move-object v2, p0

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Ljava/lang/String;)V

    sput-object v13, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    .line 283
    sget-object v1, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 284
    return-void
.end method

.method private static logFsMountTime()V
    .locals 9

    .line 404
    sget-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 405
    .local v4, "propPostfix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.boottime.init.mount_all."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 406
    .local v5, "duration":I
    if-eqz v5, :cond_0

    .line 407
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "boot_mount_all_duration_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 404
    .end local v4    # "propPostfix":Ljava/lang/String;
    .end local v5    # "duration":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_1
    return-void
.end method

.method private static logFsShutdownTime()V
    .locals 10

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "f":Ljava/io/File;
    sget-object v1, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 517
    .local v4, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 516
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    :cond_0
    move-object v0, v5

    .line 520
    nop

    .line 522
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    if-nez v0, :cond_2

    .line 523
    return-void

    .line 526
    :cond_2
    const/16 v1, 0x4000

    .line 530
    .local v1, "maxReadSize":I
    const/16 v2, -0x4000

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .local v2, "lines":Ljava/lang/String;
    nop

    .line 533
    nop

    .line 535
    const-string v4, "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 536
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 537
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 538
    const-string v6, "boot_fs_shutdown_duration"

    .line 539
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 538
    invoke-static {v3, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 540
    const-string v6, "boot_fs_shutdown_umount_stat"

    .line 541
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 540
    invoke-static {v3, v6, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 542
    const-string v3, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boot_fs_shutdown,"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 547
    :cond_3
    const-string v6, "boot_fs_shutdown_umount_stat"

    const/4 v7, 0x4

    invoke-static {v3, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 549
    const-string v3, "BootReceiver"

    const-string v6, "boot_fs_shutdown, string not found"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_1
    return-void

    .line 531
    .end local v2    # "lines":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BootReceiver"

    const-string v4, "cannot read last msg"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    return-void
.end method

.method private static logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "rebootStr"    # Ljava/lang/String;
    .param p1, "reasonStr"    # Ljava/lang/String;
    .param p2, "startStr"    # Ljava/lang/String;
    .param p3, "durationStr"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "reboot":Z
    const-string v3, "<EMPTY>"

    .line 472
    .local v3, "reason":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 473
    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 475
    .local v6, "duration":J
    if-eqz v1, :cond_1

    .line 476
    const-string v8, "y"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 477
    const/4 v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    const-string v8, "n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 479
    const-string v8, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected value for reboot : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_1
    const-string v8, "BootReceiver"

    const-string v9, "No value received for reboot"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "reboot":Z
    .local v8, "reboot":Z
    :cond_2
    :goto_0
    move v8, v0

    if-eqz p1, :cond_3

    .line 486
    move-object/from16 v3, p1

    goto :goto_1

    .line 488
    :cond_3
    const-string v0, "BootReceiver"

    const-string v10, "No value received for shutdown reason"

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_1
    if-eqz v2, :cond_4

    .line 493
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v10

    .line 496
    :goto_2
    goto :goto_3

    .line 494
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 495
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse shutdown start time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 498
    :cond_4
    const-string v0, "BootReceiver"

    const-string v10, "No value received for shutdown start time"

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_3
    if-eqz p3, :cond_5

    .line 503
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v6, v10

    .line 506
    :goto_4
    goto :goto_5

    .line 504
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 505
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse shutdown duration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 508
    :cond_5
    const-string v0, "BootReceiver"

    const-string v10, "No value received for shutdown duration"

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_5
    const/16 v10, 0x38

    move v11, v8

    move-object v12, v3

    move-wide v13, v4

    move-wide v15, v6

    invoke-static/range {v10 .. v16}, Landroid/util/StatsLog;->write(IZLjava/lang/String;JJ)I

    .line 512
    return-void
.end method

.method private static logSystemServerShutdownTimeMetrics()V
    .locals 15

    .line 414
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown-metrics.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "metricsFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 416
    .local v1, "metricsStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 418
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, "reboot":Ljava/lang/String;
    const/4 v4, 0x0

    .line 426
    .local v4, "reason":Ljava/lang/String;
    const/4 v5, 0x0

    .line 427
    .local v5, "start_time":Ljava/lang/String;
    const/4 v6, 0x0

    .line 428
    .local v6, "duration":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "array":[Ljava/lang/String;
    array-length v8, v7

    move-object v9, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move v2, v3

    .end local v2    # "reboot":Ljava/lang/String;
    .local v4, "reboot":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    .local v6, "start_time":Ljava/lang/String;
    .local v9, "duration":Ljava/lang/String;
    :goto_1
    if-ge v2, v8, :cond_6

    aget-object v10, v7, v2

    .line 430
    .local v10, "keyValueStr":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, "keyValue":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 432
    const-string v12, "BootReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wrong format of shutdown metrics - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    goto :goto_2

    .line 436
    :cond_1
    aget-object v12, v11, v3

    const-string v13, "shutdown_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    .line 437
    aget-object v12, v11, v3

    aget-object v14, v11, v13

    invoke-static {v12, v14}, Lcom/android/server/BootReceiver;->logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    aget-object v12, v11, v3

    const-string v14, "shutdown_system_server"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 439
    aget-object v9, v11, v13

    .line 442
    :cond_2
    aget-object v12, v11, v3

    const-string v14, "reboot"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 443
    aget-object v4, v11, v13

    goto :goto_2

    .line 444
    :cond_3
    aget-object v12, v11, v3

    const-string v14, "reason"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 445
    aget-object v5, v11, v13

    goto :goto_2

    .line 446
    :cond_4
    aget-object v12, v11, v3

    const-string v14, "begin_shutdown"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 447
    aget-object v6, v11, v13

    .line 429
    .end local v10    # "keyValueStr":Ljava/lang/String;
    .end local v11    # "keyValue":[Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 450
    :cond_6
    invoke-static {v4, v5, v6, v9}, Lcom/android/server/BootReceiver;->logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v4    # "reboot":Ljava/lang/String;
    .end local v5    # "reason":Ljava/lang/String;
    .end local v6    # "start_time":Ljava/lang/String;
    .end local v7    # "array":[Ljava/lang/String;
    .end local v9    # "duration":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 453
    return-void
.end method

.method private static logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "metricName"    # Ljava/lang/String;
    .param p1, "valueStr"    # Ljava/lang/String;

    .line 458
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v0, "value":I
    nop

    .line 461
    nop

    .line 463
    if-ltz v0, :cond_0

    .line 464
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 466
    :cond_0
    return-void

    .line 459
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "BootReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse metric "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " int value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private static readTimestamps()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 662
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 663
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 664
    .local v1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 665
    .local v2, "success":Z
    :try_start_1
    sget-object v3, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 666
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 667
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 670
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v6, v9, :cond_0

    if-eq v7, v8, :cond_0

    .end local v7    # "type":I
    goto :goto_0

    .line 675
    .restart local v7    # "type":I
    :cond_0
    if-ne v7, v9, :cond_7

    .line 679
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 680
    .local v6, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v7, v9

    if-eq v9, v8, :cond_5

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    .line 681
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_5

    .line 682
    :cond_2
    if-eq v7, v9, :cond_1

    const/4 v9, 0x4

    if-ne v7, v9, :cond_3

    .line 683
    goto :goto_1

    .line 686
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 687
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "log"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 688
    const-string v10, "filename"

    invoke-interface {v5, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 689
    .local v10, "filename":Ljava/lang/String;
    const-string v11, "timestamp"

    invoke-interface {v5, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 691
    .local v11, "timestamp":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .end local v10    # "filename":Ljava/lang/String;
    .end local v11    # "timestamp":J
    goto :goto_2

    .line 693
    :cond_4
    const-string v10, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 697
    :cond_5
    const/4 v2, 0x1

    .line 698
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "outerDepth":I
    .end local v7    # "type":I
    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 710
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_6
    if-nez v2, :cond_a

    .line 711
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_6

    .line 676
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_7
    :try_start_5
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "no start tag found"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 698
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 665
    :catch_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 698
    :goto_4
    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v6

    :try_start_8
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_9
    :goto_5
    throw v5
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 710
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    goto/16 :goto_7

    .line 707
    :catch_2
    move-exception v3

    .line 708
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_9
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v2, :cond_a

    goto :goto_3

    .line 705
    :catch_3
    move-exception v3

    .line 706
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v3    # "e":Ljava/lang/NullPointerException;
    if-nez v2, :cond_a

    goto :goto_3

    .line 703
    :catch_4
    move-exception v3

    .line 704
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    if-nez v2, :cond_a

    goto :goto_3

    .line 701
    :catch_5
    move-exception v3

    .line 702
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v3    # "e":Ljava/io/IOException;
    if-nez v2, :cond_a

    goto/16 :goto_3

    .line 698
    :catch_6
    move-exception v3

    .line 699
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "BootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing last log timestamp file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; starting empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 710
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-nez v2, :cond_a

    goto/16 :goto_3

    .line 714
    :cond_a
    :goto_6
    :try_start_a
    monitor-exit v0

    return-object v1

    .line 710
    :goto_7
    if-nez v2, :cond_b

    .line 711
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_b
    throw v3

    .line 715
    .end local v1    # "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "success":Z
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private sendFeedbackIssueBroadcast(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.woodpecker.intent.ACTION_FEEDBACK_ISSUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.woodpecker"

    const-string v3, "cn.nubia.woodpecker.GlobalBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v1, "newComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 773
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method private writeTimestamps(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 719
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 722
    :try_start_0
    sget-object v1, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 725
    nop

    .line 729
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 730
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 731
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 732
    const-string v3, "log-files"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 735
    .local v3, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 737
    .local v5, "filename":Ljava/lang/String;
    const-string v6, "log"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    const-string v6, "filename"

    invoke-interface {v2, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 739
    const-string v6, "timestamp"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    const-string v6, "log"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 741
    .end local v5    # "filename":Ljava/lang/String;
    goto :goto_0

    .line 743
    :cond_0
    const-string v5, "log-files"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 744
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 746
    sget-object v4, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_1

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "BootReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write timestamp file, using the backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    sget-object v3, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 751
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 723
    :catch_1
    move-exception v1

    .line 724
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write timestamp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    monitor-exit v0

    return-void

    .line 751
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 125
    new-instance v0, Lcom/android/server/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    .line 152
    return-void
.end method
