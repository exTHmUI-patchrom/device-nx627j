.class Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;
.super Ljava/lang/Object;
.source "GamePerformanceModeCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 378
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 381
    new-instance v0, Lnubia/widget/NubiaCenterAlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x30e000a

    invoke-direct {v0, v1, v2}, Lnubia/widget/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 382
    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x30c0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6$1;-><init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;)V

    .line 383
    const v2, 0x30c0044

    invoke-virtual {v0, v2, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 390
    .local v0, "mBuilder":Lnubia/widget/NubiaCenterAlertDialog$Builder;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->create()Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$1302(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertDialog;

    .line 391
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$1300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 392
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$1300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/widget/NubiaCenterAlertDialog;->show()V

    .line 393
    return-void
.end method
