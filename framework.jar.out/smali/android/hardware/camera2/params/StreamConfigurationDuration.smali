.class public final Landroid/hardware/camera2/params/StreamConfigurationDuration;
.super Ljava/lang/Object;
.source "StreamConfigurationDuration.java"


# instance fields
.field private final mDurationNs:J

.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "durationNs"    # J

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    .line 58
    const-string/jumbo v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    .line 59
    const-string v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    .line 60
    const-string v0, "durationNs must be non-negative"

    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 123
    return v0

    .line 125
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 126
    return v1

    .line 128
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    if-eqz v2, :cond_3

    .line 129
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 130
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 135
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_3
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 109
    iget-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-wide v0
.end method

.method public final getFormat()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    .line 100
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 82
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    long-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
