.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityEvent$EventType;,
        Landroid/view/accessibility/AccessibilityEvent$ContentChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$WindowsChangeTypes;
    }
.end annotation


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_PANE_APPEARED:I = 0x10

.field public static final CONTENT_CHANGE_TYPE_PANE_DISAPPEARED:I = 0x20

.field public static final CONTENT_CHANGE_TYPE_PANE_TITLE:I = 0x8

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEBUG_ORIGIN:Z = false

.field public static final INVALID_POSITION:I = -0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CLICKED:I = 0x1

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_FOCUSED:I = 0x8

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_SELECTED:I = 0x4

.field public static final TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field public static final WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED:I = 0x80

.field public static final WINDOWS_CHANGE_ACTIVE:I = 0x20

.field public static final WINDOWS_CHANGE_ADDED:I = 0x1

.field public static final WINDOWS_CHANGE_BOUNDS:I = 0x8

.field public static final WINDOWS_CHANGE_CHILDREN:I = 0x200

.field public static final WINDOWS_CHANGE_FOCUSED:I = 0x40

.field public static final WINDOWS_CHANGE_LAYER:I = 0x10

.field public static final WINDOWS_CHANGE_PARENT:I = 0x100

.field public static final WINDOWS_CHANGE_PIP:I = 0x400

.field public static final WINDOWS_CHANGE_REMOVED:I = 0x2

.field public static final WINDOWS_CHANGE_TITLE:I = 0x4

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAction:I

.field mContentChangeTypes:I

.field private mEventTime:J

.field private mEventType:I

.field mMovementGranularity:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowChangeTypes:I

.field public originStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 753
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 1422
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 780
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 781
    return-void
.end method

