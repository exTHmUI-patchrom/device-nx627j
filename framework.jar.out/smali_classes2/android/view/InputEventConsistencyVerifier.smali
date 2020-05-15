.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final IS_ENG_BUILD:Z

.field private static final RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private mButtonsPressed:I

.field private final mCaller:Ljava/lang/Object;

.field private mCurrentEvent:Landroid/view/InputEvent;

.field private mCurrentEventType:Ljava/lang/String;

.field private final mFlags:I

.field private mHoverEntered:Z

.field private mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private mLastEventSeq:I

.field private mLastEventType:Ljava/lang/String;

.field private mLastNestingLevel:I

.field private final mLogTag:Ljava/lang/String;

.field private mMostRecentEventIndex:I

.field private mRecentEvents:[Landroid/view/InputEvent;

.field private mRecentEventsUnhandled:[Z

.field private mTouchEventStreamDeviceId:I

.field private mTouchEventStreamIsTainted:Z

.field private mTouchEventStreamPointers:I

.field private mTouchEventStreamSource:I

.field private mTouchEventStreamUnhandled:Z

.field private mTrackballDown:Z

.field private mTrackballUnhandled:Z

.field private mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .param p3, "logTag"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 129
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    .line 130
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    .line 131
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const-string v0, "InputEventConsistencyVerifier"

    :goto_0
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private addKeyState(III)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I

    .line 762
    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v0

    .line 763
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 764
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 765
    return-void
.end method

.method private static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .locals 2
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "index"    # I
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "unhandled"    # Z

    .line 719
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": sent at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 720
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    if-eqz p3, :cond_0

    .line 722
    const-string v0, "(unhandled) "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    return-void
.end method

.method private ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 630
    .local v0, "actionButton":I
    if-nez v0, :cond_0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No action button set. Action button should always be non-zero for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 635
    :cond_0
    return-void
.end method

.method private ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 639
    .local v0, "historySize":I
    if-eqz v0, :cond_0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but it should always be 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 643
    :cond_0
    return-void
.end method

.method private ensureMetaStateIsNormalized(I)V
    .locals 5
    .param p1, "metaState"    # I

    .line 613
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    .line 614
    .local v0, "normalizedMetaState":I
    if-eq v0, p1, :cond_0

    .line 615
    const-string v1, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 615
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 618
    :cond_0
    return-void
.end method

.method private ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 622
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but it should always be 1 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 626
    :cond_0
    return-void
.end method

.method private findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I
    .param p4, "remove"    # Z

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 742
    .local v1, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 743
    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    if-ne v3, p1, :cond_2

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    if-ne v3, p2, :cond_2

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    if-ne v3, p3, :cond_2

    .line 745
    if-eqz p4, :cond_1

    .line 746
    if-eqz v0, :cond_0

    .line 747
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_1

    .line 749
    :cond_0
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 751
    :goto_1
    iput-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 753
    :cond_1
    return-object v1

    .line 755
    :cond_2
    move-object v0, v1

    .line 756
    iget-object v1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_0

    .line 758
    :cond_3
    return-object v2
.end method

.method private finishEvent()V
    .locals 9

    .line 669
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->isTainted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-static {v0, v2, v4, v2}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 676
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  -- recent events --"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 679
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    rem-int/2addr v4, v3

    .line 681
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v5, v5, v4

    .line 682
    .local v5, "event":Landroid/view/InputEvent;
    if-nez v5, :cond_0

    .line 683
    goto :goto_1

    .line 685
    :cond_0
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v7, "\n  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aget-boolean v8, v8, v4

    invoke-static {v6, v7, v5, v8}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 678
    .end local v4    # "index":I
    .end local v5    # "event":Landroid/view/InputEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->setTainted(Z)V

    .line 696
    :cond_2
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 700
    :cond_3
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-nez v0, :cond_4

    .line 701
    new-array v0, v3, [Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 702
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 704
    :cond_4
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v0, v1

    rem-int/2addr v0, v3

    .line 705
    .local v0, "index":I
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 706
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 707
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycle()V

    .line 709
    :cond_5
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v3

    aput-object v3, v1, v0

    .line 710
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aput-boolean v2, v1, v0

    .line 713
    .end local v0    # "index":I
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 714
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public static isInstrumentationEnabled()Z
    .locals 1

    .line 139
    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return v0
.end method

.method private problem(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 728
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 731
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    return-void
.end method

.method private startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I
    .param p3, "eventType"    # Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    .line 648
    .local v0, "seq":I
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    if-ne p3, v1, :cond_0

    .line 650
    return v2

    .line 653
    :cond_0
    if-lez p2, :cond_1

    .line 654
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 655
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 656
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    goto :goto_0

    .line 658
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 659
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 660
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 663
    :goto_0
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 664
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 665
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .line 464
    const-string v0, "GenericMotionEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    return-void

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 472
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 473
    .local v1, "source":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 474
    .local v2, "buttonState":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v3

    .line 475
    .local v3, "actionButton":I
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-eqz v4, :cond_8

    .line 476
    const/16 v4, 0x40

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 552
    const-string v4, "Invalid action for generic pointer event."

    goto/16 :goto_2

    .line 524
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 525
    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v9, v3

    if-eq v9, v3, :cond_1

    .line 526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action button for ACTION_BUTTON_RELEASE event is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", but it was either never pressed or has already been released."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 531
    :cond_1
    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    not-int v10, v3

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 536
    if-ne v3, v6, :cond_2

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_2

    .line 538
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_0

    .line 539
    :cond_2
    if-ne v3, v4, :cond_3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_3

    .line 541
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 544
    :cond_3
    :goto_0
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v4, v2, :cond_a

    .line 545
    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    new-array v5, v5, [Ljava/lang/Object;

    .line 548
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 545
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 496
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 497
    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_4

    .line 498
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action button for ACTION_BUTTON_PRESS event is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", but it has already been pressed and has yet to be released."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 503
    :cond_4
    iget v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr v9, v3

    iput v9, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 508
    if-ne v3, v6, :cond_5

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_5

    .line 510
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_1

    .line 511
    :cond_5
    if-ne v3, v4, :cond_6

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_6

    .line 513
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 516
    :cond_6
    :goto_1
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v4, v2, :cond_a

    .line 517
    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    new-array v5, v5, [Ljava/lang/Object;

    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 517
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_3

    .line 485
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 486
    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    if-nez v4, :cond_7

    .line 487
    const-string v4, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 489
    :cond_7
    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 490
    goto :goto_3

    .line 478
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 479
    iput-boolean v7, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 480
    goto :goto_3

    .line 492
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 493
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 494
    goto :goto_3

    .line 482
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 483
    goto :goto_3

    .line 552
    :goto_2
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 553
    goto :goto_3

    .line 555
    :cond_8
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_a

    .line 556
    if-eq v0, v5, :cond_9

    .line 561
    const-string v4, "Invalid action for generic joystick event."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .end local v0    # "action":I
    .end local v1    # "source":I
    .end local v2    # "buttonState":I
    .end local v3    # "actionButton":I
    goto :goto_3

    .line 558
    .restart local v0    # "action":I
    .restart local v1    # "source":I
    .restart local v2    # "buttonState":I
    .restart local v3    # "actionButton":I
    :cond_9
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    nop

    .line 566
    .end local v0    # "action":I
    .end local v1    # "source":I
    .end local v2    # "buttonState":I
    .end local v3    # "actionButton":I
    :cond_a
    :goto_3
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 567
    nop

    .line 568
    return-void

    .line 566
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    .line 173
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 175
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 176
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 177
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 178
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 186
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :goto_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "nestingLevel"    # I

    .line 198
    const-string v0, "KeyEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 206
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 207
    .local v1, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    .line 208
    .local v2, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 209
    .local v3, "keyCode":I
    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_0

    .line 239
    :pswitch_0
    goto :goto_1

    .line 230
    :pswitch_1
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    .line 231
    .local v4, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-nez v4, :cond_1

    .line 232
    const-string v5, "ACTION_UP but key was not down."

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {v4}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 236
    goto :goto_1

    .line 211
    .end local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :pswitch_2
    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v3, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v6

    .line 212
    .local v6, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v6, :cond_3

    .line 217
    iget-boolean v7, v6, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    if-eqz v7, :cond_2

    .line 218
    iput-boolean v5, v6, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    goto :goto_1

    .line 219
    :cond_2
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    and-int/2addr v4, v5

    if-nez v4, :cond_4

    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 221
    const-string v4, "ACTION_DOWN but key is already down and this event is not a key repeat."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_3
    invoke-direct {p0, v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V

    .line 227
    goto :goto_1

    .line 241
    .end local v6    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :goto_0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for key event."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0    # "action":I
    .end local v1    # "deviceId":I
    .end local v2    # "source":I
    .end local v3    # "keyCode":I
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .line 323
    const-string v0, "TouchEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 328
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 330
    .local v3, "newStream":Z
    :goto_1
    if-eqz v3, :cond_4

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    if-eqz v4, :cond_4

    .line 331
    :cond_3
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 332
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 333
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 335
    :cond_4
    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 340
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 343
    .local v4, "deviceId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 345
    .local v5, "source":I
    if-nez v3, :cond_7

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    if-ne v6, v4, :cond_6

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    if-eq v6, v5, :cond_7

    .line 348
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch event stream contains events from multiple sources: previous device id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", previous source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 350
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", new device id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", new source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-direct {p0, v6}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 354
    :cond_7
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 355
    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 358
    .local v6, "pointerCount":I
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_13

    .line 359
    packed-switch v0, :pswitch_data_0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    goto :goto_2

    .line 391
    :pswitch_0
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v2, :cond_8

    .line 392
    const-string v2, "ACTION_OUTSIDE but pointers are still down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 394
    :cond_8
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 395
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 396
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 397
    goto/16 :goto_7

    .line 387
    :pswitch_1
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 388
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 389
    goto/16 :goto_7

    .line 376
    :pswitch_2
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 378
    .local v1, "expectedPointerCount":I
    if-eq v6, v1, :cond_14

    .line 379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE contained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pointers but there are currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pointers down."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 382
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_7

    .line 370
    .end local v1    # "expectedPointerCount":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 371
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 372
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 373
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 374
    goto/16 :goto_7

    .line 361
    :pswitch_4
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v7, :cond_9

    .line 362
    const-string v7, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 365
    :cond_9
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 366
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 367
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    shl-int v1, v2, v1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 368
    goto/16 :goto_7

    .line 399
    :goto_2
    nop

    .line 400
    .local v1, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 401
    .local v7, "actionIndex":I
    const/4 v8, 0x5

    if-ne v1, v8, :cond_e

    .line 402
    iget v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-nez v8, :cond_a

    .line 403
    const-string v8, "ACTION_POINTER_DOWN but no other pointers were down."

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 404
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 406
    :cond_a
    if-ltz v7, :cond_d

    if-lt v7, v6, :cond_b

    goto :goto_3

    .line 411
    :cond_b
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 412
    .local v8, "id":I
    shl-int v9, v2, v8

    .line 413
    .local v9, "idBit":I
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_c

    .line 414
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_DOWN specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " which is already down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 416
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_4

    .line 418
    :cond_c
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    or-int/2addr v2, v9

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .end local v8    # "id":I
    .end local v9    # "idBit":I
    goto :goto_4

    .line 407
    :cond_d
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_POINTER_DOWN index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but the pointer count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 409
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 421
    :goto_4
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 422
    :cond_e
    const/4 v8, 0x6

    if-ne v1, v8, :cond_12

    .line 423
    if-ltz v7, :cond_11

    if-lt v7, v6, :cond_f

    goto :goto_5

    .line 428
    :cond_f
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 429
    .restart local v8    # "id":I
    shl-int v9, v2, v8

    .line 430
    .restart local v9    # "idBit":I
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v9

    if-nez v10, :cond_10

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_UP specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " which is not currently down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 433
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_6

    .line 435
    :cond_10
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    not-int v10, v9

    and-int/2addr v2, v10

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .end local v8    # "id":I
    .end local v9    # "idBit":I
    goto :goto_6

    .line 424
    :cond_11
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_POINTER_UP index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but the pointer count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 426
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 438
    :goto_6
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 440
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid action "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for touch event."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 443
    goto :goto_7

    .line 447
    .end local v1    # "actionMasked":I
    .end local v7    # "actionIndex":I
    :cond_13
    const-string v1, "Source was not SOURCE_CLASS_POINTER."

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v4    # "deviceId":I
    .end local v5    # "source":I
    .end local v6    # "pointerCount":I
    :cond_14
    :goto_7
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .line 260
    const-string v0, "TrackballEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 268
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 269
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_4

    .line 270
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_2

    .line 292
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 293
    goto :goto_3

    .line 282
    :pswitch_1
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v3, :cond_1

    .line 283
    const-string v2, "ACTION_UP but trackball is not down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 286
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 288
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 289
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 290
    goto :goto_3

    .line 272
    :pswitch_2
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    if-nez v3, :cond_2

    .line 273
    const-string v2, "ACTION_DOWN but trackball is already down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 276
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 278
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 279
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 280
    goto :goto_3

    .line 295
    :goto_2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for trackball event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 300
    :goto_3
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 301
    const-string v2, "Trackball is down but pressure is not greater than 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_4

    .line 302
    :cond_3
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 303
    const-string v2, "Trackball is up but pressure is not equal to 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_4

    .line 306
    :cond_4
    const-string v2, "Source was not SOURCE_CLASS_TRACKBALL."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v0    # "action":I
    .end local v1    # "source":I
    :cond_5
    :goto_4
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 310
    nop

    .line 311
    return-void

    .line 309
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUnhandledEvent(Landroid/view/InputEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    .line 583
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-eq p2, v0, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    aput-boolean v1, v0, v2

    .line 591
    :cond_1
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_3

    .line 592
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 593
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 594
    .local v2, "deviceId":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    .line 595
    .local v3, "source":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 596
    .local v4, "keyCode":I
    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v5

    .line 597
    .local v5, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v5, :cond_2

    .line 598
    iput-boolean v1, v5, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 600
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    .end local v2    # "deviceId":I
    .end local v3    # "source":I
    .end local v4    # "keyCode":I
    .end local v5    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_2
    goto :goto_0

    .line 601
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 602
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    goto :goto_0

    .line 604
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 605
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v2, :cond_5

    .line 606
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 610
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_5
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 148
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 149
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 150
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 151
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 152
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 153
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 154
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 156
    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 158
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 159
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 160
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method
