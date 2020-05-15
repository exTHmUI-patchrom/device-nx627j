.class Lcn/nubia/server/policy/edge/BrightnessDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 105
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    const-string v0, "cn.nubia.action.SCREEN_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    const-string v0, "displayid"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    move v0, v1

    .line 110
    .local v0, "isMainScreen":Z
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$400(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 111
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$402(Lcn/nubia/server/policy/edge/BrightnessDialog;Z)Z

    .line 113
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$500(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$500(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$600(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 116
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$700(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$800(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$900(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 120
    .end local v0    # "isMainScreen":Z
    :cond_3
    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$1000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$2;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$1000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    :goto_0
    return-void
.end method
