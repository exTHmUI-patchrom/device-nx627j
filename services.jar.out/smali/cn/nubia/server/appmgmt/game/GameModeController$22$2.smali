.class Lcn/nubia/server/appmgmt/game/GameModeController$22$2;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController$22;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/game/GameModeController$22;

    .line 1604
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1608
    .local v0, "currentTime":J
    new-instance v2, Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    iget-object v3, v3, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {v2, v3, v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;J)V

    .line 1609
    .local v2, "rTimeRunnable":Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    iget-object v3, v3, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4500(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1610
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    iget-object v3, v3, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4400(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 1611
    return-void
.end method
