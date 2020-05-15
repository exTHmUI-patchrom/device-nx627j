.class Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6$1;
.super Ljava/lang/Object;
.source "GamePerformanceModeCtrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;

    .line 383
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6$1;->this$1:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 386
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6$1;->this$1:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$1200(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V

    .line 387
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6$1;->this$1:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$1300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 388
    return-void
.end method
