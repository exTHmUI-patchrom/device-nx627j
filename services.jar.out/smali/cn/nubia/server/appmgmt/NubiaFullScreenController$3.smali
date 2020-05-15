.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;
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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 418
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 421
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_full_screen_alert_dialog_times"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 424
    return-void
.end method
