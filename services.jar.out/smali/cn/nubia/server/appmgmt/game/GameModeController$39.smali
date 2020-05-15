.class Lcn/nubia/server/appmgmt/game/GameModeController$39;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->noteCreateActivity(Ljava/lang/String;)V
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

    .line 2514
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$39;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2517
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$39;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2518
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$39;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    new-instance v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    .line 2519
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$39;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$39;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->createDialog(Landroid/content/Context;)Lnubia/widget/NubiaCenterAlertDialog;

    .line 2521
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$39;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$6100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->show()V

    .line 2522
    return-void
.end method
