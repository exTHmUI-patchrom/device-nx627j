.class final Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;
.super Ljava/lang/Object;
.source "GenerateLinksLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/GenerateLinksLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkifyStats"
.end annotation


# instance fields
.field mNumLinks:I

.field mNumLinksTextLength:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/textclassifier/GenerateLinksLogger$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/textclassifier/GenerateLinksLogger$1;

    .line 152
    invoke-direct {p0}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;-><init>()V

    return-void
.end method


# virtual methods
.method countLink(Landroid/view/textclassifier/TextLinks$TextLink;)V
    .locals 3
    .param p1, "link"    # Landroid/view/textclassifier/TextLinks$TextLink;

    .line 157
    iget v0, p0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinks:I

    .line 158
    iget v0, p0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinksTextLength:I

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinksTextLength:I

    .line 159
    return-void
.end method
