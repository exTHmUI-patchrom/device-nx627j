.class public final Landroid/view/textclassifier/SelectionEvent;
.super Ljava/lang/Object;
.source "SelectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SelectionEvent$InvocationMethod;,
        Landroid/view/textclassifier/SelectionEvent$EventType;,
        Landroid/view/textclassifier/SelectionEvent$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_ABANDON:I = 0x6b

.field public static final ACTION_COPY:I = 0x65

.field public static final ACTION_CUT:I = 0x67

.field public static final ACTION_DRAG:I = 0x6a

.field public static final ACTION_OTHER:I = 0x6c

.field public static final ACTION_OVERTYPE:I = 0x64

.field public static final ACTION_PASTE:I = 0x66

.field public static final ACTION_RESET:I = 0xc9

.field public static final ACTION_SELECT_ALL:I = 0xc8

.field public static final ACTION_SHARE:I = 0x68

.field public static final ACTION_SMART_SHARE:I = 0x69

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/SelectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_AUTO_SELECTION:I = 0x5

.field public static final EVENT_SELECTION_MODIFIED:I = 0x2

.field public static final EVENT_SELECTION_STARTED:I = 0x1

.field public static final EVENT_SMART_SELECTION_MULTI:I = 0x4

.field public static final EVENT_SMART_SELECTION_SINGLE:I = 0x3

.field public static final INVOCATION_LINK:I = 0x2

.field public static final INVOCATION_MANUAL:I = 0x1

.field public static final INVOCATION_UNKNOWN:I = 0x0

.field private static final NO_SIGNATURE:Ljava/lang/String; = ""


# instance fields
.field private final mAbsoluteEnd:I

.field private final mAbsoluteStart:I

.field private mDurationSincePreviousEvent:J

.field private mDurationSinceSessionStart:J

.field private mEnd:I

.field private final mEntityType:Ljava/lang/String;

.field private mEventIndex:I

.field private mEventTime:J

.field private mEventType:I

.field private mInvocationMethod:I

.field private mPackageName:Ljava/lang/String;

.field private mResultId:Ljava/lang/String;

.field private mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private mSmartEnd:I

.field private mSmartStart:I

.field private mStart:I

.field private mWidgetType:Ljava/lang/String;

