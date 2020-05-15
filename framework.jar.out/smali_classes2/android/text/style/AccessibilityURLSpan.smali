.class public Landroid/text/style/AccessibilityURLSpan;
.super Landroid/text/style/URLSpan;
.source "AccessibilityURLSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field final mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 43
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/text/style/URLSpan;)V
    .locals 2
    .param p1, "spanToReplace"    # Landroid/text/style/URLSpan;

    .line 36
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    .line 38
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    .line 39
    return-void
.end method


# virtual methods
.method public copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "accessibilityNodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 77
    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 78
    return-void
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/text/style/AccessibilityURLSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .line 53
    const/16 v0, 0x1a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "unused"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;->onClick(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityURLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 59
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 64
    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    return-void
.end method
