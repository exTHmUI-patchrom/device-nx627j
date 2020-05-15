.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;

    .line 329
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPreDraw$0(Landroid/app/Presentation;)V
    .locals 0
    .param p0, "presentation"    # Landroid/app/Presentation;

    .line 334
    invoke-virtual {p0}, Landroid/app/Presentation;->dismiss()V

    .line 335
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 332
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 333
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->val$presentation:Landroid/app/Presentation;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$4$1$V8NDvi6er7zHg8_u6L-KJv-7Fq8;

    invoke-direct {v2, v1}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$4$1$V8NDvi6er7zHg8_u6L-KJv-7Fq8;-><init>(Landroid/app/Presentation;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    const/4 v0, 0x1

    return v0
.end method
