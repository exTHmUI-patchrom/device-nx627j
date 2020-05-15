.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorFilter$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private mNativeInstance:J


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 26
    invoke-static {}, Landroid/graphics/ColorFilter;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeGetFinalizer()J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method discardNativeInstance()V
    .locals 4

    .line 51
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 54
    iput-wide v2, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 56
    :cond_0
    return-void
.end method

.method public getNativeInstance()J
    .locals 4

    .line 60
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->createNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 63
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Landroid/graphics/ColorFilter$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 71
    :cond_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    return-wide v0
.end method
