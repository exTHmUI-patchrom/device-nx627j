.class Lcom/android/server/policy/SingleModeCtrl$3;
.super Ljava/lang/Object;
.source "SingleModeCtrl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 483
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 487
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 488
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 489
    .local v2, "y":I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 495
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v3, v3, Lcom/android/server/policy/SingleModeCtrl;->startPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v1, v3

    .line 496
    .local v3, "xDistance":I
    iget-object v4, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v4, v4, Lcom/android/server/policy/SingleModeCtrl;->startPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, v2, v4

    .line 497
    .local v4, "yDistance":I
    iget-object v5, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v5}, Lcom/android/server/policy/SingleModeCtrl;->access$000(Lcom/android/server/policy/SingleModeCtrl;)I

    move-result v5

    if-ge v2, v5, :cond_0

    if-gez v4, :cond_0

    .line 498
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 499
    .local v5, "absY":I
    iget-object v6, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v6}, Lcom/android/server/policy/SingleModeCtrl;->access$100(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v6}, Lcom/android/server/policy/SingleModeCtrl;->access$000(Lcom/android/server/policy/SingleModeCtrl;)I

    move-result v6

    sub-int v10, v6, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 500
    iget-object v6, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v6}, Lcom/android/server/policy/SingleModeCtrl;->access$300(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v7}, Lcom/android/server/policy/SingleModeCtrl;->access$000(Lcom/android/server/policy/SingleModeCtrl;)I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 501
    iget-object v6, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v6}, Lcom/android/server/policy/SingleModeCtrl;->access$500(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v7}, Lcom/android/server/policy/SingleModeCtrl;->access$400(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v8}, Lcom/android/server/policy/SingleModeCtrl;->access$300(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    .end local v5    # "absY":I
    goto :goto_0

    .line 506
    .end local v3    # "xDistance":I
    .end local v4    # "yDistance":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    invoke-static {v3}, Lcom/android/server/policy/SingleModeCtrl;->access$100(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 507
    goto :goto_0

    .line 491
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v3, v3, Lcom/android/server/policy/SingleModeCtrl;->startPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 492
    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl$3;->this$0:Lcom/android/server/policy/SingleModeCtrl;

    iget-object v3, v3, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->removeMessages(I)V

    .line 493
    nop

    .line 511
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
