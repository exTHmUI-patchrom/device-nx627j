.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFamilyName:Ljava/lang/String;

.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I
    .param p3, "colorList"    # I

    .line 58
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 61
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 67
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 69
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 72
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 76
    :cond_0
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 78
    :goto_0
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    .line 79
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "family":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 83
    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 87
    .local v2, "tf":I
    packed-switch v2, :pswitch_data_0

    .line 101
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 101
    .end local v2    # "tf":I
    .end local v3    # "family":Ljava/lang/String;
    goto :goto_1

    .line 97
    .restart local v2    # "tf":I
    .restart local v3    # "family":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, "monospace"

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 98
    goto :goto_1

    .line 93
    :pswitch_1
    const-string/jumbo v4, "serif"

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 94
    goto :goto_1

    .line 89
    :pswitch_2
    const-string/jumbo v4, "sans"

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 90
    nop

    .line 107
    .end local v2    # "tf":I
    .end local v3    # "family":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    if-ltz p3, :cond_3

    .line 110
    const v2, 0x1030005

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    :cond_3
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 118
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 141
    :cond_0
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 143
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 146
    :cond_1
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 148
    :goto_1
    invoke-static {p1}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "linkColor"    # Landroid/content/res/ColorStateList;

    .line 125
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 127
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 128
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 129
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 130
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 157
    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 217
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 230
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 232
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 239
    :cond_1
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "style":I
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 247
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 248
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .local v1, "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_3

    .line 249
    .end local v1    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_0
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 250
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 252
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_3

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 256
    :cond_3
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v0, v2

    .line 258
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 259
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .end local v1    # "tf":Landroid/graphics/Typeface;
    .local v2, "styledTypeface":Landroid/graphics/Typeface;
    :goto_1
    goto :goto_2

    .line 260
    .end local v2    # "styledTypeface":Landroid/graphics/Typeface;
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    :cond_4
    if-nez v1, :cond_5

    .line 261
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_1

    .line 263
    :cond_5
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .end local v1    # "tf":Landroid/graphics/Typeface;
    .restart local v2    # "styledTypeface":Landroid/graphics/Typeface;
    :goto_2
    move-object v1, v2

    .line 265
    .end local v2    # "styledTypeface":Landroid/graphics/Typeface;
    .local v1, "styledTypeface":Landroid/graphics/Typeface;
    nop

    .line 266
    :goto_3
    nop

    .line 269
    if-eqz v1, :cond_8

    .line 270
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    not-int v2, v2

    and-int/2addr v2, v0

    .line 272
    .local v2, "fake":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_6

    .line 273
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 276
    :cond_6
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_7

    .line 277
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 280
    :cond_7
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 283
    .end local v2    # "fake":I
    :cond_8
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v2, :cond_9

    .line 284
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 286
    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 166
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :goto_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    :goto_1
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    .line 186
    return-void
.end method
