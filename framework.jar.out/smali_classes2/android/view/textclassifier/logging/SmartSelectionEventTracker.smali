.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.super Ljava/lang/Object;
.source "SmartSelectionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;,
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$WidgetType;
    }
.end annotation


# static fields
.field private static final CUSTOM_EDITTEXT:Ljava/lang/String; = "customedit"

.field private static final CUSTOM_TEXTVIEW:Ljava/lang/String; = "customview"

.field private static final CUSTOM_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-customview"

.field private static final DEBUG_LOG_ENABLED:Z = true

.field private static final EDITTEXT:Ljava/lang/String; = "edittext"

.field private static final EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field private static final ENTITY_TYPE:I = 0x4e6

.field private static final EVENT_END:I = 0x4e3

.field private static final EVENT_START:I = 0x4e2

.field private static final INDEX:I = 0x460

.field private static final LOG_TAG:Ljava/lang/String; = "SmartSelectEventTracker"

.field private static final MODEL_NAME:I = 0x4e8

.field private static final PREV_EVENT_DELTA:I = 0x45e

.field private static final SESSION_ID:I = 0x45f

.field private static final SMART_END:I = 0x4e5

.field private static final SMART_START:I = 0x4e4

.field private static final START_EVENT_DELTA:I = 0x45d

.field private static final TEXTVIEW:Ljava/lang/String; = "textview"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-textview"

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final WIDGET_TYPE:I = 0x4e7

.field private static final WIDGET_VERSION:I = 0x4ee

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIndex:I

.field private mLastEventTime:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mModelName:Ljava/lang/String;

.field private mOrigStart:I

