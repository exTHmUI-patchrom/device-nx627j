.class Landroid/telephony/MbmsDownloadSession$3;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/MbmsDownloadSession;

    .line 322
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 325
    nop

    .line 326
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    move-result-object v0

    .line 329
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v2}, Landroid/telephony/MbmsDownloadSession;->access$100(Landroid/telephony/MbmsDownloadSession;)I

    move-result v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v3}, Landroid/telephony/MbmsDownloadSession;->access$200(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    .local v2, "result":I
    nop

    .line 340
    nop

    .line 342
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 348
    if-eqz v2, :cond_0

    .line 349
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string v4, "Error returned during initialization"

    invoke-static {v3, v2, v4}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 350
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 351
    return-void

    .line 354
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->access$500(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    nop

    .line 361
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v1}, Landroid/telephony/MbmsDownloadSession;->access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 362
    return-void

    .line 355
    :catch_0
    move-exception v3

    .line 356
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v5, 0x3

    const-string v6, "Middleware lost during initialization"

    invoke-static {v4, v5, v6}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 358
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 359
    return-void

    .line 344
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v1}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 345
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Middleware must not return an unknown error code"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    .end local v2    # "result":I
    :catch_1
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime exception during initialization"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/16 v4, 0x67

    .line 338
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v3, v4, v5}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 339
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 340
    return-void

    .line 330
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 331
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Service died before initialization"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 366
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindAndInitialize: Remote service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 369
    return-void
.end method
