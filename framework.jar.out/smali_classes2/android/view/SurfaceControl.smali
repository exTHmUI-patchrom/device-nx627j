.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$ApplyDoneListener;,
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;,
        Landroid/view/SurfaceControl$Builder;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_EXT_MAX:I = 0x7

.field public static final BUILT_IN_DISPLAY_ID_EXT_MIN:I = 0x5

.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field public static final WINDOW_TYPE_DONT_SCREENSHOT:I = 0x6bd83

.field private static mApplyDoneListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$ApplyDoneListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mEnableAutoAdjHWFPS:Z

.field private static final mEnableAutoAdjHWFPSLock:Ljava/lang/Object;

.field static sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

.field static sTransactionNestCount:J


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mHeight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSizeLock"
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field mNativeObject:J

.field private final mSizeLock:Ljava/lang/Object;

.field private mWidth:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSizeLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->mEnableAutoAdjHWFPSLock:Ljava/lang/Object;

    .line 181
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 667
    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->mApplyDoneListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 632
    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 633
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 637
    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t read SurfaceControl from parcel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/SurfaceControl$1;

    .line 61
    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    .line 619
    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 620
    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 621
    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 622
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 623
    iget-object v0, p1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 624
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 625
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V
    .locals 16
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "parent"    # Landroid/view/SurfaceControl;
    .param p8, "windowType"    # I
    .param p9, "ownerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    .line 585
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, v0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 171
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    .line 586
    if-eqz p1, :cond_4

    .line 589
    if-eqz v11, :cond_3

    .line 593
    and-int/lit8 v1, p6, 0x4

    if-nez v1, :cond_0

    .line 594
    const-string v1, "SurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    :cond_0
    iput-object v11, v0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 603
    move/from16 v13, p3

    iput v13, v0, Landroid/view/SurfaceControl;->mWidth:I

    .line 604
    move/from16 v10, p4

    iput v10, v0, Landroid/view/SurfaceControl;->mHeight:I

    .line 605
    nop

    .line 606
    const-wide/16 v14, 0x0

    if-eqz v12, :cond_1

    iget-wide v1, v12, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 605
    move-wide v7, v1

    goto :goto_0

    .line 606
    :cond_1
    nop

    .line 605
    move-wide v7, v14

    :goto_0
    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v13

    move v4, v10

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJII)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 607
    iget-wide v1, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_2

    .line 612
    iget-object v1, v0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 613
    return-void

    .line 608
    :cond_2
    new-instance v1, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v1, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_3
    move/from16 v13, p3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_4
    move/from16 v13, p3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "session must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;IILandroid/view/SurfaceControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/SurfaceSession;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/view/SurfaceControl;
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # Landroid/view/SurfaceControl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    invoke-direct/range {p0 .. p9}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;II)V

    return-void
.end method

