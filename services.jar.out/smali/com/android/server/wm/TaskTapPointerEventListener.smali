.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mPerfObj:Landroid/util/BoostFramework;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 49
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 53
    :cond_0
    return-void
.end method

.method private getDisplayId()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    if-eqz v1, :cond_a

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 87
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 88
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 89
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v4, 0x1

    .line 90
    .local v4, "iconType":I
    if-eqz v3, :cond_8

    .line 91
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 92
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 93
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    const/16 v6, 0x3f6

    const/16 v7, 0x3f8

    const/16 v8, 0x3f9

    if-ge v1, v5, :cond_3

    .line 95
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_1

    .line 97
    move v6, v8

    goto :goto_0

    .line 96
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_2

    .line 97
    move v6, v7

    nop

    :cond_2
    :goto_0
    move v4, v6

    goto :goto_2

    .line 98
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v1, v5, :cond_6

    .line 100
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_4

    .line 102
    move v6, v7

    goto :goto_1

    .line 101
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_5

    .line 102
    move v6, v8

    nop

    :cond_5
    :goto_1
    move v4, v6

    goto :goto_2

    .line 103
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v2, v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_8

    .line 104
    :cond_7
    const/16 v4, 0x3f7

    .line 108
    :cond_8
    :goto_2
    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v5, v4, :cond_d

    .line 109
    iput v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 110
    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 112
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x37

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v6, v1, v2, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 113
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 115
    :cond_9
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "iconType":I
    goto :goto_3

    .line 67
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 68
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 70
    .restart local v2    # "y":I
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 73
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowManagerService;->isDownNaviEvent(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 74
    monitor-exit p0

    goto :goto_3

    .line 77
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_c

    .line 78
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    .line 81
    :cond_c
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v1    # "x":I
    .end local v2    # "y":I
    nop

    .line 121
    :cond_d
    :goto_3
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v1, :cond_f

    .line 122
    sget v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v1, :cond_e

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v3, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    invoke-virtual {v1, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 124
    const/4 v1, -0x1

    sput v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    .line 126
    :cond_e
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 128
    :cond_f
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v1, :cond_10

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    const/16 v3, 0x1043

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 130
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 132
    :cond_10
    return-void

    .line 81
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "displayId"    # I

    .line 57
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 60
    :cond_0
    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "newRegion"    # Landroid/graphics/Region;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 137
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
