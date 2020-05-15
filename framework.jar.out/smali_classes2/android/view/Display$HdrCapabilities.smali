.class public final Landroid/view/Display$HdrCapabilities;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdrCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities$HdrType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final HDR_TYPE_HDR10:I = 0x2

.field public static final HDR_TYPE_HLG:I = 0x3

.field public static final INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private mMaxAverageLuminance:F

.field private mMaxLuminance:F

.field private mMinLuminance:F

.field private mSupportedHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1422
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1348
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1349
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1350
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1356
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1348
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1349
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1350
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1435
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 1436
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/Display$1;

    .line 1320
    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([IFFF)V
    .locals 1
    .param p1, "supportedHdrTypes"    # [I
    .param p2, "maxLuminance"    # F
    .param p3, "maxAverageLuminance"    # F
    .param p4, "minLuminance"    # F

    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1348
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1349
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1350
    iput v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1363
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1364
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1365
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1366
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1367
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1465
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1397
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1398
    return v0

    .line 1401
    :cond_0
    instance-of v1, p1, Landroid/view/Display$HdrCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1402
    return v2

    .line 1404
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/Display$HdrCapabilities;

    .line 1406
    .local v1, "that":Landroid/view/Display$HdrCapabilities;
    iget-object v3, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v4, v1, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    iget v4, v1, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDesiredMaxAverageLuminance()F
    .locals 1

    .line 1386
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return v0
.end method

.method public getDesiredMaxLuminance()F
    .locals 1

    .line 1380
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return v0
.end method

.method public getDesiredMinLuminance()F
    .locals 1

    .line 1392
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return v0
.end method

.method public getSupportedHdrTypes()[I
    .locals 1

    .line 1374
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1414
    const/16 v0, 0x17

    .line 1415
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1416
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1417
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 1418
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 1419
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1443
    .local v0, "types":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1445
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 1444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1447
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1450
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1454
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1456
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1458
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1459
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1460
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1461
    return-void
.end method
