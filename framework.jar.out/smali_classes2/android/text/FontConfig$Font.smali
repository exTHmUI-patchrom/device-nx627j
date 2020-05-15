.class public final Landroid/text/FontConfig$Font;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# instance fields
.field private final mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final mFallbackFor:Ljava/lang/String;

.field private final mFontName:Ljava/lang/String;

.field private mIsCustomFontPath:Z

.field private final mIsItalic:Z

.field private final mTtcIndex:I

.field private mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IZLjava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "isItalic"    # Z
    .param p6, "fallbackFor"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/FontConfig$Font;->mIsCustomFontPath:Z

    .line 77
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    .line 78
    iput p2, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    .line 79
    iput-object p3, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 80
    iput p4, p0, Landroid/text/FontConfig$Font;->mWeight:I

    .line 81
    iput-boolean p5, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    .line 82
    iput-object p6, p0, Landroid/text/FontConfig$Font;->mFallbackFor:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0
.end method

.method public getFallbackFor()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFallbackFor:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCustomFont()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroid/text/FontConfig$Font;->mIsCustomFontPath:Z

    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 119
    iget v0, p0, Landroid/text/FontConfig$Font;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    return v0
.end method

.method public setIsCustomFont(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 90
    iput-boolean p1, p0, Landroid/text/FontConfig$Font;->mIsCustomFontPath:Z

    .line 91
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 140
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    .line 141
    return-void
.end method
