.class final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$DreamRecord;,
        Lcom/android/server/dreams/DreamController$Listener;,
        Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;
    }
.end annotation


# static fields
.field private static final DREAM_CONNECTION_TIMEOUT:I = 0x1388

.field private static final DREAM_FINISH_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DreamController"


# instance fields
.field private final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field private mDreamStartTime:J

.field private final mDreamingStartedIntent:Landroid/content/Intent;

.field private final mDreamingStoppedIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field private volatile mMainScreenOff:Z

.field private final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

.field private volatile mSubScreenOff:Z

.field private final mWriteAodNodeHandler:Landroid/os/Handler;

.field private final mWriteSecondAodNodeHandler:Landroid/os/Handler;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 580
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/dreams/DreamController$Listener;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 99
    new-instance v0, Lcom/android/server/dreams/DreamController$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$1;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/android/server/dreams/DreamController$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$2;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 227
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 229
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 230
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 232
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    const-string v2, "dream"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "write_aod_node"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 235
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController;->mWriteAodNodeHandler:Landroid/os/Handler;

    .line 238
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "write_second_aod_node"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 239
    .local v1, "secondThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 240
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/dreams/DreamController;->mWriteSecondAodNodeHandler:Landroid/os/Handler;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 70
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/dreams/DreamController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->isScreenOff(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 70
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 70
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 70
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteAodNodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;

    .line 70
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteSecondAodNodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/dreams/DreamController;
    .param p1, "x1"    # Landroid/service/dreams/IDreamService;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    return-void
.end method

.method private attach(Landroid/service/dreams/IDreamService;)V
    .locals 4
    .param p1, "service"    # Landroid/service/dreams/IDreamService;

    .line 415
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 416
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, v1, v2, v3}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    nop

    .line 424
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 426
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    if-nez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v0, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    .line 430
    :cond_0
    return-void

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "DreamController"

    const-string v3, "The dream service died unexpectedly."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 421
    return-void
.end method

.method private isScreenOff(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 130
    const-string v0, "/sys/kernel/lcd_enhance/aod_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mMainScreenOff:Z

    return v0

    .line 132
    :cond_0
    const-string v0, "/sys/kernel/lcd_enhance/sec_aod_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mSubScreenOff:Z

    return v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private writeAodNode(ZLjava/lang/String;)V
    .locals 7
    .param p1, "isAod"    # Z
    .param p2, "filename"    # Ljava/lang/String;

    .line 573
    const/16 v0, 0x17

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 574
    const/4 v2, 0x0

    .line 575
    .local v2, "aodMode":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 577
    if-eqz v4, :cond_0

    .line 578
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v5

    .line 580
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v1, v3}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 583
    .end local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 580
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    move-object v5, v1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_0
    :try_start_4
    invoke-static {v5, v3}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 581
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DreamController"

    const-string v5, "Read aod node exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    if-ne v2, v0, :cond_1

    .line 586
    return-void

    .line 590
    .end local v2    # "aodMode":I
    :cond_1
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 591
    .local v2, "bw":Ljava/io/BufferedWriter;
    if-eqz p1, :cond_2

    const/16 v0, 0x18

    nop

    :cond_2
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 592
    :try_start_7
    invoke-static {v1, v2}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 595
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 592
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 590
    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 592
    :goto_2
    :try_start_9
    invoke-static {v1, v2}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DreamController"

    const-string v2, "Write aod node exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 596
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public advanceRemoveView()V
    .locals 1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v0}, Landroid/service/dreams/IDreamService;->advanceRemoveView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 245
    const-string v0, "Dreamland:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "  mCurrentDream:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSentStartBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWakingGently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    const-string v0, "  mCurrentDream: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void
.end method

.method public notifyScreenStateChangeForAOD(II)V
    .locals 3
    .param p1, "builtInDisplayId"    # I
    .param p2, "state"    # I

    .line 121
    const-string v0, "DreamController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "builtInDisplayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 123
    if-ne p2, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mMainScreenOff:Z

    goto :goto_0

    .line 124
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 125
    if-ne p2, v1, :cond_2

    move v0, v1

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController;->mSubScreenOff:Z

    .line 127
    :cond_3
    :goto_0
    return-void
.end method

