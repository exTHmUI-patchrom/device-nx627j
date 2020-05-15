.class public Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "resetNetworkAccDialogTimeRunnable"
.end annotation


# instance fields
.field private mTime:J

.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;J)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p2, "time"    # J

    .line 1491
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1492
    iput-wide p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;->mTime:J

    .line 1493
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1498
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_networkacc_dialog_time"

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;->mTime:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    goto :goto_0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1502
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
