.class public Landroid/view/textclassifier/TextLinks$TextLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLinkSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$TextLinkSpan$InvocationMethod;
    }
.end annotation


# static fields
.field public static final INVOCATION_METHOD_KEYBOARD:I = 0x1

.field public static final INVOCATION_METHOD_TOUCH:I = 0x0

.field public static final INVOCATION_METHOD_UNSPECIFIED:I = -0x1


# instance fields
.field private final mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/TextLinks$TextLink;)V
    .locals 0
    .param p1, "textLink"    # Landroid/view/textclassifier/TextLinks$TextLink;

    .line 524
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 525
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    .line 526
    return-void
.end method


# virtual methods
.method public final getTextLink()Landroid/view/textclassifier/TextLinks$TextLink;
    .locals 1

    .line 560
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 567
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    iget-object v0, v0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    iget-object v0, v0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .line 530
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    .line 531
    return-void
.end method

.method public final onClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;
    .param p2, "invocationMethod"    # I

    .line 535
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 536
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 537
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 538
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    if-eqz p2, :cond_0

    .line 546
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    .line 547
    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->requestActionMode(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    .line 542
    goto :goto_0

    .line 550
    :cond_1
    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    iget-object v2, v2, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    iget-object v2, v2, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v2, v0}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    .line 557
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    :goto_0
    return-void
.end method
