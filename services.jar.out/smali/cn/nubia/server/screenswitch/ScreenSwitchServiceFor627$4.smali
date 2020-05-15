.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->showSubContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$presentation:Landroid/app/Presentation;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/widget/ImageView;Landroid/app/Presentation;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 326
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->val$presentation:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 329
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 340
    return-void
.end method
