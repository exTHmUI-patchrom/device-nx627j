.class Landroid/media/Cea608CCWidget;
.super Landroid/media/ClosedCaptionWidget;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/Cea608CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCWidget$CCLayout;,
        Landroid/media/Cea608CCWidget$CCLineBox;
    }
.end annotation


# static fields
.field private static final mDummyText:Ljava/lang/String; = "1234567890123456789012345678901234"

.field private static final mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/media/Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 1234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1240
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Rect;
    .locals 1

    .line 1221
    sget-object v0, Landroid/media/Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1244
    new-instance v0, Landroid/media/Cea608CCWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea608CCWidget$CCLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    .line 1258
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method public onDisplayChanged([Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "styledTexts"    # [Landroid/text/SpannableStringBuilder;

    .line 1249
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/media/Cea608CCWidget$CCLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea608CCWidget$CCLayout;->update([Landroid/text/SpannableStringBuilder;)V

    .line 1251
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1254
    :cond_0
    return-void
.end method
