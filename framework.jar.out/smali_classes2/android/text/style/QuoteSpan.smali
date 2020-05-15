.class public Landroid/text/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final STANDARD_COLOR:I = -0xffff01

.field public static final STANDARD_GAP_WIDTH_PX:I = 0x2

.field public static final STANDARD_STRIPE_WIDTH_PX:I = 0x2


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mStripeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    const/4 v0, 0x2

    const v1, -0xffff01

    invoke-direct {p0, v1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .line 97
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    .line 98
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "stripeWidth"    # I
    .param p3, "gapWidth"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 111
    iput p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    .line 112
    iput p3, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    move-object v0, p0

    move-object v7, p2

    move/from16 v8, p3

    .line 195
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    .line 196
    .local v9, "style":Landroid/graphics/Paint$Style;
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    .line 198
    .local v10, "color":I
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget v1, v0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    int-to-float v2, v8

    move/from16 v11, p5

    int-to-float v3, v11

    iget v1, v0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    mul-int v1, v1, p4

    add-int/2addr v1, v8

    int-to-float v4, v1

    move/from16 v12, p7

    int-to-float v5, v12

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    return v0
.end method

.method public getGapWidth()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return v0
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .line 187
    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iget v1, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 134
    const/16 v0, 0x9

    return v0
.end method

.method public getStripeWidth()I
    .locals 1

    .line 173
    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    invoke-virtual {p0, p1, p2}, Landroid/text/style/QuoteSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 145
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
