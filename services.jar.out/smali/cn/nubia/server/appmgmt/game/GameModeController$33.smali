.class Lcn/nubia/server/appmgmt/game/GameModeController$33;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->handleGameKeyMapAction()V
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

    .line 2110
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$33;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOk()V
    .locals 3

    .line 2113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$33;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5600(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->dismiss()V

    .line 2114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$33;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$400(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 2115
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$33;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$33;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1100(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameKeyMapOption(Ljava/lang/String;Z)V

    .line 2116
    return-void
.end method
