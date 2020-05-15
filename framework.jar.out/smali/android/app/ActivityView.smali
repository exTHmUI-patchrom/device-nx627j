.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$TaskStackListenerImpl;,
        Landroid/app/ActivityView$SurfaceCallback;,
        Landroid/app/ActivityView$StateCallback;
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mInputForwarder:Landroid/app/IInputForwarder;

.field private final mLocationOnScreen:[I

.field private mOpened:Z

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private mTaskStackListener:Landroid/app/TaskStackListener;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ActivityView;->mLocationOnScreen:[I

    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    .line 87
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView;->mActivityManager:Landroid/app/IActivityManager;

    .line 88
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 89
    new-instance v0, Landroid/app/ActivityView$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    .line 90
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 91
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    .line 94
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic access$100(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/ActivityView;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityView;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 54
    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ActivityView;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    invoke-direct {p0}, Landroid/app/ActivityView;->initVirtualDisplay()V

    return-void
.end method

.method static synthetic access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/ActivityView;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    invoke-direct {p0}, Landroid/app/ActivityView;->updateLocation()V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityView;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/app/ActivityView;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityView;

    .line 54
    invoke-direct {p0}, Landroid/app/ActivityView;->cleanTapExcludeRegion()V

    return-void
.end method

.method private cleanTapExcludeRegion()V
    .locals 7

    .line 405
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityView;->getWindow()Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindowSession;->updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getBaseDisplayDensity()I
    .locals 3

    .line 414
    iget-object v0, p0, Landroid/app/ActivityView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 415
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 416
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 417
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method private initVirtualDisplay()V
    .locals 10

    .line 325
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 330
    .local v0, "width":I
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v8

    .line 331
    .local v8, "height":I
    iget-object v1, p0, Landroid/app/ActivityView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/hardware/display/DisplayManager;

    .line 332
    .local v9, "displayManager":Landroid/hardware/display/DisplayManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityViewVirtualDisplay@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result v5

    iget-object v6, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    const/16 v7, 0x9

    .line 332
    move-object v1, v9

    move v3, v0

    move v4, v8

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 337
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_0

    .line 338
    const-string v1, "ActivityView"

    const-string v2, "Failed to initialize ActivityView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 343
    .local v1, "displayId":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 345
    .local v2, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->dontOverrideDisplayInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v3

    .line 347
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 349
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/hardware/input/InputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 350
    new-instance v3, Landroid/app/ActivityView$TaskStackListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/app/ActivityView$TaskStackListenerImpl;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V

    iput-object v3, p0, Landroid/app/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 352
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityView;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Landroid/app/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    goto :goto_1

    .line 353
    :catch_1
    move-exception v3

    .line 354
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "ActivityView"

    const-string v5, "Failed to register task stack listener"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 326
    .end local v0    # "width":I
    .end local v1    # "displayId":I
    .end local v2    # "wm":Landroid/view/IWindowManager;
    .end local v8    # "height":I
    .end local v9    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to initialize for the second time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 280
    iget-object v0, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    invoke-interface {v0, p1}, Landroid/app/IInputForwarder;->forwardEvent(Landroid/view/InputEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private performRelease()V
    .locals 4

    .line 359
    iget-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 365
    iget-object v0, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 366
    iput-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    .line 368
    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityView;->cleanTapExcludeRegion()V

    .line 370
    iget-object v0, p0, Landroid/app/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_2

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Landroid/app/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityView"

    const-string v3, "Failed to unregister task stack listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p0, Landroid/app/ActivityView;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 380
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 382
    iput-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 383
    const/4 v0, 0x1

    .local v0, "displayReleased":Z
    goto :goto_1

    .line 385
    .end local v0    # "displayReleased":Z
    :cond_3
    move v0, v2

    .line 388
    .restart local v0    # "displayReleased":Z
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_4

    .line 389
    iget-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 390
    iput-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 393
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    if-eqz v1, :cond_5

    .line 394
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v1, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewDestroyed(Landroid/app/ActivityView;)V

    .line 397
    :cond_5
    iget-object v1, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 398
    iput-boolean v2, p0, Landroid/app/ActivityView;->mOpened:Z

    .line 399
    return-void
.end method

.method private prepareActivityOptions()Landroid/app/ActivityOptions;
    .locals 2

    .line 215
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 220
    .local v0, "options":Landroid/app/ActivityOptions;
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 221
    return-object v0

    .line 216
    .end local v0    # "options":Landroid/app/ActivityOptions;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start activity before ActivityView is ready."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateLocation()V
    .locals 8

    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mLocationOnScreen:[I

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->getLocationOnScreen([I)V

    .line 257
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ActivityView;->getWindow()Landroid/view/IWindow;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, p0, Landroid/app/ActivityView;->mLocationOnScreen:[I

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v0, p0, Landroid/app/ActivityView;->mLocationOnScreen:[I

    const/4 v5, 0x1

    aget v5, v0, v5

    .line 258
    invoke-virtual {p0}, Landroid/app/ActivityView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/app/ActivityView;->getHeight()I

    move-result v7

    .line 257
    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 425
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 271
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 250
    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 251
    return-void
.end method

.method public onLocationChanged()V
    .locals 0

    .line 245
    invoke-direct {p0}, Landroid/app/ActivityView;->updateLocation()V

    .line 246
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 266
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public release()V
    .locals 2

    .line 233
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V

    .line 238
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to release container that is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Landroid/app/ActivityView$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/ActivityView$StateCallback;

    .line 135
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    .line 137
    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    .line 140
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 200
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 202
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 204
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 202
    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .line 208
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 158
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 159
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/ActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 180
    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 181
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/app/ActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 182
    return-void
.end method
