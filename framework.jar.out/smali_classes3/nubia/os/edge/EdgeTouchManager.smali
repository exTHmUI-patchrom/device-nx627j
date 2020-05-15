.class public final Lnubia/os/edge/EdgeTouchManager;
.super Ljava/lang/Object;
.source "EdgeTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;,
        Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;
    }
.end annotation


# static fields
.field public static final CZONE_OFFSET_ACTIVITY:I = 0x0

.field public static final CZONE_OFFSET_GAME_MODE:I = 0x8

.field public static final CZONE_OFFSET_SWITCH:I = 0x4

.field private static final DEBUG:Z = false

.field public static final STATE_DISABLE:I = 0x0

.field public static final STATE_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventManager"

.field public static final TZONE_OFFSET_ACTIVITY:I = 0x0

.field public static final TZONE_OFFSET_INPUT_METHOD:I = 0x4

.field public static final TZONE_OFFSET_SWITCH:I = 0x8

.field private static sInstance:Lnubia/os/edge/EdgeTouchManager;


# instance fields
.field private mEdgeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnubia/os/edge/OnEdgeTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

.field private mNormalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnubia/os/edge/OnNormalTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

.field private mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

.field private mService:Lnubia/os/edge/IEdgePointerEventManager;

.field private mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lnubia/os/edge/EdgeTouchManager;

    invoke-direct {v0}, Lnubia/os/edge/EdgeTouchManager;-><init>()V

    sput-object v0, Lnubia/os/edge/EdgeTouchManager;->sInstance:Lnubia/os/edge/EdgeTouchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    .line 37
    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    new-array v1, v0, [Lnubia/os/edge/OnEdgeTouchListener;

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    .line 43
    new-array v0, v0, [Lnubia/os/edge/OnNormalTouchListener;

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lnubia/os/edge/EdgeTouchManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchManager;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lnubia/os/edge/EdgeTouchManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchManager;->dispatchNormalTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 191
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    if-nez v1, :cond_1

    .line 197
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lnubia/os/edge/OnEdgeTouchListener;

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 198
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    :cond_1
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 201
    .local v1, "listeners":[Lnubia/os/edge/OnEdgeTouchListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 203
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 204
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/OnEdgeTouchListener;->onEdgeTouch(Landroid/view/MotionEvent;)V

    .line 202
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 201
    .end local v1    # "listeners":[Lnubia/os/edge/OnEdgeTouchListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dispatchNormalTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 210
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    if-nez v1, :cond_1

    .line 216
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lnubia/os/edge/OnNormalTouchListener;

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 218
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    :cond_1
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 221
    .local v1, "listeners":[Lnubia/os/edge/OnNormalTouchListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 223
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 224
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/OnNormalTouchListener;->onNormalTouch(Landroid/view/MotionEvent;)V

    .line 222
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 221
    .end local v1    # "listeners":[Lnubia/os/edge/OnNormalTouchListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;
    .locals 2

    .line 238
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchManager;Lnubia/os/edge/EdgeTouchManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    .line 241
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    return-object v0
.end method

.method public static getInstance()Lnubia/os/edge/EdgeTouchManager;
    .locals 1

    .line 60
    sget-object v0, Lnubia/os/edge/EdgeTouchManager;->sInstance:Lnubia/os/edge/EdgeTouchManager;

    return-object v0
.end method

.method private getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;
    .locals 2

    .line 245
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchManager;Lnubia/os/edge/EdgeTouchManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    .line 248
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    return-object v0
.end method

.method private getService()Lnubia/os/edge/IEdgePointerEventManager;
    .locals 1

    .line 230
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "nubia.edge.touch"

    .line 232
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    .line 234
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    return-object v0
.end method

.method private registerEdgeTouch()V
    .locals 2

    .line 160
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    .line 161
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    :goto_0
    return-void
.end method

.method private registerNormalTouch()V
    .locals 2

    .line 176
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    .line 177
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    :goto_0
    return-void
.end method

.method private unregisterEdgeTouch()V
    .locals 2

    .line 168
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    .line 168
    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :goto_0
    return-void
.end method

.method private unregisterNormalTouch()V
    .locals 2

    .line 184
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    .line 185
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    :goto_0
    return-void
.end method


# virtual methods
.method public getEdgeDeviceWidth()I
    .locals 2

    .line 90
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-interface {v0}, Lnubia/os/edge/IEdgePointerEventManager;->getEdgeDeviceWidth()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public registerEdgeTouchListener(Lnubia/os/edge/OnEdgeTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnEdgeTouchListener;

    .line 97
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->registerEdgeTouch()V

    .line 105
    :cond_1
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 108
    :cond_2
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerNormalTouchListener(Lnubia/os/edge/OnNormalTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnNormalTouchListener;

    .line 128
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->registerNormalTouch()V

    .line 136
    :cond_1
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 139
    :cond_2
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEdgeDeviceWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 83
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lnubia/os/edge/IEdgePointerEventManager;->setEdgeDeviceWidth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    :goto_0
    return-void
.end method

.method public unregisterEdgeTouchListener(Lnubia/os/edge/OnEdgeTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnEdgeTouchListener;

    .line 112
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 119
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->unregisterEdgeTouch()V

    .line 123
    :cond_1
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterNormalTouchListener(Lnubia/os/edge/OnNormalTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnNormalTouchListener;

    .line 144
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 151
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->unregisterNormalTouch()V

    .line 155
    :cond_1
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCZoneState(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .line 74
    :try_start_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnubia/os/edge/IEdgePointerEventManager;->updateCZoneState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    :goto_0
    return-void
.end method

.method public updateTZoneState(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "state"    # I

    .line 65
    :try_start_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnubia/os/edge/IEdgePointerEventManager;->updateTZoneState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    :goto_0
    return-void
.end method
