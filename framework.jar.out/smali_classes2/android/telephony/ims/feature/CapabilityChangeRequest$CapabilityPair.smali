.class public Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
.super Ljava/lang/Object;
.source "CapabilityChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/CapabilityChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityPair"
.end annotation


# instance fields
.field private final mCapability:I

.field private final radioTech:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    .line 54
    iput p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 65
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 67
    .local v1, "that":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v4

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCapability()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    return v0
.end method

.method public getRadioTech()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    .line 77
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    add-int/2addr v1, v2

    .line 78
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
