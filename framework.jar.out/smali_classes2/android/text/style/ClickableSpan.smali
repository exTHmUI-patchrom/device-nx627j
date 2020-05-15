.class public abstract Landroid/text/style/ClickableSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClickableSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# static fields
.field private static sIdCounter:I


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 42
    sget v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/text/style/ClickableSpan;->sIdCounter:I

    iput v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    return v0
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 54
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 56
    return-void
.end method
