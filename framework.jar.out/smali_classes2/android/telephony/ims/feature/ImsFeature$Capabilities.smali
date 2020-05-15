.class public Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# instance fields
.field protected mCapabilities:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 271
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 274
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 275
    return-void
.end method


# virtual methods
.method public addCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .line 282
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 283
    return-void
.end method

.method public copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2

    .line 304
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 320
    :cond_0
    instance-of v1, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 322
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 324
    .local v1, "that":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    iget v3, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    iget v4, v1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMask()I
    .locals 1

    .line 311
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 332
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return v0
.end method

.method public isCapable(I)Z
    .locals 1
    .param p1, "capabilities"    # I

    .line 297
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .line 290
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    .line 291
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
