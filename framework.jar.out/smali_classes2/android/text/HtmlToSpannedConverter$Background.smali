.class Landroid/text/HtmlToSpannedConverter$Background;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Background"
.end annotation


# instance fields
.field private mBackgroundColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Background;->mBackgroundColor:I

    .line 1304
    return-void
.end method

.method static synthetic access$1400(Landroid/text/HtmlToSpannedConverter$Background;)I
    .locals 1
    .param p0, "x0"    # Landroid/text/HtmlToSpannedConverter$Background;

    .line 1299
    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Background;->mBackgroundColor:I

    return v0
.end method
