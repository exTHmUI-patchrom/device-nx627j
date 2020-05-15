.class final Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;
.super Ljava/lang/Object;
.source "SingleModeCtrl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OverScanPointerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleModeCtrl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 426
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 430
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$900(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$800(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 431
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$800(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->overscanTop:I

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SingleModeCtrl;->access$000(Lcom/android/server/policy/SingleModeCtrl;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v0, v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->removeMessages(I)V

    .line 434
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v0, v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v1, v1, Lcom/android/server/policy/SingleModeCtrl;->singleModeR:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SingleModeCtrl;->access$100(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 439
    :cond_1
    :goto_0
    return-void
.end method