.field private mWidgetVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 646
    new-instance v0, Landroid/view/textclassifier/SelectionEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/SelectionEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "eventType"    # I
    .param p4, "entityType"    # Ljava/lang/String;
    .param p5, "invocationMethod"    # I
    .param p6, "resultId"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 144
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 145
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    .line 146
    iput p2, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    .line 147
    iput p3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    .line 148
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 149
    iput-object p6, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 150
    iput p5, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 151
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 168
    sget-object v0, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/textclassifier/TextClassificationSessionId;

    nop

    :cond_1
    iput-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/SelectionEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/textclassifier/SelectionEvent$1;

    .line 38
    invoke-direct {p0, p1}, Landroid/view/textclassifier/SelectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static checkActionType(I)V
    .locals 5
    .param p0, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 340
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d is not an eventType"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;
    .locals 9
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "actionType"    # I

    .line 300
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 301
    invoke-static {p2}, Landroid/view/textclassifier/SelectionEvent;->checkActionType(I)V

    .line 302
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ""

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "actionType"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 325
    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 326
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {p2}, Landroid/view/textclassifier/SelectionEvent;->checkActionType(I)V

    .line 328
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 329
    invoke-virtual {p3, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 331
    .local v5, "entityType":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v6, 0x0

    .line 332
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 331
    return-object v0
.end method

.method public static createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;
    .locals 9
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 233
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 234
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v5, 0x2

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ""

    move-object v2, v0

    move v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 253
    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 254
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 256
    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 258
    .local v5, "entityType":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 258
    return-object v0
.end method

.method public static createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 277
    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 278
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 280
    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 282
    .local v5, "entityType":Ljava/lang/String;
    :goto_2
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v4, 0x5

    const/4 v6, 0x0

    .line 284
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 282
    return-object v0
.end method

.method public static createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "invocationMethod"    # I
    .param p1, "start"    # I

    .line 217
    new-instance v7, Landroid/view/textclassifier/SelectionEvent;

    add-int/lit8 v2, p1, 0x1

    const-string v4, ""

    const-string v6, ""

    const/4 v3, 0x1

    move-object v0, v7

    move v1, p1

    move v5, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method

.method public static isTerminal(I)Z
    .locals 1
    .param p0, "eventType"    # I

    .line 577
    packed-switch p0, :pswitch_data_0

    .line 589
    const/4 v0, 0x0

    return v0

    .line 587
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 603
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 604
    return v0

    .line 606
    :cond_0
    instance-of v1, p1, Landroid/view/textclassifier/SelectionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 607
    return v2

    .line 610
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/textclassifier/SelectionEvent;

    .line 611
    .local v1, "other":Landroid/view/textclassifier/SelectionEvent;
    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 614
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    .line 615
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 616
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 617
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 619
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 624
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 611
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method getAbsoluteEnd()I
    .locals 1

    .line 364
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    return v0
.end method

.method getAbsoluteStart()I
    .locals 1

    .line 360
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    return v0
.end method

.method public getDurationSincePreviousEvent()J
    .locals 2

    .line 483
    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    return-wide v0
.end method

.method public getDurationSinceSessionStart()J
    .locals 2

    .line 470
    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    return-wide v0
.end method

.method public getEnd()I
    .locals 1

    .line 534
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    return v0
.end method

.method public getEntityType()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventIndex()I
    .locals 1

    .line 495
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 457
    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    .line 372
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    return v0
.end method

.method public getInvocationMethod()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    .line 508
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public getSmartEnd()I
    .locals 1

    .line 560
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    return v0
.end method

.method public getSmartStart()I
    .locals 1

    .line 547
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 521
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    return v0
.end method

.method public getWidgetType()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetVersion()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 595
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 596
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 597
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 598
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 595
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isTerminal()Z
    .locals 1

    .line 569
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v0}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result v0

    return v0
.end method

.method setDurationSincePreviousEvent(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "durationMs"    # J

    .line 487
    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    .line 488
    return-object p0
.end method

.method setDurationSinceSessionStart(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "durationMs"    # J

    .line 474
    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    .line 475
    return-object p0
.end method

.method setEnd(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "end"    # I

    .line 538
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    .line 539
    return-object p0
.end method

.method setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "index"    # I

    .line 499
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 500
    return-object p0
.end method

.method setEventTime(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "timeMs"    # J

    .line 461
    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 462
    return-object p0
.end method

.method setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 379
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    .line 380
    return-void
.end method

.method setInvocationMethod(I)V
    .locals 0
    .param p1, "invocationMethod"    # I

    .line 437
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 438
    return-void
.end method

.method setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "resultId"    # Ljava/lang/String;

    .line 449
    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "id"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 512
    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 513
    return-object p0
.end method

.method setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "end"    # I

    .line 564
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    .line 565
    return-object p0
.end method

.method setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "start"    # I

    .line 551
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    .line 552
    return-object p0
.end method

.method setStart(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "start"    # I

    .line 525
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    .line 526
    return-object p0
.end method

.method setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 421
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 633
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SelectionEvent {absoluteStart=%d, absoluteEnd=%d, eventType=%d, entityType=%s, widgetVersion=%s, packageName=%s, widgetType=%s, invocationMethod=%s, resultId=%s, eventTime=%d, durationSinceSessionStart=%d, durationSincePreviousEvent=%d, eventIndex=%d,sessionId=%s, start=%d, end=%d, smartStart=%d, smartEnd=%d}"

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    .line 639
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 640
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 641
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    .line 642
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    .line 643
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v2, v4

    .line 633
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 177
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 191
    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/TextClassificationSessionId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 197
    :cond_3
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