.field private final mPrevIndices:[I

.field private mSessionId:Ljava/lang/String;

.field private mSessionStartTime:J

.field private final mSmartIndices:[I

.field private mSmartSelectionTriggered:Z

.field private final mWidgetType:I

.field private final mWidgetVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetType"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 93
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 94
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 103
    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetVersion:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetType"    # I
    .param p3, "widgetVersion"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 93
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    .line 94
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    .line 110
    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    .line 111
    iput-object p3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetVersion:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method private static createSessionId()Ljava/lang/String;
    .locals 1

    .line 319
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .locals 18
    .param p0, "log"    # Landroid/metrics/LogMaker;

    .line 325
    move-object/from16 v0, p0

    const/16 v1, 0x4e7

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "widgetType":Ljava/lang/String;
    const/16 v2, 0x4ee

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "widgetVersion":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    move-object v3, v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "widget":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x460

    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/metrics/LogMaker;->getType()I

    move-result v5

    const/16 v6, 0x44d

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v5, v6, :cond_1

    .line 331
    const/16 v5, 0x45f

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "sessionId":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 333
    const-string v6, "SmartSelectEventTracker"

    const-string v10, "New selection session: %s (%s)"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v3, v11, v7

    aput-object v5, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v5    # "sessionId":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x4e8

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "unknown"

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "model":Ljava/lang/String;
    const/16 v6, 0x4e6

    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v10, "unknown"

    invoke-static {v6, v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "entity":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/metrics/LogMaker;->getType()I

    move-result v10

    invoke-static {v10}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogTypeString(I)Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, "type":Ljava/lang/String;
    const/16 v11, 0x4e4

    .line 340
    invoke-virtual {v0, v11}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "0"

    invoke-static {v11, v12}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 339
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 341
    .local v11, "smartStart":I
    const/16 v12, 0x4e5

    .line 342
    invoke-virtual {v0, v12}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "0"

    invoke-static {v12, v13}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 343
    .local v12, "smartEnd":I
    const/16 v13, 0x4e2

    .line 344
    invoke-virtual {v0, v13}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "0"

    invoke-static {v13, v14}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 343
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 345
    .local v13, "eventStart":I
    const/16 v14, 0x4e3

    .line 346
    invoke-virtual {v0, v14}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "0"

    invoke-static {v14, v15}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 345
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 348
    .local v14, "eventEnd":I
    const-string v15, "SmartSelectEventTracker"

    const-string v8, "%2d: %s/%s, range=%d,%d - smart_range=%d,%d (%s/%s)"

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v9, v7

    const/4 v7, 0x1

    aput-object v10, v9, v7

    const/4 v7, 0x2

    aput-object v6, v9, v7

    const/4 v7, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v7

    const/4 v7, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v7

    const/4 v7, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v7

    const/4 v7, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v7

    const/4 v7, 0x7

    aput-object v3, v9, v7

    const/16 v7, 0x8

    aput-object v5, v9, v7

    .line 348
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method

.method private endSession()V
    .locals 4

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 193
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    const/4 v3, 0x1

    aput v0, v2, v3

    aput v0, v1, v0

    .line 194
    iget-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    iget-object v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aput v0, v2, v3

    aput v0, v1, v0

    .line 195
    iput v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 196
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    .line 197
    iput-wide v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 198
    iput-boolean v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getModelName(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mModelName:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method private static getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 204
    invoke-static {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 238
    const/4 v0, 0x0

    return v0

    .line 226
    :pswitch_0
    const/16 v0, 0x450

    return v0

    .line 224
    :pswitch_1
    const/16 v0, 0x44f

    return v0

    .line 222
    :pswitch_2
    const/16 v0, 0x45c

    return v0

    .line 220
    :pswitch_3
    const/16 v0, 0x45b

    return v0

    .line 218
    :pswitch_4
    const/16 v0, 0x45a

    return v0

    .line 216
    :pswitch_5
    const/16 v0, 0x459

    return v0

    .line 214
    :pswitch_6
    const/16 v0, 0x458

    return v0

    .line 212
    :pswitch_7
    const/16 v0, 0x457

    return v0

    .line 210
    :pswitch_8
    const/16 v0, 0x456

    return v0

    .line 208
    :pswitch_9
    const/16 v0, 0x455

    return v0

    .line 206
    :pswitch_a
    const/16 v0, 0x454

    return v0

    .line 236
    :pswitch_b
    const/16 v0, 0x453

    return v0

    .line 234
    :pswitch_c
    const/16 v0, 0x452

    return v0

    .line 232
    :pswitch_d
    const/16 v0, 0x451

    return v0

    .line 230
    :pswitch_e
    const/16 v0, 0x44e

    return v0

    .line 228
    :pswitch_f
    const/16 v0, 0x44d

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLogTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "logType"    # I

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 277
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 261
    :pswitch_0
    const-string v0, "OTHER"

    return-object v0

    .line 259
    :pswitch_1
    const-string v0, "ABANDON"

    return-object v0

    .line 257
    :pswitch_2
    const-string v0, "DRAG"

    return-object v0

    .line 255
    :pswitch_3
    const-string v0, "SMART_SHARE"

    return-object v0

    .line 253
    :pswitch_4
    const-string v0, "SHARE"

    return-object v0

    .line 251
    :pswitch_5
    const-string v0, "CUT"

    return-object v0

    .line 249
    :pswitch_6
    const-string v0, "PASTE"

    return-object v0

    .line 247
    :pswitch_7
    const-string v0, "COPY"

    return-object v0

    .line 245
    :pswitch_8
    const-string v0, "OVERTYPE"

    return-object v0

    .line 275
    :pswitch_9
    const-string v0, "AUTO_SELECTION"

    return-object v0

    .line 273
    :pswitch_a
    const-string v0, "SMART_SELECTION_MULTI"

    return-object v0

    .line 271
    :pswitch_b
    const-string v0, "SMART_SELECTION_SINGLE"

    return-object v0

    .line 265
    :pswitch_c
    const-string v0, "RESET"

    return-object v0

    .line 263
    :pswitch_d
    const-string v0, "SELECT_ALL"

    return-object v0

    .line 269
    :pswitch_e
    const-string v0, "SELECTION_MODIFIED"

    return-object v0

    .line 267
    :pswitch_f
    const-string v0, "SELECTION_STARTED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x44d
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

.method private getModelName(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 313
    if-nez p1, :cond_0

    .line 314
    const-string v0, ""

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$500(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0
.end method

.method private getRangeDelta(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 282
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getSmartRangeDelta(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 286
    iget-boolean v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getRangeDelta(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWidgetTypeName()Ljava/lang/String;
    .locals 1

    .line 290
    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetType:I

    packed-switch v0, :pswitch_data_0

    .line 308
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 306
    :pswitch_0
    const-string/jumbo v0, "nosel-customview"

    return-object v0

    .line 304
    :pswitch_1
    const-string v0, "customedit"

    return-object v0

    .line 302
    :pswitch_2
    const-string v0, "customview"

    return-object v0

    .line 300
    :pswitch_3
    const-string/jumbo v0, "nosel-textview"

    return-object v0

    .line 298
    :pswitch_4
    const-string v0, "edit-webview"

    return-object v0

    .line 296
    :pswitch_5
    const-string v0, "edittext"

    return-object v0

    .line 294
    :pswitch_6
    const-string/jumbo v0, "webview"

    return-object v0

    .line 292
    :pswitch_7
    const-string/jumbo v0, "textview"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private startNewSession()Ljava/lang/String;
    .locals 1

    .line 185
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    .line 186
    invoke-static {}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->createSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method private writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V
    .locals 7
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .param p2, "now"    # J

    .line 159
    iget-wide v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    sub-long v2, p2, v0

    :goto_0
    move-wide v0, v2

    .line 160
    .local v0, "prevEventDelta":J
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x44c

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 161
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getLogType(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x45d

    iget-wide v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    sub-long v5, p2, v5

    .line 164
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x45e

    .line 165
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x460

    iget v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e7

    .line 167
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getWidgetTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4ee

    iget-object v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mWidgetVersion:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e8

    iget-object v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mModelName:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e6

    .line 170
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$400(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e4

    iget-object v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 171
    invoke-direct {p0, v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getSmartRangeDelta(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e5

    iget-object v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    aget v5, v5, v3

    .line 172
    invoke-direct {p0, v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getSmartRangeDelta(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e2

    .line 173
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getRangeDelta(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x4e3

    .line 174
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getRangeDelta(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v4, 0x45f

    iget-object v5, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 175
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 176
    .local v2, "log":Landroid/metrics/LogMaker;
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 177
    invoke-static {v2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->debugLog(Landroid/metrics/LogMaker;)V

    .line 178
    iput-wide p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mLastEventTime:J

    .line 179
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    aput v5, v4, v6

    .line 180
    iget-object v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    aput v5, v4, v3

    .line 181
    iget v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mIndex:I

    .line 182
    return-void
.end method


# virtual methods
.method public logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 121
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "SmartSelectEventTracker"

    const-string v1, "Selection session not yet started. Ignoring event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "now":J
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 139
    :pswitch_0
    iput-boolean v1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartSelectionTriggered:Z

    .line 140
    invoke-direct {p0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->getModelName(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mModelName:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    aput v5, v0, v4

    .line 142
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSmartIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    aput v4, v0, v1

    .line 143
    goto :goto_1

    .line 146
    :pswitch_1
    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aget v0, v0, v4

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v4

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mPrevIndices:[I

    aget v0, v0, v1

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 148
    return-void

    .line 132
    :pswitch_2
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->startNewSession()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionId:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v5

    add-int/2addr v5, v1

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 134
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mOrigStart:I

    .line 135
    iput-wide v2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->mSessionStartTime:J

    .line 136
    nop

    .line 151
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->writeEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;J)V

    .line 153
    invoke-static {p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->access$300(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->endSession()V

    .line 156
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
