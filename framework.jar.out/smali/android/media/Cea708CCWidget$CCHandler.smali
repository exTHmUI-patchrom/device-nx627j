.class Landroid/media/Cea708CCWidget$CCHandler;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCHandler"
.end annotation


# static fields
.field private static final CAPTION_ALL_WINDOWS_BITMAP:I = 0xff

.field private static final CAPTION_CLEAR_INTERVAL_MS:J = 0xea60L

.field private static final CAPTION_WINDOWS_MAX:I = 0x8

.field private static final DEBUG:Z = false

.field private static final MSG_CAPTION_CLEAR:I = 0x2

.field private static final MSG_DELAY_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CCHandler"

.field private static final TENTHS_OF_SECOND_IN_MILLIS:I = 0x64


# instance fields
.field private final mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private final mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

.field private mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDelayed:Z

.field private final mPendingCaptionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Cea708CCParser$CaptionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCWidget$CCLayout;)V
    .locals 1
    .param p1, "ccLayout"    # Landroid/media/Cea708CCWidget$CCLayout;

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 1395
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/media/Cea708CCWidget$CCWindowLayout;

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    .line 1402
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 1403
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    .line 1404
    return-void
.end method

.method private clearWindows(I)V
    .locals 2
    .param p1, "windowBitmap"    # I

    .line 1508
    if-nez p1, :cond_0

    .line 1509
    return-void

    .line 1511
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1512
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clear()V

    .line 1513
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 1514
    :cond_1
    return-void
.end method

.method private defineWindow(Landroid/media/Cea708CCParser$CaptionWindow;)V
    .locals 4
    .param p1, "window"    # Landroid/media/Cea708CCParser$CaptionWindow;

    .line 1578
    if-nez p1, :cond_0

    .line 1579
    return-void

    .line 1581
    :cond_0
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    .line 1582
    .local v0, "windowId":I
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 1585
    :cond_1
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v1, v1, v0

    .line 1586
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    if-nez v1, :cond_2

    .line 1587
    new-instance v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v3}, Landroid/media/Cea708CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 1589
    :cond_2
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v1, v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V

    .line 1590
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aput-object v1, v2, v0

    iput-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1591
    return-void

    .line 1583
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_3
    :goto_0
    return-void
.end method

.method private delay(I)V
    .locals 4
    .param p1, "tenthsOfSeconds"    # I

    .line 1595
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1598
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 1599
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    mul-int/lit8 v2, p1, 0x64

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1601
    return-void

    .line 1596
    :cond_1
    :goto_0
    return-void
.end method

.method private delayCancel()V
    .locals 1

    .line 1604
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 1605
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->processPendingBuffer()V

    .line 1606
    return-void
.end method

.method private deleteWindows(I)V
    .locals 5
    .param p1, "windowBitmap"    # I

    .line 1548
    if-nez p1, :cond_0

    .line 1549
    return-void

    .line 1551
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1552
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    .line 1553
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getCaptionWindowId()I

    move-result v3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1554
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 1555
    :cond_1
    return-void
.end method

.method private displayWindows(I)V
    .locals 2
    .param p1, "windowBitmap"    # I

    .line 1517
    if-nez p1, :cond_0

    .line 1518
    return-void

    .line 1520
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1521
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    .line 1522
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 1523
    :cond_1
    return-void
.end method

.method private getWindowsFromBitmap(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "windowBitmap"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/media/Cea708CCWidget$CCWindowLayout;",
            ">;"
        }
    .end annotation

    .line 1495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Cea708CCWidget$CCWindowLayout;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1497
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 1498
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v2, v2, v1

    .line 1499
    .local v2, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    if-eqz v2, :cond_0

    .line 1500
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    .end local v2    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private hideWindows(I)V
    .locals 2
    .param p1, "windowBitmap"    # I

    .line 1526
    if-nez p1, :cond_0

    .line 1527
    return-void

    .line 1529
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1530
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1531
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 1532
    :cond_1
    return-void
.end method

.method private processPendingBuffer()V
    .locals 2

    .line 1609
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Cea708CCParser$CaptionEvent;

    .line 1610
    .local v1, "event":Landroid/media/Cea708CCParser$CaptionEvent;
    invoke-virtual {p0, v1}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 1611
    .end local v1    # "event":Landroid/media/Cea708CCParser$CaptionEvent;
    goto :goto_0

    .line 1612
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1613
    return-void
.end method

.method private sendBufferToCurrentWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/String;

    .line 1623
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->sendBuffer(Ljava/lang/String;)V

    .line 1625
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1626
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1629
    :cond_0
    return-void
.end method

