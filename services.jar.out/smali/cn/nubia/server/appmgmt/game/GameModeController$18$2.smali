.class Lcn/nubia/server/appmgmt/game/GameModeController$18$2;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController$18;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/game/GameModeController$18;

    .line 1386
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1389
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3600(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$2;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 1391
    return-void
.end method
