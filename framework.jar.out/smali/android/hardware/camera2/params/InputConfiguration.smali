.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;
.source "InputConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    .line 51
    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    .line 52
    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 98
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 100
    .local v0, "otherInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    if-ne v2, v3, :cond_1

    .line 102
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    if-ne v2, v3, :cond_1

    .line 103
    const/4 v1, 0x1

    return v1

    .line 105
    :cond_1
    return v1
.end method

.method public getFormat()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 61
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 126
    const-string v0, "InputConfiguration(w:%d, h:%d, format:%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
