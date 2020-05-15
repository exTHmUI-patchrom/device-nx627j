.class Lcn/nubia/server/appmgmt/game/GameModeController$18$1;
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

    .line 1393
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1396
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3600(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3700(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 1399
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    .line 1400
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$700(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3600(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3802(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$18$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$18;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$18;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$3900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 1404
    return-void
.end method
