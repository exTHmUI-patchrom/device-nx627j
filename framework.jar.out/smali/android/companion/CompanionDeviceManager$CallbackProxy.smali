.class Landroid/companion/CompanionDeviceManager$CallbackProxy;
.super Landroid/companion/IFindDeviceCallback$Stub;
.source "CompanionDeviceManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field private mRequest:Landroid/companion/AssociationRequest;

.field final synthetic this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method private constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "request"    # Landroid/companion/AssociationRequest;
    .param p3, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 277
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/IFindDeviceCallback$Stub;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    .line 278
    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 279
    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 280
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 281
    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/companion/CompanionDeviceManager;
    .param p2, "x1"    # Landroid/companion/AssociationRequest;
    .param p3, "x2"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p4, "x3"    # Landroid/os/Handler;
    .param p5, "x4"    # Landroid/companion/CompanionDeviceManager$1;

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$lockAndPost$0(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "action"    # Ljava/util/function/BiConsumer;
    .param p2, "payload"    # Ljava/lang/Object;

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "callback":Landroid/companion/CompanionDeviceManager$Callback;
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    move-object v0, v2

    .line 301
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {p1, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    :cond_0
    return-void

    .line 301
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method lockAndPost(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/companion/CompanionDeviceManager$Callback;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 295
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/companion/CompanionDeviceManager$Callback;TT;>;"
    .local p2, "payload":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;

    invoke-direct {v2, p0, p1, p2}, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;-><init>(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_0
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 326
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 312
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    if-eq p1, v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 315
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$300(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->access$200(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3}, Landroid/companion/ICompanionDeviceManager;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 319
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 320
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 321
    iput-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 322
    iput-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 329
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 328
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 331
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 327
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 330
    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/CharSequence;

    .line 291
    sget-object v0, Landroid/companion/-$$Lambda$ZUPGnRMz08ZrG1ogNO-2O5Hso3I;->INSTANCE:Landroid/companion/-$$Lambda$ZUPGnRMz08ZrG1ogNO-2O5Hso3I;

    invoke-virtual {p0, v0, p1}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lockAndPost(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "launcher"    # Landroid/app/PendingIntent;

    .line 286
    sget-object v0, Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;->INSTANCE:Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lockAndPost(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 287
    return-void
.end method