.method private sendControlToCurrentWindow(C)V
    .locals 1
    .param p1, "control"    # C

    .line 1617
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->sendControl(C)V

    .line 1620
    :cond_0
    return-void
.end method

.method private setCurrentWindowLayout(I)V
    .locals 1
    .param p1, "windowId"    # I

    .line 1478
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1481
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v0, v0, p1

    .line 1482
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    if-nez v0, :cond_1

    .line 1483
    return-void

    .line 1488
    :cond_1
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1489
    return-void

    .line 1479
    .end local v0    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_2
    :goto_0
    return-void
.end method

.method private setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .locals 1
    .param p1, "attr"    # Landroid/media/Cea708CCParser$CaptionPenAttr;

    .line 1633
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V

    .line 1636
    :cond_0
    return-void
.end method

.method private setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .locals 1
    .param p1, "color"    # Landroid/media/Cea708CCParser$CaptionPenColor;

    .line 1639
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V

    .line 1642
    :cond_0
    return-void
.end method

.method private setPenLocation(Landroid/media/Cea708CCParser$CaptionPenLocation;)V
    .locals 3
    .param p1, "location"    # Landroid/media/Cea708CCParser$CaptionPenLocation;

    .line 1645
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    iget v1, p1, Landroid/media/Cea708CCParser$CaptionPenLocation;->row:I

    iget v2, p1, Landroid/media/Cea708CCParser$CaptionPenLocation;->column:I

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenLocation(II)V

    .line 1648
    :cond_0
    return-void
.end method

.method private setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .locals 1
    .param p1, "windowAttr"    # Landroid/media/Cea708CCParser$CaptionWindowAttr;

    .line 1572
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V

    .line 1575
    :cond_0
    return-void
.end method

.method private toggleWindows(I)V
    .locals 3
    .param p1, "windowBitmap"    # I

    .line 1535
    if-nez p1, :cond_0

    .line 1536
    return-void

    .line 1538
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1539
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1540
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    goto :goto_1

    .line 1542
    :cond_1
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    .line 1544
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :goto_1
    goto :goto_0

    .line 1545
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1408
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1416
    const/4 v0, 0x0

    return v0

    .line 1413
    :pswitch_0
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->clearWindows(I)V

    .line 1414
    return v1

    .line 1410
    :pswitch_1
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->delayCancel()V

    .line 1411
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/media/Cea708CCParser$CaptionEvent;

    .line 1420
    iget-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    return-void

    .line 1424
    :cond_0
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->type:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1471
    :pswitch_0
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionWindow;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->defineWindow(Landroid/media/Cea708CCParser$CaptionWindow;)V

    goto/16 :goto_0

    .line 1468
    :pswitch_1
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V

    .line 1469
    goto/16 :goto_0

    .line 1465
    :pswitch_2
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenLocation(Landroid/media/Cea708CCParser$CaptionPenLocation;)V

    .line 1466
    goto/16 :goto_0

    .line 1462
    :pswitch_3
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V

    .line 1463
    goto/16 :goto_0

    .line 1459
    :pswitch_4
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenAttr;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V

    .line 1460
    goto/16 :goto_0

    .line 1456
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCHandler;->reset()V

    .line 1457
    goto/16 :goto_0

    .line 1453
    :pswitch_6
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->delayCancel()V

    .line 1454
    goto :goto_0

    .line 1450
    :pswitch_7
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->delay(I)V

    .line 1451
    goto :goto_0

    .line 1447
    :pswitch_8
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->deleteWindows(I)V

    .line 1448
    goto :goto_0

    .line 1444
    :pswitch_9
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->toggleWindows(I)V

    .line 1445
    goto :goto_0

    .line 1441
    :pswitch_a
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->hideWindows(I)V

    .line 1442
    goto :goto_0

    .line 1438
    :pswitch_b
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->displayWindows(I)V

    .line 1439
    goto :goto_0

    .line 1435
    :pswitch_c
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->clearWindows(I)V

    .line 1436
    goto :goto_0

    .line 1432
    :pswitch_d
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setCurrentWindowLayout(I)V

    .line 1433
    goto :goto_0

    .line 1429
    :pswitch_e
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->sendControlToCurrentWindow(C)V

    .line 1430
    goto :goto_0

    .line 1426
    :pswitch_f
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->sendBufferToCurrentWindow(Ljava/lang/String;)V

    .line 1427
    nop

    .line 1474
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .line 1558
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1559
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 1560
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1561
    nop

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1562
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 1563
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    .line 1565
    :cond_0
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aput-object v0, v2, v1

    .line 1561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1567
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCLayout;->setVisibility(I)V

    .line 1568
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1569
    return-void
.end method
