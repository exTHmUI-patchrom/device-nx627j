.class Landroid/mtp/MtpStorageManager$MtpObjectObserver;
.super Landroid/os/FileObserver;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpObjectObserver"
.end annotation


# instance fields
.field mObject:Landroid/mtp/MtpStorageManager$MtpObject;

.field final synthetic this$0:Landroid/mtp/MtpStorageManager;


# direct methods
.method constructor <init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 1
    .param p2, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 58
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    .line 59
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x10003c0

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 62
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .line 102
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    monitor-enter v0

    .line 67
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    invoke-static {}, Landroid/mtp/MtpStorageManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received Inotify overflow event!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 71
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 72
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    and-int/lit16 v2, p1, 0x80

    if-nez v2, :cond_9

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 76
    :cond_1
    and-int/lit8 v2, p1, 0x40

    if-nez v2, :cond_6

    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_5

    .line 85
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_3

    .line 86
    invoke-static {}, Landroid/mtp/MtpStorageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inotify for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_3
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$400(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$400(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 89
    :cond_4
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$402(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    goto/16 :goto_4

    .line 91
    :cond_5
    invoke-static {}, Landroid/mtp/MtpStorageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unrecognized event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    goto/16 :goto_4

    .line 77
    .restart local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 78
    invoke-static {}, Landroid/mtp/MtpStorageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object was null in event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v0

    return-void

    .line 81
    :cond_7
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_8

    .line 82
    invoke-static {}, Landroid/mtp/MtpStorageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got inotify removed event for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_8
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    invoke-static {v2, v1}, Landroid/mtp/MtpStorageManager;->access$300(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    goto :goto_4

    .line 73
    :cond_9
    :goto_2
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_a

    .line 74
    invoke-static {}, Landroid/mtp/MtpStorageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got inotify added event for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_a
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    :goto_3
    invoke-static {v2, v3, p2, v4}, Landroid/mtp/MtpStorageManager;->access$200(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 93
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_4
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
