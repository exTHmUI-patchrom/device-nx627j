.class Lcn/nubia/server/appmgmt/game/GameModeController$36;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->showDualScreenMapGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 2219
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$36;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2222
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$36;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    new-instance v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$36;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5902(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;)Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    .line 2223
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$36;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->show()V

    .line 2224
    return-void
.end method
