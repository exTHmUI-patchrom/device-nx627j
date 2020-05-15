.class public Landroid/text/style/BackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "BackgroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .line 49
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 50
    iput p1, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 93
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 68
    const/16 v0, 0xc

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 101
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BackgroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 79
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
