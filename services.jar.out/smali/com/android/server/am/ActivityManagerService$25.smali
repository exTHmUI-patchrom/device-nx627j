.class Lcom/android/server/am/ActivityManagerService$25;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 17504
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$25;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$25;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 17507
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$25;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17508
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$25;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17511
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17514
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .line 17516
    .local v2, "lines":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 17519
    goto :goto_0

    .line 17517
    :catch_0
    move-exception v3

    .line 17518
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "ActivityManager"

    const-string v5, "Error reading Settings database"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17520
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const/high16 v3, 0x30000

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x64

    sub-int/2addr v3, v4

    .line 17523
    .local v3, "maxDataFileSize":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dataFile:Ljava/io/File;

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    .line 17525
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dataFile:Ljava/io/File;

    const-string v6, "\n\n[[TRUNCATED]]"

    invoke-static {v5, v3, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17529
    goto :goto_1

    .line 17527
    :catch_1
    move-exception v4

    .line 17528
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dataFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17531
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 17532
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$25;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17535
    :cond_2
    if-lez v2, :cond_5

    .line 17536
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17539
    const/4 v4, 0x0

    .line 17541
    .local v4, "input":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/16 v6, 0x11

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/bin/timeout"

    aput-object v7, v6, v1

    const-string v7, "-k"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v9, "15s"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "10s"

    aput-object v9, v6, v7

    const/4 v7, 0x4

    const-string v9, "/system/bin/logcat"

    aput-object v9, v6, v7

    const/4 v7, 0x5

    const-string v9, "-v"

    aput-object v9, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "threadtime"

    aput-object v9, v6, v7

    const/4 v7, 0x7

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0x8

    const-string v9, "events"

    aput-object v9, v6, v7

    const/16 v7, 0x9

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v9, "system"

    aput-object v9, v6, v7

    const/16 v7, 0xb

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v9, "main"

    aput-object v9, v6, v7

    const/16 v7, 0xd

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xe

    const-string v9, "crash"

    aput-object v9, v6, v7

    const/16 v7, 0xf

    const-string v9, "-t"

    aput-object v9, v6, v7

    const/16 v7, 0x10

    .line 17544
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 17545
    invoke-virtual {v5, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17547
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v6

    .line 17548
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v6

    .line 17549
    :goto_3
    :try_start_5
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 17552
    const/16 v6, 0x2000

    new-array v6, v6, [C

    .line 17553
    .local v6, "buf":[C
    :goto_4
    invoke-virtual {v4, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    .line 17553
    .local v8, "num":I
    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6, v1, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 17557
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v6    # "buf":[C
    .end local v8    # "num":I
    :cond_3
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_8

    :catchall_0
    move-exception v1

    goto :goto_6

    .line 17554
    :catch_5
    move-exception v1

    .line 17555
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "ActivityManager"

    const-string v6, "Error running logcat"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 17557
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_5

    goto :goto_5

    :goto_6
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v5

    :cond_4
    :goto_7
    throw v1

    .line 17561
    .end local v4    # "input":Ljava/io/InputStreamReader;
    :cond_5
    :goto_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$25;->val$dropboxTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$25;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 17562
    return-void
.end method
