.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$9;
.super Landroid/database/ContentObserver;
.source "NubiaFullScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;->registerNavigationBarObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 665
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$9;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 668
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$9;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$9;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cc_navi_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$802(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z

    .line 670
    return-void
.end method
