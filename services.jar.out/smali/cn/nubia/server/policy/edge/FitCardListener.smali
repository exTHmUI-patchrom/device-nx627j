.class public Lcn/nubia/server/policy/edge/FitCardListener;
.super Ljava/lang/Object;
.source "FitCardListener.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/OnActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FitCardListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownerHeight:I

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mIsEnable:Z

.field private mIsIdle:Z

.field private mUpperHeight:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 30
    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 33
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    const/high16 v5, 0x43480000    # 200.0f

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mUpperHeight:I

    .line 36
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mDownerHeight:I

    .line 37
    return-void
.end method

.method private static cancelMotionEvent(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 3
    .param p0, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 90
    invoke-virtual {p0}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v0

    const/16 v1, 0x7000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/edgegesture/EdgeGesture;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/edgegesture/EdgeGesture;->mEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 92
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 94
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 95
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 97
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 99
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private isEnable(Lcn/nubia/edgegesture/EdgeGesture;)Z
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 102
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x7000

    if-ne v0, v3, :cond_1

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v3, "nubia_edge_quick_inward"

    .line 105
    invoke-virtual {v0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    move v1, v2

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 103
    :goto_0
    return v1

    .line 107
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v3, "nubia_edge_move_in_switch"

    .line 109
    invoke-virtual {v0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    move v1, v2

    goto :goto_1

    .line 109
    :cond_2
    nop

    .line 107
    :goto_1
    return v1
.end method


# virtual methods
.method public onEnterIdleState()V
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mIsIdle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mIsEnable:Z

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mIsIdle:Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://cn.nubia.fitcard"

    .line 82
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "onGestureIdleState"

    const-string v3, "gesture"

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FitCardListener"

    const-string v2, "Exception happened "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 5
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 41
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/FitCardListener;->isEnable(Lcn/nubia/edgegesture/EdgeGesture;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mIsEnable:Z

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mIsEnable:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    iget v2, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mDownerHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    iget v2, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mUpperHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v2, 0x5001

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    invoke-static {p1}, Lcn/nubia/server/policy/edge/FitCardListener;->cancelMotionEvent(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 61
    :cond_2
    :pswitch_1
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mIsIdle:Z

    .line 63
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "gesture"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    iget-object v1, p0, Lcn/nubia/server/policy/edge/FitCardListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://cn.nubia.fitcard"

    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "onGestureAction"

    const-string v4, "gesture"

    .line 65
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FitCardListener"

    const-string v2, "Exception happened "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 44
    :cond_3
    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4002
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
