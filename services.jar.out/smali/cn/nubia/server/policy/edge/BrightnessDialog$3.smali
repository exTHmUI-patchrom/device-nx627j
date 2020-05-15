.class Lcn/nubia/server/policy/edge/BrightnessDialog$3;
.super Landroid/app/Dialog;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;
    .param p2, "x0"    # Landroid/content/Context;

    .line 149
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$3;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 152
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$3;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$3;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$1000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$3;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$1000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
