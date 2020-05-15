.class final Lcom/android/server/policy/SingleModeCtrl$SingleModeH;
.super Landroid/os/Handler;
.source "SingleModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SingleModeH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 323
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-static {}, Lcom/android/server/policy/SingleModeCtrl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$202(Z)Z

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$500(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$400(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$700(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$600(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-static {}, Lcom/android/server/policy/SingleModeCtrl;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$202(Z)Z

    .line 330
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$300(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$000(Lcom/android/server/policy/SingleModeCtrl;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 331
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$500(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$400(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v2}, Lcom/android/server/policy/SingleModeCtrl;->access$300(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$700(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$600(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
