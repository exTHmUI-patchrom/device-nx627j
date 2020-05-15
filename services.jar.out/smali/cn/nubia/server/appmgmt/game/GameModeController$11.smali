.class Lcn/nubia/server/appmgmt/game/GameModeController$11;
.super Landroid/database/ContentObserver;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 492
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .line 496
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_current_screen"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 497
    .local v0, "activeScreen":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 498
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    const-string/jumbo v2, "mControlCenterObserver, secondary !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    return-void

    .line 501
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$400(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 502
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1100(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 503
    .local v2, "enableTouch":Z
    if-nez v2, :cond_3

    .line 504
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GameModeService"

    const-string/jumbo v3, "mControlCenterObserver, secondary touch disable !"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_2
    return-void

    .line 507
    :cond_3
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cc_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 508
    .local v3, "display":I
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "GameModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mControlCenterObserver, display = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    if-ne v1, v3, :cond_5

    .line 510
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnableImmediate(Landroid/content/Context;Z)V

    goto :goto_0

    .line 512
    :cond_5
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController$11;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnableImmediate(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v0    # "activeScreen":I
    .end local v2    # "enableTouch":Z
    .end local v3    # "display":I
    :goto_0
    goto :goto_1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    return-void
.end method
