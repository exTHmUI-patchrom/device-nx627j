.class public Lcn/nubia/server/edge/EdgePointerEventService;
.super Lnubia/os/edge/IEdgePointerEventManager$Stub;
.source "EdgePointerEventService.java"


# static fields
.field private static final CZONE:Ljava/lang/String; = "persist.sys.edgetp.czone"

.field private static final CZONE_COMPONENT:Ljava/lang/String; = "cn.nubia.edge/cn.nubia.edge.instruct.InstructActivity"

.field private static final CZONE_MASK:I = 0x11

.field private static final ENABLE_CZONE:Ljava/lang/String; = "nubia_edge_enable_czone"

.field private static final MASK:I = 0xf

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventService"

.field private static final TZONE:Ljava/lang/String; = "persist.sys.edgetp.tzone"

.field private static final TZONE_MASK:I = 0x111


# instance fields
.field private mCZoneEnable:Z

.field private mCZoneFlag:I

.field private mContext:Landroid/content/Context;

.field private mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mLastEnableFitState:I

.field private mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTZoneEnable:Z

.field private mTZoneFlag:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "input"    # Lcom/android/server/input/InputManagerService;

    .line 58
    invoke-direct {p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;-><init>()V

    .line 43
    const/16 v0, 0xff0

    iput v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mLastEnableFitState:I

    .line 59
    iput-object p1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 61
    iput-object p3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 62
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v0, "ro.nubia.edge.channel"

    const-string/jumbo v1, "nubia_edge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "channelName":Ljava/lang/String;
    new-instance v1, Lcn/nubia/server/edge/PointerEventDispatcher;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v4, "EdgePointer"

    .line 67
    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/edge/PointerEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    .line 69
    .end local v0    # "channelName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/edge/EdgePointerEventService;->updateZoneValue()V

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "edge"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method private setProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    .line 167
    :cond_0
    new-instance v0, Lcn/nubia/server/edge/EdgePointerEventService$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/edge/EdgePointerEventService$1;-><init>(Lcn/nubia/server/edge/EdgePointerEventService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    .line 173
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private updateZoneValue()V
    .locals 6

    .line 148
    const-string/jumbo v0, "persist.sys.edgetp.czone"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "propertyValue":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    .line 150
    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_edge_czone"

    .line 150
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "settingsValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_edge_czone"

    .line 153
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 156
    .local v2, "set":Z
    const-string v3, "EdgePointerEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "czone area mismatch, rechange the settings value, set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2    # "set":Z
    :cond_0
    const-string v2, "1"

    const-string/jumbo v3, "persist.sys.edgetp.tzone"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneEnable:Z

    .line 160
    return-void
.end method


# virtual methods
.method public getEdgeDeviceWidth()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getEdgeDeviceWidth()I

    move-result v0

    return v0
.end method

.method public registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .line 81
    return-void
.end method

.method public registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IPointerEventListener;

    .line 94
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/PointerEventDispatcher;->registerEventListener(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setEdgeDeviceWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 139
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setEdgeDeviceWidth(I)V

    .line 140
    return-void
.end method

.method public unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .line 89
    return-void
.end method

.method public unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IPointerEventListener;

    .line 102
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/PointerEventDispatcher;->unregisterEventListener(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public updateCZoneState(II)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .line 123
    iget v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    const/16 v1, 0xf

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    shl-int v1, p2, p1

    or-int/2addr v0, v1

    .line 124
    .local v0, "cZoneFlag":I
    iget v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    if-eq v1, v0, :cond_4

    .line 125
    and-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 126
    .local v1, "enable":Z
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    if-eq v1, v2, :cond_3

    .line 127
    iput-boolean v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    .line 128
    const-string v2, "EdgePointerEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update c area enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v2, "persist.sys.edgetp.czone"

    if-eqz v1, :cond_1

    const-string v3, "1"

    goto :goto_1

    :cond_1
    const-string v3, "0"

    :goto_1
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_edge_czone"

    .line 131
    if-eqz v1, :cond_2

    const-string v4, "1"

    goto :goto_2

    :cond_2
    const-string v4, "0"

    .line 130
    :goto_2
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :cond_3
    iput v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mCZoneFlag:I

    .line 135
    .end local v1    # "enable":Z
    :cond_4
    return-void
.end method

.method public updateTZoneState(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .line 110
    iget v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    const/16 v1, 0xf

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    shl-int v1, p2, p1

    or-int/2addr v0, v1

    .line 111
    .local v0, "tZoneFlag":I
    iget v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    if-eq v1, v0, :cond_5

    .line 112
    and-int/lit16 v1, v0, 0x111

    const/16 v2, 0x111

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 113
    .local v1, "disable":Z
    :goto_0
    if-nez v1, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-boolean v5, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneEnable:Z

    if-eq v2, v5, :cond_4

    .line 114
    if-nez v1, :cond_2

    move v3, v4

    nop

    :cond_2
    iput-boolean v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneEnable:Z

    .line 115
    const-string/jumbo v2, "persist.sys.edgetp.tzone"

    if-eqz v1, :cond_3

    const-string v3, "0"

    goto :goto_2

    :cond_3
    const-string v3, "1"

    :goto_2
    invoke-direct {p0, v2, v3}, Lcn/nubia/server/edge/EdgePointerEventService;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_4
    iput v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mTZoneFlag:I

    .line 119
    .end local v1    # "disable":Z
    :cond_5
    return-void
.end method
