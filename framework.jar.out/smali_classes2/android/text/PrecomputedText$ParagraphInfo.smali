.class public Landroid/text/PrecomputedText$ParagraphInfo;
.super Ljava/lang/Object;
.source "PrecomputedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/PrecomputedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParagraphInfo"
.end annotation


# instance fields
.field public final measured:Landroid/text/MeasuredParagraph;

.field public final paragraphEnd:I


# direct methods
.method public constructor <init>(ILandroid/text/MeasuredParagraph;)V
    .locals 0
    .param p1, "paraEnd"    # I
    .param p2, "measured"    # Landroid/text/MeasuredParagraph;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 289
    iput-object p2, p0, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    .line 290
    return-void
.end method