.method public setDisplayPowerModeFor627(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "screenState"    # I

    .line 655
    invoke-static {p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 656
    return-void
.end method

.method public setDozeScreenBrightnessFor627(II)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "brightness"    # I

    .line 604
    if-nez p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteAodNodeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamController$4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/dreams/DreamController$4;-><init>(Lcom/android/server/dreams/DreamController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 610
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteSecondAodNodeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamController$5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/dreams/DreamController$5;-><init>(Lcom/android/server/dreams/DreamController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    :cond_1
    :goto_0
    return-void
.end method

.method public setDozeScreenBrightnessFor627(Ljava/lang/String;I)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "brightness"    # I

    .line 623
    sget-object v0, Lcom/android/server/dreams/DreamManagerService;->mWriteNodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->isScreenOff(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 627
    :cond_0
    const/4 v1, 0x0

    .line 628
    .local v1, "aodMode":I
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 629
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 630
    if-eqz v4, :cond_1

    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v5

    .line 633
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 636
    .end local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 633
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_0

    .line 628
    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_0
    :try_start_5
    invoke-static {v5, v3}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 634
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "DreamController"

    const-string v5, "Read aod brightness exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 638
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const/16 v3, 0x17

    if-eq v1, v3, :cond_3

    if-ne v1, p2, :cond_2

    goto :goto_4

    .line 642
    :cond_2
    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 643
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_8
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 644
    :try_start_9
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 647
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 644
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v4

    goto :goto_2

    .line 642
    :catch_2
    move-exception v2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 644
    :goto_2
    :try_start_b
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    .line 645
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v3, "DreamController"

    const-string v4, "Write aod brightness exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    .end local v1    # "aodMode":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v0

    .line 649
    return-void

    .line 639
    .restart local v1    # "aodMode":I
    :cond_3
    :goto_4
    monitor-exit v0

    return-void

    .line 648
    .end local v1    # "aodMode":I
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1
.end method

.method public setTpSleep(I)V
    .locals 3
    .param p1, "tpSleepValue"    # I

    .line 662
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/devices/platform/second_touch.0/resume"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 663
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 665
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 669
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 666
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 662
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 666
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/dreams/DreamController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DreamController"

    const-string v2, "Write tp value exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 16
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "canDoze"    # Z
    .param p5, "userId"    # I
    .param p6, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p5

    .line 264
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    .line 266
    const-string/jumbo v0, "startDream"

    const-wide/32 v13, 0x20000

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 269
    :try_start_0
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 271
    const-string v0, "DreamController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dream: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isTest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v15, p3

    :try_start_1
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canDoze="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord;

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p1

    move-object v4, v10

    move v5, v15

    move v6, v8

    move v7, v11

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    .line 278
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 279
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xdf

    goto :goto_0

    :cond_0
    const/16 v1, 0xde

    .line 278
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    :try_start_2
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x7e7

    const/4 v2, 0x0

    move-object/from16 v3, p1

    :try_start_3
    invoke-interface {v0, v3, v1, v2}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    nop

    .line 289
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.dreams.DreamService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    :try_start_5
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const v4, 0x4000001

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    const-string v0, "DreamController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind dream service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v9, v12}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 298
    return-void

    .line 304
    :cond_1
    nop

    .line 306
    :try_start_6
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v12, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 307
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 309
    .end local v1    # "intent":Landroid/content/Intent;
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 310
    nop

    .line 311
    return-void

    .line 300
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_7
    const-string v2, "DreamController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind dream service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    invoke-virtual {v9, v12}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 303
    return-void

    .line 309
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 283
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    .line 284
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_1
    :try_start_8
    const-string v1, "DreamController"

    const-string v2, "Unable to add window token for dream."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {v9, v12}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 309
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 286
    return-void

    .line 309
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v15, p3

    :goto_2
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public stopDream(Z)V
    .locals 10
    .param p1, "immediate"    # Z

    .line 326
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    const-string/jumbo v0, "stopDream"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 332
    if-nez p1, :cond_2

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 334
    return-void

    .line 337
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v0}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 342
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 343
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 350
    :cond_2
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 351
    .local v0, "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 352
    const-string v4, "DreamController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping dream: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isTest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", canDoze="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 356
    iget-boolean v5, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v5, :cond_3

    const/16 v5, 0xdf

    goto :goto_1

    :cond_3
    const/16 v5, 0xde

    .line 355
    :goto_1
    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 357
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 358
    iget-boolean v5, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v5, :cond_4

    const-string v5, "dozing_minutes"

    goto :goto_2

    :cond_4
    const-string v5, "dreaming_minutes"

    .line 359
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 357
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 361
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-boolean v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    if-eqz v4, :cond_5

    .line 365
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 368
    :cond_5
    iget-object v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 373
    :try_start_4
    iget-object v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v4}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    goto :goto_3

    .line 374
    :catch_1
    move-exception v4

    .line 379
    :goto_3
    :try_start_5
    iget-object v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {v4}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    goto :goto_4

    .line 380
    :catch_2
    move-exception v4

    .line 383
    :goto_4
    :try_start_6
    iput-object v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 386
    :cond_6
    iget-boolean v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v3, :cond_7

    .line 387
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 392
    :try_start_7
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 395
    goto :goto_5

    .line 393
    :catch_3
    move-exception v3

    .line 394
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_8
    const-string v4, "DreamController"

    const-string v6, "Error removing window token for dream."

    invoke-static {v4, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_5
    const-string v3, "NX627J"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 399
    invoke-virtual {p0, v5}, Lcom/android/server/dreams/DreamController;->writeAodNode(Z)V

    .line 402
    :cond_8
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/dreams/DreamController$3;

    invoke-direct {v4, p0, v0}, Lcom/android/server/dreams/DreamController$3;-><init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 409
    .end local v0    # "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public writeAodNode(Z)V
    .locals 4
    .param p1, "isAod"    # Z

    .line 540
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteAodNodeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    const-string v2, "/sys/kernel/lcd_enhance/aod_mode"

    if-eqz p1, :cond_0

    const-string v3, "24"

    goto :goto_0

    :cond_0
    const-string v3, "23"

    :goto_0
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method

.method public writeAodNodeFor627(ZI)V
    .locals 5
    .param p1, "isAod"    # Z
    .param p2, "screenId"    # I

    .line 548
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 549
    if-nez p2, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteAodNodeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    const-string v2, "/sys/kernel/lcd_enhance/aod_mode"

    const-string v3, "24"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 551
    :cond_0
    if-ne p2, v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteSecondAodNodeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    const-string v2, "/sys/kernel/lcd_enhance/sec_aod_mode"

    const-string v3, "24"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 555
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 556
    .local v1, "cdown":Ljava/util/concurrent/CountDownLatch;
    if-nez p2, :cond_2

    .line 557
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteAodNodeHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    const-string v3, "/sys/kernel/lcd_enhance/aod_mode"

    const-string v4, "23"

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 558
    :cond_2
    if-ne p2, v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mWriteSecondAodNodeHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;

    const-string v3, "/sys/kernel/lcd_enhance/sec_aod_mode"

    const-string v4, "23"

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/server/dreams/DreamController$RetryWriteNodeTask;-><init>(Lcom/android/server/dreams/DreamController;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 567
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "cdown":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    :goto_1
    return-void
.end method
