.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AbsoluteSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mDip:Z

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "dip"    # Z

    .line 51
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 52
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 53
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getDip()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 72
    const/16 v0, 0x10

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 118
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 121
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 123
    :goto_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 127
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 130
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 132
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 83
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
