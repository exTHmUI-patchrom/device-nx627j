.class Landroid/widget/Magnifier$SurfaceInfo;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceInfo"
.end annotation


# static fields
.field public static final NULL:Landroid/widget/Magnifier$SurfaceInfo;


# instance fields
.field private mHeight:I

.field private mIsMainWindowSurface:Z

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 402
    new-instance v0, Landroid/widget/Magnifier$SurfaceInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1, v1}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/Surface;IIZ)V

    sput-object v0, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    return-void
.end method

.method constructor <init>(Landroid/view/Surface;IIZ)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isMainWindowSurface"    # Z

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;

    .line 412
    iput p2, p0, Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I

    .line 413
    iput p3, p0, Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I

    .line 414
    iput-boolean p4, p0, Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z

    .line 415
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$SurfaceInfo;

    .line 401
    iget-object v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/Magnifier$SurfaceInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$SurfaceInfo;

    .line 401
    iget v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/Magnifier$SurfaceInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$SurfaceInfo;

    .line 401
    iget v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Magnifier$SurfaceInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Magnifier$SurfaceInfo;

    .line 401
    iget-boolean v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z

    return v0
.end method
