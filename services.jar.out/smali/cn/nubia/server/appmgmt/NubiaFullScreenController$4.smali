.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$4;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;->showFullscreenAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 412
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$4;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 415
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$4;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 416
    return-void
.end method
