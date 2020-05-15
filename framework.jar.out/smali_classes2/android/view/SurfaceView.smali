.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field private mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 126
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 127
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 129
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 131
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 132
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 134
    new-instance v2, Landroid/view/SurfaceView$1;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 142
    new-instance v2, Landroid/view/SurfaceView$2;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 153
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 154
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 155
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 156
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 157
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 159
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 164
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 166
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 167
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 168
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 170
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 171
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 172
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 173
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 174
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 176
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 177
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 183
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 187
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 834
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 954
    new-instance v1, Landroid/view/SurfaceView$3;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 203
    iget-object v1, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 206
    return-void
.end method

.method static synthetic access$100(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 102
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V
    .locals 9
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "frameNumber"    # J

    .line 808
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 811
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, v2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    .line 815
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 816
    iget-object v3, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 817
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v5, v0, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 819
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 816
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 820
    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .locals 2

    .line 479
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 480
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 481
    const/4 v1, 0x0

    return-object v1

    .line 483
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 912
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 913
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 914
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 915
    monitor-exit v0

    .line 916
    return-object v1

    .line 915
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAboveParent()Z
    .locals 1

    .line 940
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInOptimizedList()Z
    .locals 2

    .line 1272
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "com.qqgame.hlddz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.prgame5.fish2.online.nubia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1274
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$SyyzxOgxKwZMRgiiTGcRYbOU5JY(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$onDrawFinished$0(Landroid/view/SurfaceView;)V
    .locals 0

    .line 792
    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    .line 793
    return-void
.end method

.method private onDrawFinished()V
    .locals 1

    .line 786
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 791
    :cond_0
    new-instance v0, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 794
    return-void
.end method

.method private performDrawFinished()V
    .locals 3

    .line 283
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 285
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    .line 288
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_0

    .line 291
    :cond_0
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "finished drawing but no pending report draw (extra call to draw completion runnable?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    :goto_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 920
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 921
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 922
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 924
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 926
    :goto_0
    return-void
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "frameNumber"    # J

    .line 823
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 825
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V

    .line 826
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v1, v1, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V

    .line 828
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1, v2, p2, p3}, Landroid/view/SurfaceView;->applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V

    .line 831
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 832
    return-void
.end method

.method private updateOpaqueFlag()V
    .locals 1

    .line 471
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 474
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 476
    :goto_0
    return-void
.end method

.method private updateRequestedVisibility()V
    .locals 1

    .line 219
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 220
    return-void
.end method


# virtual methods
.method protected applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "viewRootSurface"    # Landroid/view/Surface;
    .param p3, "nextViewRootFrameNumber"    # J

    .line 805
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 403
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 407
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 411
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 391
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 398
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 399
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 364
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    const/4 v0, 0x1

    .line 369
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 371
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_0

    .line 372
    :cond_1
    if-eqz p1, :cond_2

    .line 373
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 374
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 375
    .local v2, "h":I
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 376
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 378
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 379
    .local v3, "l":I
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 380
    .local v4, "t":I
    add-int v8, v3, v1

    add-int v9, v4, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v3

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 383
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "l":I
    .end local v4    # "t":I
    :cond_2
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    const/4 v0, 0x0

    .line 386
    :cond_3
    return v0

    .line 365
    .end local v0    # "opaque":Z
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isFixedSize()Z
    .locals 2

    .line 936
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

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

.method notifyDrawFinished()V
    .locals 2

    .line 298
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 299
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 302
    :cond_0
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 303
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 232
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 234
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 237
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 238
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 240
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 245
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 248
    :cond_1
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 250
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 251
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 252
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 254
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 307
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 313
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 317
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 318
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 320
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 321
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 322
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 325
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v2, :cond_2

    .line 326
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_0

    .line 329
    :cond_2
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 331
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 332
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v2, :cond_3

    .line 333
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v2}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    .line 335
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    .line 337
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 339
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 340
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 344
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 345
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 347
    .local v0, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 348
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1

    .line 349
    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 350
    .local v1, "height":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 351
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 258
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 259
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 260
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 261
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 262
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 358
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 359
    return v0
.end method

