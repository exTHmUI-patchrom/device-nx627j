.class public Landroid/text/style/SubscriptSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SubscriptSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/text/style/SubscriptSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 62
    const/16 v0, 0xf

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 82
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 83
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 87
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SubscriptSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 73
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    return-void
.end method
