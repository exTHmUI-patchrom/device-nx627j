.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;
.super Ljava/lang/Object;
.source "DualScreenMapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 156
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v0, v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v0, v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v3, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mInitPositionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 170
    .local v0, "del":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-boolean v3, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mDrag:Z

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iput-boolean v2, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mDrag:Z

    .line 172
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 174
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-boolean v1, v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mDrag:Z

    if-eqz v1, :cond_5

    .line 175
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v1, v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v3, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLastX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 176
    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMin()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .end local v0    # "del":F
    goto/16 :goto_0

    .line 177
    .restart local v0    # "del":F
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v3, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v4, v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLastX:F

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$300(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;F)I

    move-result v1

    .line 178
    .local v1, "result":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 179
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v4, v4, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLastX:F

    .line 181
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$400(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;I)V

    .line 182
    .end local v1    # "result":I
    goto/16 :goto_0

    .line 161
    .end local v0    # "del":F
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    .line 162
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iput-boolean v1, v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mDrag:Z

    .line 163
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v3, v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mLastX:F

    iput v3, v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mInitPositionX:F

    .line 164
    const-string v0, "DualScreenMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "down:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$200(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    .line 166
    goto :goto_0

    .line 186
    :cond_3
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget v1, v1, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->mPointId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 187
    :cond_4
    const-string v0, "DualScreenMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "up:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$200(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    .line 190
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$500(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    .line 192
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$600(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setSecondaryTouchRects(Ljava/lang/String;Landroid/content/Context;)V

    .line 195
    :cond_5
    :goto_0
    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
