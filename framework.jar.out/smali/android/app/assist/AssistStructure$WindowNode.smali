.class public Landroid/app/assist/AssistStructure$WindowNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowNode"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mHeight:I

.field final mRoot:Landroid/app/assist/AssistStructure$ViewNode;

.field final mTitle:Ljava/lang/CharSequence;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/4 v0, 0x0

    const v1, 0x11111111

    invoke-virtual {p1, v1, v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v1

    .line 530
    .local v1, "in":Landroid/os/Parcel;
    iget v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 535
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 537
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v2, p1, v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 538
    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V
    .locals 5
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "root"    # Landroid/view/ViewRootImpl;
    .param p3, "forAutoFill"    # Z
    .param p4, "flags"    # I

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 498
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 499
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 500
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 501
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 502
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 503
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 504
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 505
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v2}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 507
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 508
    .local v2, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_1

    .line 509
    if-eqz p3, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Landroid/app/assist/AssistStructure$WindowNode;->resolveViewAutofillFlags(Landroid/content/Context;I)I

    move-result v3

    .line 511
    .local v3, "viewFlags":I
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 512
    .end local v3    # "viewFlags":I
    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 516
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAssistBlocked(Z)V

    .line 517
    return-void

    .line 520
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 521
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Landroid/app/assist/AssistStructure$WindowNode;->resolveViewAutofillFlags(Landroid/content/Context;I)I

    move-result v3

    .line 522
    .restart local v3    # "viewFlags":I
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 523
    .end local v3    # "viewFlags":I
    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 526
    :goto_1
    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .line 597
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 582
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 560
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    return v0
.end method

.method public getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    .line 604
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 589
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 568
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 575
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    return v0
.end method

.method resolveViewAutofillFlags(Landroid/content/Context;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillRequestFlags"    # I

    .line 542
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 541
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "tmpMatrix"    # [F

    .line 547
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 552
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    return-void
.end method
