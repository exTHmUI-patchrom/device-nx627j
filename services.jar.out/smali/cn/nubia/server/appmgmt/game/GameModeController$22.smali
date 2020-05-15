.class Lcn/nubia/server/appmgmt/game/GameModeController$22;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->showNetworkAccelerationDialog(Ljava/lang/String;)V
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

    .line 1598
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1601
    new-instance v0, Lnubia/widget/NubiaCenterAlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x30e000a

    invoke-direct {v0, v1, v2}, Lnubia/widget/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1602
    const v1, 0x30c0021

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setTitle(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 1603
    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x30c0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$22$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$22$2;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController$22;)V

    .line 1604
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$22$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$22$1;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController$22;)V

    .line 1613
    const v2, 0x30c0022

    invoke-virtual {v0, v2, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 1620
    .local v0, "mBuilder":Lnubia/widget/NubiaCenterAlertDialog$Builder;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->create()Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4402(Lcn/nubia/server/appmgmt/game/GameModeController;Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertDialog;

    .line 1621
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4400(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1622
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$22;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$4400(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/NubiaCenterAlertDialog;->show()V

    .line 1623
    return-void
.end method