.method static synthetic access$1000(JJFF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # F
    .param p5, "x3"    # F

    .line 61
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static synthetic access$1100(JJII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .line 61
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetSize(JJII)V

    return-void
.end method

.method static synthetic access$1200(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static synthetic access$1300(JJLandroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;
    .param p5, "x3"    # I

    .line 61
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJLandroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$1400(JJLandroid/graphics/Region;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/graphics/Region;

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$1500(JJF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # F

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static synthetic access$1600(JJFFFF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # F
    .param p5, "x3"    # F
    .param p6, "x4"    # F
    .param p7, "x5"    # F

    .line 61
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static synthetic access$1700(JJIIII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I

    .line 61
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static synthetic access$1800(JJIIII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I

    .line 61
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JJIIII)V

    return-void
.end method

.method static synthetic access$1900(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .line 61
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(JJLandroid/os/IBinder;J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;
    .param p5, "x3"    # J

    .line 61
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JJLandroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$2100(JJJJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # J

    .line 61
    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntilSurface(JJJJ)V

    return-void
.end method

.method static synthetic access$2200(JJLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeReparentChildren(JJLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2300(JJLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/os/IBinder;

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeReparent(JJLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2400(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSeverChildren(JJ)V

    return-void
.end method

.method static synthetic access$2500(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JJI)V

    return-void
.end method

.method static synthetic access$2600(JJ[F)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # [F

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static synthetic access$2700(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetGeometryAppliesWithResize(JJ)V

    return-void
.end method

.method static synthetic access$2800(Landroid/view/SurfaceControl;)Ldalvik/system/CloseGuard;
    .locals 1
    .param p0, "x0"    # Landroid/view/SurfaceControl;

    .line 61
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    return-object v0
.end method

.method static synthetic access$2900(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeDestroy(JJ)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .line 61
    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000(JLandroid/os/IBinder;J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # J

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$3100(JLandroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # I

    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3200(JLandroid/os/IBinder;IIIIIIIII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # I

    .line 61
    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static synthetic access$3300(JLandroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$3400(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 61
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static synthetic access$3500(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 61
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeup(J)V

    return-void
.end method

.method static synthetic access$3600(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static synthetic access$400(JZ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 61
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/SurfaceControl;

    .line 61
    iget-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Landroid/view/SurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceControl;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    return p1
.end method

.method static synthetic access$702(Landroid/view/SurfaceControl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceControl;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Landroid/view/SurfaceControl;->mHeight:I

    return p1
.end method

.method static synthetic access$800(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/SurfaceControl;

    .line 61
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static synthetic access$900(JJII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .line 61
    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method public static addApplyDoneListener(Landroid/view/SurfaceControl$ApplyDoneListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/view/SurfaceControl$ApplyDoneListener;

    .line 1763
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1764
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->mApplyDoneListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    monitor-exit v0

    .line 1766
    return-void

    .line 1765
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;
    .locals 1
    .param p0, "layerHandleToken"    # Landroid/os/IBinder;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F

    .line 1379
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeCaptureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method private checkNotReleased()V
    .locals 4

    .line 728
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 730
    return-void

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearAnimationFrameStats()Z
    .locals 1

    .line 900
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method private static clearApplyDoneListener()V
    .locals 2

    .line 1769
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1770
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->mApplyDoneListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1771
    monitor-exit v0

    .line 1772
    return-void

    .line 1771
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static closeTransaction()V
    .locals 1

    .line 779
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->closeTransaction(Z)V

    .line 780
    return-void
.end method

.method private static closeTransaction(Z)V
    .locals 7
    .param p0, "sync"    # Z

    .line 750
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 751
    :try_start_0
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 752
    const-string v1, "SurfaceControl"

    const-string v2, "Call to SurfaceControl.closeTransaction without matching openTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    :cond_0
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 754
    monitor-exit v0

    return-void

    .line 756
    :cond_1
    :goto_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 758
    invoke-static {}, Landroid/view/SurfaceControl;->notifyApplyDone()V

    .line 759
    invoke-static {}, Landroid/view/SurfaceControl;->clearApplyDoneListener()V

    .line 761
    monitor-exit v0

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static closeTransactionSync()V
    .locals 1

    .line 783
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/SurfaceControl;->closeTransaction(Z)V

    .line 784
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .line 1169
    if-eqz p0, :cond_0

    .line 1172
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 1170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1176
    if-eqz p0, :cond_0

    .line 1179
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 1180
    return-void

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveColorMode(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1122
    if-eqz p0, :cond_0

    .line 1125
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 1123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1085
    if-eqz p0, :cond_0

    .line 1088
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 1086
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 1
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .line 904
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .param p0, "builtInDisplayId"    # I

    .line 1183
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayColorModes(Landroid/os/IBinder;)[I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1115
    if-eqz p0, :cond_0

    .line 1118
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v0

    return-object v0

    .line 1116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1078
    if-eqz p0, :cond_0

    .line 1081
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v0

    return-object v0

    .line 1079
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 1162
    if-eqz p0, :cond_0

    .line 1165
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    return-object v0

    .line 1163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAutoAdjHWFPS()Z
    .locals 2

    .line 1109
    sget-object v0, Landroid/view/SurfaceControl;->mEnableAutoAdjHWFPSLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_0
    sget-boolean v1, Landroid/view/SurfaceControl;->mEnableAutoAdjHWFPS:Z

    monitor-exit v0

    return v1

    .line 1111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 773
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 774
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native nativeApplyTransaction(JZ)V
.end method

.method private static native nativeCaptureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeCreateTransaction()J
.end method

.method private static native nativeDeferTransactionUntil(JJLandroid/os/IBinder;J)V
.end method

.method private static native nativeDeferTransactionUntilSurface(JJJJ)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroy(JJ)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetActiveColorMode(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayColorModes(Landroid/os/IBinder;)[I
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeGetHandle(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
.end method

.method private static native nativeGetNativeTransactionFinalizer()J
.end method

.method private static native nativeGetTransformToDisplayInverse(J)Z
.end method

.method private static native nativeMergeTransaction(JJ)V
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeReparent(JJLandroid/os/IBinder;)V
.end method

.method private static native nativeReparentChildren(JJLandroid/os/IBinder;)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeScreenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/GraphicBuffer;
.end method

.method private static native nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetActiveConfigg(I)Z
.end method

.method private static native nativeSetAlpha(JJF)V
.end method

.method private static native nativeSetAnimationTransaction(J)V
.end method

.method private static native nativeSetAutoAdjHWFPS(I)Z
.end method

.method private static native nativeSetColor(JJ[F)V
.end method

.method private static native nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeSetEarlyWakeup(J)V
.end method

.method private static native nativeSetFinalCrop(JJIIII)V
.end method

.method private static native nativeSetFlags(JJII)V
.end method

.method private static native nativeSetGeometryAppliesWithResize(JJ)V
.end method

.method private static native nativeSetLayer(JJI)V
.end method

.method private static native nativeSetLayerStack(JJI)V
.end method

.method private static native nativeSetMatrix(JJFFFF)V
.end method

.method private static native nativeSetOverrideScalingMode(JJI)V
.end method

.method private static native nativeSetPosition(JJFF)V
.end method

.method private static native nativeSetRelativeLayer(JJLandroid/os/IBinder;I)V
.end method

.method private static native nativeSetSize(JJII)V
.end method

.method private static native nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JJIIII)V
.end method

.method private static native nativeSeverChildren(JJ)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static notifyApplyDone()V
    .locals 4

    .line 1775
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1776
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->mApplyDoneListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1777
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1778
    sget-object v3, Landroid/view/SurfaceControl;->mApplyDoneListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$ApplyDoneListener;

    invoke-interface {v3}, Landroid/view/SurfaceControl$ApplyDoneListener;->onApplyDone()V

    .line 1777
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1780
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1781
    return-void

    .line 1780
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static openTransaction()V
    .locals 6

    .line 739
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 740
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_0

    .line 741
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sput-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 743
    :cond_0
    const-class v1, Landroid/view/SurfaceControl;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 744
    :try_start_1
    sget-wide v2, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 745
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 747
    return-void

    .line 745
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 746
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static rotateCropForSF(Landroid/graphics/Rect;I)V
    .locals 2
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "rot"    # I

    .line 1356
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1357
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 1358
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 1359
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 1360
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 1361
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 1362
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 1364
    .end local v0    # "tmp":I
    :cond_1
    return-void
.end method

.method public static screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .line 1313
    const-string v0, "CTA"

    const-string/jumbo v1, "screenshot@screenshot@\u4f7f\u7528\u540e\u53f0\u622a\u5c4f"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1316
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    if-ne p3, v1, :cond_2

    .line 1317
    :cond_0
    if-ne p3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move p3, v1

    .line 1320
    :cond_2
    invoke-static {p0, p3}, Landroid/view/SurfaceControl;->rotateCropForSF(Landroid/graphics/Rect;I)V

    .line 1321
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v9, p3

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .line 1270
    const-string v0, "CTA"

    const-string/jumbo v1, "screenshot@screenshot@\u4f7f\u7528\u540e\u53f0\u622a\u5c4f"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1274
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    .line 1232
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1233
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1222
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1223
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z

    .line 1206
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1208
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .locals 2
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I
    .param p7, "allLayers"    # Z
    .param p8, "useIdentityTransform"    # Z

    .line 1344
    const-string v0, "CTA"

    const-string/jumbo v1, "screenshot@screenshot@\u4f7f\u7528\u540e\u53f0\u622a\u5c4f"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    if-eqz p0, :cond_1

    .line 1348
    if-eqz p1, :cond_0

    .line 1351
    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 1353
    return-void

    .line 1349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static screenshotForAOD(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I
    .param p4, "builtInDisplayId"    # I

    .line 1331
    invoke-static {p4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    .line 1332
    .local v9, "displayToken":Landroid/os/IBinder;
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    if-ne p3, v0, :cond_2

    .line 1333
    :cond_0
    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move p3, v0

    .line 1336
    :cond_2
    invoke-static {p0, p3}, Landroid/view/SurfaceControl;->rotateCropForSF(Landroid/graphics/Rect;I)V

    .line 1337
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .line 1285
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1287
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Landroid/view/SurfaceControl;->nativeScreenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "colorMode"    # I

    .line 1129
    if-eqz p0, :cond_0

    .line 1132
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 1130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "id"    # I

    .line 1092
    if-eqz p0, :cond_0

    .line 1095
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setActiveConfigg(I)Z
    .locals 1
    .param p0, "enable"    # I

    .line 1099
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetActiveConfigg(I)Z

    move-result v0

    return v0
.end method

.method public static setAnimationTransaction()V
    .locals 2

    .line 828
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 829
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 830
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAutoAdjHWFPS(Z)Z
    .locals 2
    .param p0, "enable"    # Z

    .line 1103
    sget-object v0, Landroid/view/SurfaceControl;->mEnableAutoAdjHWFPSLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    :try_start_0
    sput-boolean p0, Landroid/view/SurfaceControl;->mEnableAutoAdjHWFPS:Z

    .line 1105
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetAutoAdjHWFPS(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .line 1144
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1145
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 1146
    monitor-exit v0

    .line 1147
    return-void

    .line 1146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .line 1071
    if-eqz p0, :cond_0

    .line 1074
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1075
    return-void

    .line 1072
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .line 1137
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1138
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1140
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1156
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1157
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 1158
    monitor-exit v0

    .line 1159
    return-void

    .line 1158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1150
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1151
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 1152
    monitor-exit v0

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .locals 2

    .line 890
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 891
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .line 787
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 788
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 789
    monitor-exit v0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 2
    .param p1, "barrier"    # Landroid/view/Surface;
    .param p2, "frame"    # J

    .line 793
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 794
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    .line 795
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 4

    .line 711
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 712
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDestroy(J)V

    .line 713
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 715
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 716
    return-void
.end method

.method public detachChildren()V
    .locals 2

    .line 811
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 812
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->detachChildren(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 813
    monitor-exit v0

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 4

    .line 722
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 723
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 725
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 681
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 684
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 685
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 689
    nop

    .line 690
    return-void

    .line 688
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 895
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 896
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public getHandle()Landroid/os/IBinder;
    .locals 2

    .line 824
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetHandle(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 988
    iget-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_0
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    .line 990
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidth()I
    .locals 2

    .line 982
    iget-object v0, p0, Landroid/view/SurfaceControl;->mSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_0
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    .line 984
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hide()V
    .locals 2

    .line 869
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 870
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 871
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 872
    monitor-exit v0

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .line 698
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 699
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    .line 700
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 702
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 703
    return-void
.end method

.method public reparent(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "newParentHandle"    # Landroid/os/IBinder;

    .line 805
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 806
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 807
    monitor-exit v0

    .line 808
    return-void

    .line 807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reparentChildren(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "newParentHandle"    # Landroid/os/IBinder;

    .line 799
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 800
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

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

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 908
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 909
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 910
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 911
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setColor([F)V
    .locals 2
    .param p1, "color"    # [F

    .line 915
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 916
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 917
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 918
    monitor-exit v0

    .line 919
    return-void

    .line 918
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 952
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 953
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 954
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFinalCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 955
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGeometryAppliesWithResize()V
    .locals 2

    .line 855
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 856
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 857
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->setGeometryAppliesWithResize(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 858
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .line 834
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 835
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 836
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 837
    monitor-exit v0

    .line 838
    return-void

    .line 837
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayerStack(I)V
    .locals 2
    .param p1, "layerStack"    # I

    .line 959
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 960
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 961
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMatrix(FFFF)V
    .locals 7
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dtdy"    # F
    .param p4, "dsdy"    # F

    .line 922
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 923
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 924
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 925
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMatrix(Landroid/graphics/Matrix;[F)V
    .locals 7
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "float9"    # [F

    .line 935
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 936
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 937
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 938
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    aget v3, p2, v2

    const/4 v2, 0x3

    aget v4, p2, v2

    const/4 v2, 0x1

    aget v5, p2, v2

    const/4 v2, 0x4

    aget v6, p2, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 940
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 941
    monitor-exit v0

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOpaque(Z)V
    .locals 2
    .param p1, "isOpaque"    # Z

    .line 966
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 968
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 969
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 970
    monitor-exit v0

    .line 971
    return-void

    .line 970
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOverrideScalingMode(I)V
    .locals 2
    .param p1, "scalingMode"    # I

    .line 817
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 818
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 819
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 820
    monitor-exit v0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 848
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 849
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 850
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 851
    monitor-exit v0

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;I)V
    .locals 2
    .param p1, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p2, "zorder"    # I

    .line 841
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 842
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 843
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 844
    monitor-exit v0

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .line 974
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 976
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 977
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 978
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 862
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 863
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 864
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 865
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 883
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 884
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 885
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;

    .line 886
    monitor-exit v0

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 945
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 946
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 947
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 948
    monitor-exit v0

    .line 949
    return-void

    .line 948
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public show()V
    .locals 2

    .line 876
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 877
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 878
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 879
    monitor-exit v0

    .line 880
    return-void

    .line 879
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skipSync()V
    .locals 3

    .line 1749
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1750
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1751
    :try_start_0
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->skipSync(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1752
    monitor-exit v0

    .line 1753
    return-void

    .line 1752
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 646
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 650
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 661
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 662
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 663
    iget-object v2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 664
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 665
    return-void
.end method
