.class public Lcn/nubia/server/appmgmt/SysStateProducer;
.super Ljava/lang/Object;
.source "SysStateProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$Filter;,
        Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SysStateProducer"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnubia/os/ITaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;

.field private mVisibleApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    .line 38
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mVisibleApps:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysStateProducerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;

    .line 30
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mVisibleApps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;
    .param p2, "x2"    # Landroid/os/Message;

    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/SysStateProducer;->notifyTopActivity(Lnubia/os/ITaskCallback;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # J

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/SysStateProducer;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;

    .line 30
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    return v0
.end method

.method private callback(Landroid/os/Message;J)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "flag"    # J

    .line 135
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v0, "N":I
    const/4 v1, 0x0

    .line 136
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 138
    :try_start_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/SysStateProducer$Filter;

    .line 142
    .local v2, "filter":Lcn/nubia/server/appmgmt/SysStateProducer$Filter;
    iget-wide v3, v2, Lcn/nubia/server/appmgmt/SysStateProducer$Filter;->flag:J

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/SysStateProducer$Filter;->filterPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnubia/os/ITaskCallback;

    invoke-interface {v3, p1}, Lnubia/os/ITaskCallback;->actionPerformed(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .end local v2    # "filter":Lcn/nubia/server/appmgmt/SysStateProducer$Filter;
    :cond_0
    goto :goto_1

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .end local v0    # "N":I
    goto :goto_2

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysStateProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private notifyTopActivity(Lnubia/os/ITaskCallback;Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/ITaskCallback;
    .param p2, "msg"    # Landroid/os/Message;

    .line 164
    :try_start_0
    invoke-interface {p1, p2}, Lnubia/os/ITaskCallback;->actionPerformed(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 168
    :goto_0
    return-void
.end method

.method private toTempString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgFilter"    # [Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 116
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 117
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .end local v3    # "pkg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 586
    const-string v0, "==========current top apps============="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumed app count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mVisibleApps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mVisibleApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 590
    .local v2, "stackId":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mVisibleApps:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 591
    .local v3, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stackId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   packageName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  activityName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    .line 593
    .end local v2    # "stackId":I
    .end local v3    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 595
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 596
    .local v1, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered Callback\'s Count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  details:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x0

    .line 597
    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 600
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 601
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 602
    return-void
.end method

.method public noteActivityStackRemoved(I)V
    .locals 3
    .param p1, "stackId"    # I

    .line 248
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity stack removed, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return-void
.end method

.method public noteKeyguardStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 558
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Z)V

    .line 563
    .local v0, "nrar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isVisiblePackage"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    .line 198
    if-nez v10, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-boolean v0, v9, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausing activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isVisiblePackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", topActivityPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", topActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p7

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    :goto_0
    new-instance v15, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;

    move-object v0, v15

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "npar":Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;
    iget-object v1, v9, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 238
    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process removed, uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;

    invoke-direct {v0, p0, p1, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void

    .line 239
    .end local v0    # "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;
    :cond_2
    :goto_0
    return-void
.end method

.method public noteResumedActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 184
    if-nez p1, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 188
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumed activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;)V

    .line 192
    .local v0, "nrar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumedActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 254
    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumed app die, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v0, "nrar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void

    .line 255
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumeAppDiedRunnable;
    :cond_2
    :goto_0
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z
    .param p6, "pid"    # I

    .line 172
    if-nez p3, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resuming activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;I)V

    .line 180
    .local v0, "nrar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 227
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process Starting, uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hostingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;)V

    .line 234
    .local v0, "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void

    .line 228
    .end local v0    # "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;
    :cond_2
    :goto_0
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 215
    if-nez p3, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopping activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->registerCallback(Lnubia/os/ITaskCallback;J[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "filterBundle"    # Landroid/os/Bundle;

    .line 95
    const-string v0, "filter_packages"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/server/appmgmt/SysStateProducer;->registerCallback(Lnubia/os/ITaskCallback;J[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J[Ljava/lang/String;)V
    .locals 5
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "pkgFilter"    # [Ljava/lang/String;

    .line 99
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback   flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pkgFilter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->toTempString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$Filter;

    invoke-direct {v0, p0, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer$Filter;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;J[Ljava/lang/String;)V

    .line 104
    .local v0, "filter":Lcn/nubia/server/appmgmt/SysStateProducer$Filter;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 105
    const-wide/16 v1, 0x1

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;)V

    .line 107
    .local v1, "ntar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    .end local v0    # "filter":Lcn/nubia/server/appmgmt/SysStateProducer$Filter;
    .end local v1    # "ntar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;
    :cond_1
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 130
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    .line 131
    return-void
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 127
    :cond_0
    return-void
.end method
