.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenIndicateViewOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;

    .line 391
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 394
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_full_screen_alert_dialog_times"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 396
    .local v1, "showAlertDialogTimes":I
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FullScreenIndicateViewOnClickListener onClick and try showAlertDialogTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-nez v1, :cond_0

    .line 398
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$1900(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void
.end method
