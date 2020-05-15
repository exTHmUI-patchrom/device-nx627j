.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 636
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 637
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method private processNextItem()V
    .locals 10

    .line 677
    iget-object v0, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/am/TaskPersister;->access$502(Lcom/android/server/am/TaskPersister;J)J

    .line 685
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v1, v1, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v1, v3, v4}, Lcom/android/server/am/TaskPersister;->access$502(Lcom/android/server/am/TaskPersister;J)J

    .line 688
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 692
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 693
    :catch_0
    move-exception v1

    .line 694
    :goto_1
    goto :goto_0

    .line 698
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v1, v1, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 700
    .local v1, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 703
    .local v2, "now":J
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 707
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 709
    goto :goto_3

    .line 708
    :catch_1
    move-exception v4

    .line 710
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    goto :goto_2

    .line 714
    .end local v2    # "now":J
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    .line 716
    .end local v1    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v1, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 717
    move-object v1, v0

    check-cast v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 718
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v3, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 719
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->access$600(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 720
    const-string v2, "TaskPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while creating images directory for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 723
    :cond_4
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 725
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 727
    .local v2, "imageFile":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 728
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 732
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "imageFile":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 733
    goto :goto_5

    .line 732
    .restart local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v2    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    goto :goto_6

    .line 729
    :catch_2
    move-exception v5

    .line 730
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveImage: unable to save "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 734
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "imageFile":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    goto/16 :goto_9

    .line 732
    .restart local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v2    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 734
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "imageFile":Ljava/io/FileOutputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    instance-of v1, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v1, :cond_8

    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "stringWriter":Ljava/io/StringWriter;
    move-object v3, v0

    check-cast v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    iget-object v3, v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    .line 739
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 740
    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->inRecents:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_6

    .line 744
    :try_start_8
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5, v3}, Lcom/android/server/am/TaskPersister;->access$700(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v1, v5

    .line 747
    :goto_7
    goto :goto_8

    .line 746
    :catch_3
    move-exception v5

    goto :goto_8

    .line 745
    :catch_4
    move-exception v5

    goto :goto_7

    .line 749
    :cond_6
    :goto_8
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 750
    if-eqz v1, :cond_8

    .line 752
    const/4 v4, 0x0

    .line 753
    .local v4, "file":Ljava/io/FileOutputStream;
    nop

    .line 755
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    :try_start_a
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    iget v7, v3, Lcom/android/server/am/TaskRecord;->userId:I

    .line 756
    invoke-static {v7}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 757
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_task.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 758
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 759
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 760
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 761
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 768
    goto :goto_9

    .line 762
    :catch_5
    move-exception v5

    .line 763
    .local v5, "e":Ljava/io/IOException;
    if-eqz v4, :cond_7

    .line 764
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 766
    :cond_7
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "file":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 749
    .restart local v1    # "stringWriter":Ljava/io/StringWriter;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 771
    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    :goto_9
    return-void

    .line 714
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 642
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 643
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 649
    .local v0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v2, v2, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 651
    .local v2, "probablyDone":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    if-eqz v2, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 655
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 657
    iget-object v3, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/am/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 658
    iget-object v3, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 659
    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v4

    .line 658
    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 660
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 661
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v1, v0}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    goto :goto_1

    .line 660
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 663
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)V

    .line 665
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->processNextItem()V

    .line 666
    .end local v2    # "probablyDone":Z
    goto :goto_0

    .line 651
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
