.class final Landroid/text/TextLine$DecorationInfo;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecorationInfo"
.end annotation


# instance fields
.field public end:I

.field public isStrikeThruText:Z

.field public isUnderlineText:Z

.field public start:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 1051
    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->end:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/TextLine$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/text/TextLine$1;

    .line 1045
    invoke-direct {p0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInfo()Landroid/text/TextLine$DecorationInfo;
    .locals 2

    .line 1059
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    invoke-direct {v0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    .line 1060
    .local v0, "copy":Landroid/text/TextLine$DecorationInfo;
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 1061
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 1062
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 1063
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 1064
    return-object v0
.end method

.method public hasDecoration()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
