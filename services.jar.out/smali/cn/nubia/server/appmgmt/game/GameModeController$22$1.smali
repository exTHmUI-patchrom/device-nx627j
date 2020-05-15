.class Lcn/nubia/server/appmgmt/game/GameModeController$22$1;
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

    .line 1613
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1616
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4300(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 1617
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22$1;->this$1:Lcn/nubia/server/appmgmt/game/GameModeController$22;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4400(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 1618
    return-void
.end method
