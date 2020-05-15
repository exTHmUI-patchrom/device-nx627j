.class final Landroid/view/InputEventConsistencyVerifier$KeyState;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEventConsistencyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyState"
.end annotation


# static fields
.field private static mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private static mRecycledListLock:Ljava/lang/Object;


# instance fields
.field public deviceId:I

.field public keyCode:I

.field public next:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field public source:I

.field public unhandled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 768
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    return-void
.end method

.method public static obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 3
    .param p0, "deviceId"    # I
    .param p1, "source"    # I
    .param p2, "keyCode"    # I

    .line 782
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 784
    .local v1, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v1, :cond_0

    .line 785
    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_0

    .line 787
    :cond_0
    new-instance v2, Landroid/view/InputEventConsistencyVerifier$KeyState;

    invoke-direct {v2}, Landroid/view/InputEventConsistencyVerifier$KeyState;-><init>()V

    move-object v1, v2

    .line 789
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 790
    .end local v1    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iput p0, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    .line 791
    iput p1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    .line 792
    iput p2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    .line 793
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 794
    return-object v0

    .line 789
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 2

    .line 798
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 800
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 801
    monitor-exit v0

    .line 802
    return-void

    .line 801
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
