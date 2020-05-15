.class Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/NubiaFullScreenController;->setChildViewLayoutByOrientation(I)V
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

    .line 510
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 513
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 514
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 515
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 516
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;->this$0:Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    const/4 v1, 0x0

    return v1
.end method
