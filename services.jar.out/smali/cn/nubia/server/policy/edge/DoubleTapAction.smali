.class public Lcn/nubia/server/policy/edge/DoubleTapAction;
.super Ljava/lang/Object;
.source "DoubleTapAction.java"


# static fields
.field private static final AUTHORITY_FLOAT:Ljava/lang/String; = "content://cn.nubia.floatmenu"

.field public static final DOULE_TAP_FOR_BACK:Ljava/lang/String; = "10"

.field public static final DOULE_TAP_FOR_FLOAT:Ljava/lang/String; = "01"

.field public static final DOULE_TAP_OFF:Ljava/lang/String; = "00"

.field private static final TAG:Ljava/lang/String; = "DoubleTapAction"


# instance fields
.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mDoubleTapAnim:Lcn/nubia/server/policy/edge/DoubleTapAnim;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureSettings"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 34
    iput-object p1, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 36
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-direct {v0, p1, p2}, Lcn/nubia/server/policy/edge/DoubleTapAnim;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mDoubleTapAnim:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 37
    return-void
.end method

.method private callFloatMenu(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 56
    iget v0, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    if-lez v0, :cond_0

    iget-object v0, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p2}, Lcn/nubia/server/policy/edge/DoubleTapAction;->notifyFloatMenu(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 59
    :cond_0
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->doubleTap(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private injectBack(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 13
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 63
    iget v0, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mDoubleTapAnim:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    iget-object v2, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    iget-object v3, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v3, v3, v1

    iget v3, v3, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    .line 65
    invoke-virtual {v0, v2, v3}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->start(FF)V

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v4, v12

    move-wide v5, v2

    move-wide v7, v2

    invoke-direct/range {v4 .. v11}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v12, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 72
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v12, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x64

    add-long v7, v2, v4

    const/4 v9, 0x1

    move-object v4, v12

    move-wide v5, v2

    invoke-direct/range {v4 .. v11}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v12, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 76
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->doubleTap(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private notifyFloatMenu(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 5
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 81
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "gesture"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://cn.nubia.floatmenu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "doubleTap"

    const-string v4, "gesture"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DoubleTapAction"

    const-string v2, "Exception happened "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public doAction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 40
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 41
    const/16 v1, 0x6000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->getDoubleTapSwitch()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CommunalService;->isFloatMenuExisted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/DoubleTapAction;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1, v0, p2}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedDoubleTapAtPresent(Ljava/lang/String;Lcn/nubia/edgegesture/EdgeGesture;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    return-void

    .line 52
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/DoubleTapAction;->callFloatMenu(ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 53
    return-void
.end method
