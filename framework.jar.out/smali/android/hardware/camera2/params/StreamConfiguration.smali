.class public final Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mInput:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "input"    # Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    .line 63
    const-string/jumbo v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    .line 64
    const-string v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 65
    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 144
    return v0

    .line 146
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 147
    return v1

    .line 149
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_3

    .line 150
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfiguration;

    .line 151
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 156
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_3
    return v0
.end method

.method public final getFormat()I
    .locals 1

    .line 77
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 96
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    .line 105
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 87
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public isInput()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return v0
.end method

.method public isOutput()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
