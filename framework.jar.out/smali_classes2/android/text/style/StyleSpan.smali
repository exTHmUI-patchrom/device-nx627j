.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "style"    # I

    .line 56
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 57
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 67
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;I)V
    .locals 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 117
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .local v1, "oldStyle":I
    goto :goto_0

    .line 120
    .end local v1    # "oldStyle":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 123
    .restart local v1    # "oldStyle":I
    :goto_0
    or-int v2, v1, p1

    .line 126
    .local v2, "want":I
    if-nez v0, :cond_1

    .line 127
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, "tf":Landroid/graphics/Typeface;
    goto :goto_1

    .line 129
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_1
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 132
    .restart local v3    # "tf":Landroid/graphics/Typeface;
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v2

    .line 134
    .local v4, "fake":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    .line 135
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 138
    :cond_2
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    .line 139
    const/high16 v5, -0x41800000    # -0.25f

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 142
    :cond_3
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 143
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 77
    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 105
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    .line 106
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 110
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 88
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method
