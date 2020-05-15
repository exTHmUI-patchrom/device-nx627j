.class Lcom/android/server/wm/NubiaAdvertiseManager$2;
.super Ljava/lang/Object;
.source "NubiaAdvertiseManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NubiaAdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NubiaAdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 383
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "classname"    # Landroid/content/ComponentName;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {p2}, Lnubia/os/advt/IAdControlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$302(Lcom/android/server/wm/NubiaAdvertiseManager;Lnubia/os/advt/IAdControlInterface;)Lnubia/os/advt/IAdControlInterface;

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$400(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/advt/IAdControlInterface;->registerCallback(Lnubia/os/advt/IAdCallback;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v1

    invoke-interface {v1}, Lnubia/os/advt/IAdControlInterface;->getConfig()Lnubia/os/advt/AdConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$502(Lcom/android/server/wm/NubiaAdvertiseManager;Lnubia/os/advt/AdConfig;)Lnubia/os/advt/AdConfig;

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v1

    invoke-interface {v1}, Lnubia/os/advt/IAdControlInterface;->getWhiteList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$602(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/util/List;)Ljava/util/List;

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v1

    invoke-interface {v1}, Lnubia/os/advt/IAdControlInterface;->getBlackList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$702(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/util/List;)Ljava/util/List;

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$800(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 398
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v2}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$000(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$902(Lcom/android/server/wm/NubiaAdvertiseManager;J)J

    .line 402
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v3}, Lcom/android/server/wm/NubiaAdvertiseManager;->getNetworkType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$202(Lcom/android/server/wm/NubiaAdvertiseManager;I)I

    .line 403
    new-instance v2, Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;

    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {v2, v3}, Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "startTime":J
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "classname"    # Landroid/content/ComponentName;

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$400(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/advt/IAdControlInterface;->unregisterCallback(Lnubia/os/advt/IAdCallback;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$2;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$302(Lcom/android/server/wm/NubiaAdvertiseManager;Lnubia/os/advt/IAdControlInterface;)Lnubia/os/advt/IAdControlInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
