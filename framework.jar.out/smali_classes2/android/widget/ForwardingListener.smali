.class public abstract Landroid/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ForwardingListener$TriggerLongPress;,
        Landroid/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    .line 68
    iget v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    .line 69
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ForwardingListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ForwardingListener;

    .line 32
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ForwardingListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ForwardingListener;

    .line 32
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->onLongPress()V

    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .line 207
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 13

    .line 217
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 219
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 220
    .local v0, "src":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    return-void

    .line 231
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 235
    .local v11, "now":J
    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 236
    .local v1, "e":Landroid/view/MotionEvent;
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 239
    iput-boolean v2, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 240
    return-void

    .line 223
    .end local v1    # "e":Landroid/view/MotionEvent;
    .end local v11    # "now":J
    :cond_2
    :goto_0
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .line 250
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 251
    .local v0, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v1

    .line 252
    .local v1, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast v3, Landroid/widget/DropDownListView;

    .line 257
    .local v3, "dst":Landroid/widget/DropDownListView;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/DropDownListView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 262
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 263
    .local v4, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, v4}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 267
    iget v5, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v5

    .line 268
    .local v5, "handled":Z
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 272
    .local v6, "action":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    move v8, v2

    .line 275
    .local v8, "keepForwarding":Z
    :goto_0
    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    move v2, v7

    nop

    :cond_3
    return v2

    .line 258
    .end local v4    # "dstEvent":Landroid/view/MotionEvent;
    .end local v5    # "handled":Z
    .end local v6    # "action":I
    .end local v8    # "keepForwarding":Z
    :cond_4
    :goto_1
    return v2

    .line 253
    .end local v3    # "dst":Landroid/widget/DropDownListView;
    :cond_5
    :goto_2
    return v2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .line 161
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 162
    .local v0, "src":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 163
    return v2

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 167
    .local v1, "actionMasked":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    iget v3, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 183
    .local v3, "activePointerIndex":I
    if-ltz v3, :cond_4

    .line 184
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 185
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 188
    .local v5, "y":F
    iget v6, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/View;->pointInView(FFF)Z

    move-result v6

    if-nez v6, :cond_1

    .line 189
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 193
    return v6

    .line 195
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    goto :goto_0

    .line 199
    .end local v3    # "activePointerIndex":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 171
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 172
    new-instance v3, Landroid/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v3, p0, v4}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$1;)V

    iput-object v3, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 174
    :cond_2
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v5, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v5, v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v3, :cond_3

    .line 177
    new-instance v3, Landroid/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v3, p0, v4}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$1;)V

    iput-object v3, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 179
    :cond_3
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v4, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    nop

    .line 203
    :cond_4
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 131
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->show()V

    .line 134
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 148
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->dismiss()V

    .line 151
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 85
    move-object/from16 v1, p2

    iget-boolean v2, v0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 87
    .local v2, "wasForwarding":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 88
    invoke-direct {v0, v1}, Landroid/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    .local v5, "forwarding":Z
    :goto_1
    goto :goto_3

    .line 90
    .end local v5    # "forwarding":Z
    :cond_2
    invoke-direct {v0, v1}, Landroid/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    .line 92
    .restart local v5    # "forwarding":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 95
    .local v14, "now":J
    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v14

    move-wide v8, v14

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 97
    .local v6, "e":Landroid/view/MotionEvent;
    iget-object v7, v0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 102
    .end local v6    # "e":Landroid/view/MotionEvent;
    .end local v14    # "now":J
    :cond_4
    :goto_3
    iput-boolean v5, v0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 103
    if-nez v5, :cond_6

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    nop

    :cond_6
    :goto_4
    return v3
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 108
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 115
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 118
    :cond_0
    return-void
.end method