.method private static contentChangeTypesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "types"    # I

    .line 886
    sget-object v0, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;->INSTANCE:Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static eventTypeToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "eventType"    # I

    .line 1359
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1360
    const-string v0, "TYPES_ALL_MASK"

    return-object v0

    .line 1362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, p0

    move p0, v1

    .line 1364
    .local v2, "eventType":I
    .local p0, "eventTypeCount":I
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1365
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    .line 1366
    .local v3, "eventTypeFlag":I
    not-int v4, v3

    and-int/2addr v2, v4

    .line 1368
    if-lez p0, :cond_1

    .line 1369
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_1
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->singleEventTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    add-int/lit8 p0, p0, 0x1

    .line 1374
    .end local v3    # "eventTypeFlag":I
    goto :goto_0

    .line 1375
    :cond_2
    if-le p0, v3, :cond_3

    .line 1376
    const/16 v3, 0x5b

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1377
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1379
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$c6ikd5OkCnJv2aVsheVXIxBvSTk(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleWindowChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$gjyLj65KEDUo5PJZiVYxPrd2Vug(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleContentChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .line 1123
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 1124
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_0

    new-instance v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    move-object v0, v1

    .line 1126
    :cond_0
    return-object v0
.end method

.method public static obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p0, "eventType"    # I

    .line 1086
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1087
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1088
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1100
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1101
    .local v0, "eventClone":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1103
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1104
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1105
    .local v1, "recordCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1106
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1107
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityRecord;

    .line 1108
    .local v3, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v4

    .line 1109
    .local v4, "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    .end local v3    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v4    # "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1113
    .end local v1    # "recordCount":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p0, "windowId"    # I
    .param p1, "windowChangeTypes"    # I

    .line 1071
    const/high16 v0, 0x400000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1072
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1073
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowChanges(I)V

    .line 1074
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 1075
    return-object v0
.end method

.method private readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 1222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 1229
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 1230
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 1231
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 1233
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 1236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 1237
    return-void
.end method

.method private static singleContentChangeTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 890
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 898
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 895
    :pswitch_0
    const-string v0, "CONTENT_CHANGE_TYPE_TEXT"

    return-object v0

    .line 894
    :pswitch_1
    const-string v0, "CONTENT_CHANGE_TYPE_SUBTREE"

    return-object v0

    .line 897
    :pswitch_2
    const-string v0, "CONTENT_CHANGE_TYPE_UNDEFINED"

    return-object v0

    .line 896
    :cond_0
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_TITLE"

    return-object v0

    .line 892
    :cond_1
    const-string v0, "CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static singleEventTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    .line 1383
    sparse-switch p0, :sswitch_data_0

    .line 1415
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1414
    :sswitch_0
    const-string v0, "TYPE_ASSIST_READING_CONTEXT"

    return-object v0

    .line 1413
    :sswitch_1
    const-string v0, "TYPE_VIEW_CONTEXT_CLICKED"

    return-object v0

    .line 1412
    :sswitch_2
    const-string v0, "TYPE_WINDOWS_CHANGED"

    return-object v0

    .line 1411
    :sswitch_3
    const-string v0, "TYPE_TOUCH_INTERACTION_END"

    return-object v0

    .line 1410
    :sswitch_4
    const-string v0, "TYPE_TOUCH_INTERACTION_START"

    return-object v0

    .line 1409
    :sswitch_5
    const-string v0, "TYPE_GESTURE_DETECTION_END"

    return-object v0

    .line 1408
    :sswitch_6
    const-string v0, "TYPE_GESTURE_DETECTION_START"

    return-object v0

    .line 1406
    :sswitch_7
    const-string v0, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 1403
    :sswitch_8
    const-string v0, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    return-object v0

    .line 1401
    :sswitch_9
    const-string v0, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    return-object v0

    .line 1400
    :sswitch_a
    const-string v0, "TYPE_ANNOUNCEMENT"

    return-object v0

    .line 1398
    :sswitch_b
    const-string v0, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    return-object v0

    .line 1399
    :sswitch_c
    const-string v0, "TYPE_VIEW_SCROLLED"

    return-object v0

    .line 1397
    :sswitch_d
    const-string v0, "TYPE_WINDOW_CONTENT_CHANGED"

    return-object v0

    .line 1396
    :sswitch_e
    const-string v0, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    return-object v0

    .line 1394
    :sswitch_f
    const-string v0, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    return-object v0

    .line 1391
    :sswitch_10
    const-string v0, "TYPE_VIEW_HOVER_EXIT"

    return-object v0

    .line 1390
    :sswitch_11
    const-string v0, "TYPE_VIEW_HOVER_ENTER"

    return-object v0

    .line 1392
    :sswitch_12
    const-string v0, "TYPE_NOTIFICATION_STATE_CHANGED"

    return-object v0

    .line 1389
    :sswitch_13
    const-string v0, "TYPE_WINDOW_STATE_CHANGED"

    return-object v0

    .line 1388
    :sswitch_14
    const-string v0, "TYPE_VIEW_TEXT_CHANGED"

    return-object v0

    .line 1387
    :sswitch_15
    const-string v0, "TYPE_VIEW_FOCUSED"

    return-object v0

    .line 1386
    :sswitch_16
    const-string v0, "TYPE_VIEW_SELECTED"

    return-object v0

    .line 1385
    :sswitch_17
    const-string v0, "TYPE_VIEW_LONG_CLICKED"

    return-object v0

    .line 1384
    :sswitch_18
    const-string v0, "TYPE_VIEW_CLICKED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_17
        0x4 -> :sswitch_16
        0x8 -> :sswitch_15
        0x10 -> :sswitch_14
        0x20 -> :sswitch_13
        0x40 -> :sswitch_12
        0x80 -> :sswitch_11
        0x100 -> :sswitch_10
        0x200 -> :sswitch_f
        0x400 -> :sswitch_e
        0x800 -> :sswitch_d
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_a
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_8
        0x20000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_3
        0x400000 -> :sswitch_2
        0x800000 -> :sswitch_1
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static singleWindowChangeTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 936
    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 948
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 938
    :pswitch_0
    const-string v0, "WINDOWS_CHANGE_REMOVED"

    return-object v0

    .line 937
    :pswitch_1
    const-string v0, "WINDOWS_CHANGE_ADDED"

    return-object v0

    .line 947
    :cond_0
    const-string v0, "WINDOWS_CHANGE_CHILDREN"

    return-object v0

    .line 946
    :cond_1
    const-string v0, "WINDOWS_CHANGE_PARENT"

    return-object v0

    .line 945
    :cond_2
    const-string v0, "WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED"

    return-object v0

    .line 943
    :cond_3
    const-string v0, "WINDOWS_CHANGE_FOCUSED"

    return-object v0

    .line 942
    :cond_4
    const-string v0, "WINDOWS_CHANGE_ACTIVE"

    return-object v0

    .line 941
    :cond_5
    const-string v0, "WINDOWS_CHANGE_LAYER"

    return-object v0

    .line 940
    :cond_6
    const-string v0, "WINDOWS_CHANGE_BOUNDS"

    return-object v0

    .line 939
    :cond_7
    const-string v0, "WINDOWS_CHANGE_TITLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static windowChangeTypesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "types"    # I

    .line 932
    sget-object v0, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;->INSTANCE:Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$c6ikd5OkCnJv2aVsheVXIxBvSTk;

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 1282
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1296
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1297
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1298
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1299
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1300
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1302
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    return-void
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 1
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 837
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 838
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 841
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    return-void
.end method

.method protected clear()V
    .locals 3

    .line 1150
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1152
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1153
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1154
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1155
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1156
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1157
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1158
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1159
    :goto_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1160
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1161
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 1162
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    goto :goto_0

    .line 1165
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 1309
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 1055
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    return v0
.end method

.method public getContentChangeTypes()I
    .locals 1

    .line 882
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 970
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    .line 863
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    return v0
.end method

.method public getMovementGranularity()I
    .locals 1

    .line 1024
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .line 991
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .locals 3
    .param p1, "index"    # I

    .line 851
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    return-object v0

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecordCount()I
    .locals 1

    .line 826
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWindowChanges()I
    .locals 1

    .line 923
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 789
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 790
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 791
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 792
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 793
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 794
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 795
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 796
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 798
    return-void
.end method

.method public initFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mSealed:Z

    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1179
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    .line 1182
    invoke-direct {p0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1186
    .local v0, "recordCount":I
    if-lez v0, :cond_1

    .line 1187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1188
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1189
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v2

    .line 1190
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1191
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    iput v3, v2, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 1192
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1206
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1139
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->clear()V

    .line 1140
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1141
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .line 1045
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1046
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1047
    return-void
.end method

.method public setContentChangeTypes(I)V
    .locals 0
    .param p1, "changeTypes"    # I

    .line 911
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 912
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 913
    return-void
.end method

.method public setEventTime(J)V
    .locals 0
    .param p1, "eventTime"    # J

    .line 981
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 982
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 983
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 960
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 961
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 962
    return-void
.end method

.method public setMovementGranularity(I)V
    .locals 0
    .param p1, "granularity"    # I

    .line 1014
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1015
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1016
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 1002
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1003
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1004
    return-void
.end method

.method public setSealed(Z)V
    .locals 4
    .param p1, "sealed"    # Z

    .line 809
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 810
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 811
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRecord;>;"
    if-eqz v0, :cond_0

    .line 812
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 813
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 814
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityRecord;

    .line 815
    .local v3, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 813
    .end local v3    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "recordCount":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setWindowChanges(I)V
    .locals 0
    .param p1, "changes"    # I

    .line 928
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 929
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "EventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    const-string v1, "; EventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1317
    const-string v1, "; PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1319
    const-string v1, "; MovementGranularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1322
    const-string v1, "; Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1325
    const-string v1, "; ContentChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1326
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->contentChangeTypesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v1, "; WindowChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1330
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->windowChangeTypesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-super {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1346
    const-string v1, "; recordCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1243
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isSealed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1250
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1251
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    invoke-direct {p0, p0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1255
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    .line 1256
    .local v0, "recordCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1258
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 1259
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v2, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1257
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