.method public setResizeBackgroundColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .line 951
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-static {v0, p1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->access$000(Landroid/view/SurfaceView$SurfaceControlWithBackground;I)V

    .line 952
    return-void
.end method

.method public setSecure(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 466
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 468
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 266
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 268
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1

    move v0, v1

    nop

    .line 269
    .local v0, "newRequestedVisible":Z
    :cond_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_2

    .line 276
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 278
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 279
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 280
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .line 425
    if-eqz p1, :cond_0

    .line 426
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 427
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .line 443
    if-eqz p1, :cond_0

    .line 444
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    goto :goto_0

    .line 446
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 448
    :goto_0
    return-void
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    .line 885
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 887
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_0

    .line 888
    return-void

    .line 890
    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v0, :cond_1

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 896
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SurfaceView"

    const-string v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSurface()V
    .locals 25

    .line 489
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_0

    .line 490
    return-void

    .line 492
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 499
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_3b

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3b

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 500
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v3, :cond_3b

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v0, :cond_3b

    .line 502
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->isInOptimizedList()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_27

    .line 507
    :cond_1
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 508
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v4, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 512
    :cond_2
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 513
    .local v0, "myWidth":I
    if-gtz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 514
    .end local v0    # "myWidth":I
    .local v4, "myWidth":I
    :cond_3
    move v4, v0

    iget v0, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 515
    .local v0, "myHeight":I
    if-gtz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 517
    .end local v0    # "myHeight":I
    .local v5, "myHeight":I
    :cond_4
    move v5, v0

    iget v0, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v6, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/4 v7, 0x0

    if-eq v0, v6, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v7

    :goto_0
    move v6, v0

    .line 518
    .local v6, "formatChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v8, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v8, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v7

    :goto_1
    move v8, v0

    .line 519
    .local v8, "visibleChanged":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v0, :cond_7

    if-nez v6, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v7

    :goto_2
    move v9, v0

    .line 521
    .local v9, "creating":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v4, :cond_a

    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v5, :cond_9

    goto :goto_3

    :cond_9
    move v0, v7

    goto :goto_4

    :cond_a
    :goto_3
    move v0, v3

    :goto_4
    move v10, v0

    .line 522
    .local v10, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v11, :cond_b

    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v7

    :goto_5
    move v11, v0

    .line 523
    .local v11, "windowVisibleChanged":Z
    const/4 v12, 0x0

    .line 525
    .local v12, "redrawNeeded":Z
    if-nez v9, :cond_17

    if-nez v6, :cond_17

    if-nez v10, :cond_17

    if-nez v8, :cond_17

    if-eqz v11, :cond_c

    .line 526
    move/from16 v17, v11

    move/from16 v18, v12

    goto/16 :goto_c

    .line 741
    :cond_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 742
    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v13, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v13, v13, v7

    if-ne v0, v13, :cond_e

    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v13, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v13, v13, v3

    if-eq v0, v13, :cond_d

    goto :goto_6

    :cond_d
    move v0, v7

    goto :goto_7

    :cond_e
    :goto_6
    move v0, v3

    :goto_7
    move v13, v0

    .line 744
    .local v13, "positionChanged":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v14, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-ne v0, v14, :cond_10

    .line 745
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v14, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-eq v0, v14, :cond_f

    goto :goto_8

    :cond_f
    move v0, v7

    goto :goto_9

    :cond_10
    :goto_8
    move v0, v3

    :goto_9
    move v14, v0

    .line 746
    .local v14, "layoutSizeChanged":Z
    if-nez v13, :cond_12

    if-eqz v14, :cond_11

    goto :goto_a

    .line 778
    .end local v13    # "positionChanged":Z
    .end local v14    # "layoutSizeChanged":Z
    :cond_11
    move/from16 v17, v11

    move/from16 v18, v12

    goto :goto_b

    .line 747
    .restart local v13    # "positionChanged":Z
    .restart local v14    # "layoutSizeChanged":Z
    :cond_12
    :goto_a
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v7

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 748
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v3

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 751
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v15

    aput v15, v0, v7

    .line 752
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v15

    aput v15, v0, v3

    .line 754
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v15, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget v3, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move/from16 v17, v11

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .end local v11    # "windowVisibleChanged":Z
    .local v17, "windowVisibleChanged":Z
    move/from16 v18, v12

    iget-object v12, v1, Landroid/view/SurfaceView;->mLocation:[I

    .end local v12    # "redrawNeeded":Z
    .local v18, "redrawNeeded":Z
    aget v7, v12, v7

    add-int/2addr v11, v7

    iget v7, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v12, v1, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v16, 0x1

    aget v12, v12, v16

    add-int/2addr v7, v12

    invoke-virtual {v0, v15, v3, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 757
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_13

    .line 758
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 761
    :cond_13
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_14

    .line 762
    return-void

    .line 765
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v0, :cond_16

    .line 771
    :cond_15
    :try_start_0
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    const-wide/16 v11, -0x1

    invoke-direct {v1, v0, v11, v12}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_b

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "SurfaceView"

    const-string v7, "Exception configuring surface"

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v13    # "positionChanged":Z
    .end local v14    # "layoutSizeChanged":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "redrawNeeded":Z
    .restart local v11    # "windowVisibleChanged":Z
    .restart local v12    # "redrawNeeded":Z
    :cond_16
    :goto_b
    move/from16 v12, v18

    .end local v11    # "windowVisibleChanged":Z
    .end local v12    # "redrawNeeded":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "redrawNeeded":Z
    goto/16 :goto_26

    .line 526
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "redrawNeeded":Z
    .restart local v11    # "windowVisibleChanged":Z
    .restart local v12    # "redrawNeeded":Z
    :cond_17
    move/from16 v17, v11

    move/from16 v18, v12

    .end local v11    # "windowVisibleChanged":Z
    .end local v12    # "redrawNeeded":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "redrawNeeded":Z
    :goto_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 536
    :try_start_1
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    move v3, v0

    .line 537
    .local v3, "visible":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v7

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 538
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v11, 0x1

    aget v0, v0, v11

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 539
    iput v4, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 540
    iput v5, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 541
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 542
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 544
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 545
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v11, v0, Landroid/graphics/Rect;->top:I

    .line 546
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Landroid/graphics/Rect;->right:I

    .line 547
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 548
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_18

    .line 549
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 552
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v0

    move-object v11, v0

    .line 553
    .local v11, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 555
    if-eqz v9, :cond_1a

    .line 556
    new-instance v0, Landroid/view/SurfaceSession;

    iget-object v12, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v12}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    iput-object v0, v1, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 557
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iput-object v0, v1, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 559
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SurfaceView - "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "name":Ljava/lang/String;
    new-instance v12, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_19

    const/4 v13, 0x1

    goto :goto_d

    :cond_19
    move v13, v7

    :goto_d
    new-instance v14, Landroid/view/SurfaceControl$Builder;

    iget-object v15, v1, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v14, v15}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v15, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v7, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 566
    invoke-virtual {v14, v15, v7}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget v14, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 567
    invoke-virtual {v7, v14}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 568
    invoke-virtual {v7, v14}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    invoke-direct {v12, v1, v0, v13, v7}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Ljava/lang/String;ZLandroid/view/SurfaceControl$Builder;)V

    iput-object v12, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    .line 569
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_e

    :cond_1a
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_1b

    .line 570
    return-void

    .line 573
    :cond_1b
    :goto_e
    const/4 v7, 0x0

    .line 575
    .local v7, "realSizeChanged":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 577
    if-nez v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    :goto_f
    :try_start_2
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 582
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 584
    :try_start_3
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v12, v1, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {v0, v12}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setLayer(I)V

    .line 585
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mViewVisibility:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    if-eqz v0, :cond_1d

    .line 586
    :try_start_4
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_10

    .line 609
    :catchall_0
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    goto/16 :goto_22

    .line 588
    :cond_1d
    :try_start_5
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->hide()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 599
    :goto_10
    if-nez v10, :cond_1e

    if-nez v9, :cond_1e

    :try_start_6
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_1f

    .line 600
    :cond_1e
    :try_start_7
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v0, v12, v13}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setPosition(FF)V

    .line 601
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget-object v13, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 603
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 601
    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14, v14, v13}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setMatrix(FFFF)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 605
    :cond_1f
    if-eqz v10, :cond_20

    .line 606
    :try_start_8
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v12, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v12, v13}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setSize(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 609
    :cond_20
    :try_start_9
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 610
    nop

    .line 612
    if-nez v10, :cond_22

    if-eqz v9, :cond_21

    goto :goto_11

    .line 616
    :cond_21
    move/from16 v12, v18

    goto :goto_12

    .line 613
    :cond_22
    :goto_11
    const/4 v12, 0x1

    .line 616
    .end local v18    # "redrawNeeded":Z
    .restart local v12    # "redrawNeeded":Z
    :goto_12
    :try_start_a
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v13, 0x0

    iput v13, v0, Landroid/graphics/Rect;->left:I

    .line 617
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    .line 618
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-nez v0, :cond_23

    .line 619
    :try_start_b
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v13, v0, Landroid/graphics/Rect;->right:I

    .line 620
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v13, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_13

    .line 634
    :catchall_1
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    goto/16 :goto_23

    .line 622
    :cond_23
    :try_start_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 623
    .local v0, "appInvertedScale":F
    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v14, v14

    mul-float/2addr v14, v0

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 624
    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v14, v14

    mul-float/2addr v14, v0

    add-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 627
    .end local v0    # "appInvertedScale":F
    :goto_13
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 628
    .local v0, "surfaceWidth":I
    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 629
    .local v13, "surfaceHeight":I
    iget v14, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ne v14, v0, :cond_25

    :try_start_d
    iget v14, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eq v14, v13, :cond_24

    goto :goto_14

    :cond_24
    const/4 v14, 0x0

    goto :goto_15

    :cond_25
    :goto_14
    const/4 v14, 0x1

    :goto_15
    move v7, v14

    .line 631
    :try_start_e
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 632
    iput v13, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 634
    .end local v0    # "surfaceWidth":I
    .end local v13    # "surfaceHeight":I
    :try_start_f
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 635
    nop

    .line 638
    if-eqz v3, :cond_26

    :try_start_10
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mDrawFinished:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_16

    .line 723
    :catchall_2
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    goto/16 :goto_21

    .line 638
    :cond_26
    const/4 v0, 0x0

    :goto_16
    or-int/2addr v12, v0

    .line 640
    const/4 v0, 0x0

    .line 642
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move v14, v9

    .line 643
    .local v14, "surfaceChanged":Z
    :try_start_11
    iget-boolean v15, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v15, :cond_2b

    if-nez v14, :cond_28

    if-nez v3, :cond_27

    if-eqz v8, :cond_27

    goto :goto_17

    .line 669
    :cond_27
    move-object/from16 v21, v11

    goto :goto_19

    .line 644
    :cond_28
    :goto_17
    const/4 v15, 0x0

    :try_start_12
    iput-boolean v15, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 645
    iget-object v15, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 648
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v15

    move-object v0, v15

    .line 649
    array-length v15, v0

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v15, :cond_29

    aget-object v18, v0, v13

    move-object/from16 v19, v18

    .line 650
    .local v19, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v20, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v20, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v21, v11

    move-object/from16 v11, v19

    :try_start_13
    invoke-interface {v11, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 649
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v21, "surfaceInsets":Landroid/graphics/Rect;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    move-object/from16 v11, v21

    goto :goto_18

    .line 663
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_29
    move-object/from16 v20, v0

    move-object/from16 v21, v11

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 664
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 669
    :cond_2a
    move-object/from16 v0, v20

    goto :goto_19

    .line 723
    .end local v14    # "surfaceChanged":Z
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v11

    move/from16 v24, v3

    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    goto/16 :goto_21

    .line 669
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v14    # "surfaceChanged":Z
    :cond_2b
    move-object/from16 v21, v11

    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    :goto_19
    if-eqz v9, :cond_2c

    .line 670
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v11, v13}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    goto :goto_1a

    .line 723
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v14    # "surfaceChanged":Z
    :catchall_4
    move-exception v0

    move/from16 v24, v3

    goto/16 :goto_21

    .line 673
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v14    # "surfaceChanged":Z
    :cond_2c
    :goto_1a
    if-eqz v10, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0x1a

    if-ge v11, v13, :cond_2d

    .line 680
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v13, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v11, v13}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 683
    :cond_2d
    if-eqz v3, :cond_37

    :try_start_14
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->isValid()Z

    move-result v11

    if-eqz v11, :cond_37

    .line 684
    iget-boolean v11, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-nez v11, :cond_31

    if-nez v14, :cond_2e

    if-eqz v8, :cond_31

    .line 685
    :cond_2e
    const/4 v11, 0x1

    :try_start_15
    iput-boolean v11, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 686
    iput-boolean v11, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 689
    if-nez v0, :cond_2f

    .line 690
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v11

    move-object v0, v11

    .line 692
    :cond_2f
    array-length v11, v0

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v11, :cond_30

    aget-object v15, v0, v13

    .line 693
    .local v15, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v22, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v15, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 692
    .end local v15    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v22

    goto :goto_1b

    .line 696
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_30
    move-object/from16 v22, v0

    :cond_31
    if-nez v9, :cond_33

    if-nez v6, :cond_33

    if-nez v10, :cond_33

    if-nez v8, :cond_33

    if-eqz v7, :cond_32

    goto :goto_1c

    .line 708
    :cond_32
    move/from16 v24, v3

    goto :goto_1e

    .line 701
    :cond_33
    :goto_1c
    if-nez v0, :cond_34

    .line 702
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object v0, v11

    .line 704
    :cond_34
    :try_start_16
    array-length v11, v0

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v11, :cond_35

    aget-object v15, v0, v13

    .line 705
    .restart local v15    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v23, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v24, v3

    :try_start_17
    iget v3, v1, Landroid/view/SurfaceView;->mFormat:I

    .end local v3    # "visible":Z
    .local v24, "visible":Z
    invoke-interface {v15, v0, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 704
    .end local v15    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v23

    move/from16 v3, v24

    goto :goto_1d

    .line 708
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "visible":Z
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "visible":Z
    :cond_35
    move-object/from16 v23, v0

    move/from16 v24, v3

    .end local v3    # "visible":Z
    .restart local v24    # "visible":Z
    :goto_1e
    if-eqz v12, :cond_38

    .line 711
    if-nez v0, :cond_36

    .line 712
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    move-object v0, v3

    goto :goto_1f

    .line 723
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v14    # "surfaceChanged":Z
    :catchall_5
    move-exception v0

    goto :goto_21

    .line 715
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v14    # "surfaceChanged":Z
    :cond_36
    :goto_1f
    iget v3, v1, Landroid/view/SurfaceView;->mPendingReportDraws:I

    const/4 v11, 0x1

    add-int/2addr v3, v11

    iput v3, v1, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 716
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 717
    new-instance v3, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v11, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;

    invoke-direct {v11, v1}, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {v3, v11}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 719
    .local v3, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v11, v0}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    .end local v14    # "surfaceChanged":Z
    goto :goto_20

    .line 723
    .end local v24    # "visible":Z
    .local v3, "visible":Z
    :catchall_6
    move-exception v0

    move/from16 v24, v3

    .end local v3    # "visible":Z
    .restart local v24    # "visible":Z
    goto :goto_21

    .end local v24    # "visible":Z
    .restart local v3    # "visible":Z
    :cond_37
    move/from16 v24, v3

    .end local v3    # "visible":Z
    .restart local v24    # "visible":Z
    :cond_38
    :goto_20
    const/4 v3, 0x0

    :try_start_18
    iput-boolean v3, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 724
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v0, :cond_3a

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_3a

    .line 725
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 727
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    .line 728
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    goto :goto_25

    .line 723
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "visible":Z
    .restart local v3    # "visible":Z
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_7
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    .end local v3    # "visible":Z
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "visible":Z
    :goto_21
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 724
    iget-object v3, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v3, :cond_39

    iget-boolean v3, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v3, :cond_39

    .line 725
    iget-object v3, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 727
    iget-object v3, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v3}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    .line 728
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    :cond_39
    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    .line 634
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "visible":Z
    .restart local v3    # "visible":Z
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_8
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    goto :goto_23

    .line 609
    .end local v12    # "redrawNeeded":Z
    .restart local v18    # "redrawNeeded":Z
    :catchall_9
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    .end local v3    # "visible":Z
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "visible":Z
    :goto_22
    :try_start_19
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 634
    :catchall_a
    move-exception v0

    move/from16 v12, v18

    goto :goto_23

    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "visible":Z
    .restart local v3    # "visible":Z
    .restart local v11    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_b
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v21, v11

    move/from16 v12, v18

    .end local v3    # "visible":Z
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v18    # "redrawNeeded":Z
    .restart local v12    # "redrawNeeded":Z
    .restart local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "visible":Z
    :goto_23
    :try_start_1a
    iget-object v3, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    .line 731
    .end local v7    # "realSizeChanged":Z
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "visible":Z
    :catch_1
    move-exception v0

    goto :goto_24

    .end local v12    # "redrawNeeded":Z
    .restart local v18    # "redrawNeeded":Z
    :catch_2
    move-exception v0

    move/from16 v12, v18

    .line 732
    .end local v18    # "redrawNeeded":Z
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v12    # "redrawNeeded":Z
    :goto_24
    const-string v3, "SurfaceView"

    const-string v7, "Exception configuring surface"

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3a
    :goto_25
    nop

    .line 778
    :goto_26
    return-void

    .line 503
    .end local v4    # "myWidth":I
    .end local v5    # "myHeight":I
    .end local v6    # "formatChanged":Z
    .end local v8    # "visibleChanged":Z
    .end local v9    # "creating":Z
    .end local v10    # "sizeChanged":Z
    .end local v12    # "redrawNeeded":Z
    .end local v17    # "windowVisibleChanged":Z
    :cond_3b
    :goto_27
    return-void
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 842
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_0

    .line 843
    return-void

    .line 854
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 855
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p6, :cond_1

    .line 859
    return-void

    .line 867
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 868
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SurfaceView"

    const-string v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public windowStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .line 225
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 226
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 227
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 228
    return-void
.end method
