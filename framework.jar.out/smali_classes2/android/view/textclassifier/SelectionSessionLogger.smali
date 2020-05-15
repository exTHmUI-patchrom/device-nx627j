.class public final Landroid/view/textclassifier/SelectionSessionLogger;
.super Ljava/lang/Object;
.source "SelectionSessionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;
    }
.end annotation


# static fields
.field static final CLASSIFIER_ID:Ljava/lang/String; = "androidtc"

.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final ENTITY_TYPE:I = 0x4e6

.field private static final EVENT_END:I = 0x4e3

.field private static final EVENT_START:I = 0x4e2

.field private static final INDEX:I = 0x460

.field private static final LOG_TAG:Ljava/lang/String; = "SelectionSessionLogger"

.field private static final MODEL_NAME:I = 0x4e8

.field private static final PREV_EVENT_DELTA:I = 0x45e

.field private static final SESSION_ID:I = 0x45f

.field private static final SMART_END:I = 0x4e5

.field private static final SMART_START:I = 0x4e4

.field private static final START_EVENT_DELTA:I = 0x45d

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final WIDGET_TYPE:I = 0x4e7

.field private static final WIDGET_VERSION:I = 0x4ee

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/SelectionSessionLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 1
    .param p1, "metricsLogger"    # Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionSessionLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 70
    return-void
.end method

.method public static createId(Ljava/lang/String;IILandroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "modelVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 243
    .local p5, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 247
    .local v0, "localesJoiner":Ljava/util/StringJoiner;
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 248
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 249
    .end local v2    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 250
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s_v%d"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 251
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 250
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "modelName":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    .line 253
    .local v2, "hash":I
    const-string v3, "androidtc"

    invoke-static {v3, v1, v2}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->createSignature(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .locals 0
    .param p0, "log"    # Landroid/metrics/LogMaker;

    .line 198
    return-void
.end method

.method private static getLogSubType(Landroid/view/textclassifier/SelectionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 137
    invoke-virtual {p0}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 141
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 139
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLogSubTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "logSubType"    # I

    .line 187
    packed-switch p0, :pswitch_data_0

    .line 193
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 191
    :pswitch_0
    const-string v0, "LINK"

    return-object v0

    .line 189
    :pswitch_1
    const-string v0, "MANUAL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLogType(Landroid/view/textclassifier/SelectionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 98
    invoke-virtual {p0}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 132
    const/4 v0, 0x0

    return v0

    .line 120
    :pswitch_0
    const/16 v0, 0x450

    return v0

    .line 118
    :pswitch_1
    const/16 v0, 0x44f

    return v0

    .line 116
    :pswitch_2
    const/16 v0, 0x45c

    return v0

    .line 114
    :pswitch_3
    const/16 v0, 0x45b

    return v0

    .line 112
    :pswitch_4
    const/16 v0, 0x45a

    return v0

    .line 110
    :pswitch_5
    const/16 v0, 0x459

    return v0

    .line 108
    :pswitch_6
    const/16 v0, 0x458

    return v0

    .line 106
    :pswitch_7
    const/16 v0, 0x457

    return v0

    .line 104
    :pswitch_8
    const/16 v0, 0x456

    return v0

    .line 102
    :pswitch_9
    const/16 v0, 0x455

    return v0

    .line 100
    :pswitch_a
    const/16 v0, 0x454

    return v0

    .line 130
    :pswitch_b
    const/16 v0, 0x453

    return v0

    .line 128
    :pswitch_c
    const/16 v0, 0x452

    return v0

    .line 126
    :pswitch_d
    const/16 v0, 0x451

    return v0

    .line 124
    :pswitch_e
    const/16 v0, 0x44e

    return v0

    .line 122
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

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 182
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 166
    :pswitch_0
    const-string v0, "OTHER"

    return-object v0

    .line 164
    :pswitch_1
    const-string v0, "ABANDON"

    return-object v0

    .line 162
    :pswitch_2
    const-string v0, "DRAG"

    return-object v0

    .line 160
    :pswitch_3
    const-string v0, "SMART_SHARE"

    return-object v0

    .line 158
    :pswitch_4
    const-string v0, "SHARE"

    return-object v0

    .line 156
    :pswitch_5
    const-string v0, "CUT"

    return-object v0

    .line 154
    :pswitch_6
    const-string v0, "PASTE"

    return-object v0

    .line 152
    :pswitch_7
    const-string v0, "COPY"

    return-object v0

    .line 150
    :pswitch_8
    const-string v0, "OVERTYPE"

    return-object v0

    .line 180
    :pswitch_9
    const-string v0, "AUTO_SELECTION"

    return-object v0

    .line 178
    :pswitch_a
    const-string v0, "SMART_SELECTION_MULTI"

    return-object v0

    .line 176
    :pswitch_b
    const-string v0, "SMART_SELECTION_SINGLE"

    return-object v0

    .line 170
    :pswitch_c
    const-string v0, "RESET"

    return-object v0

    .line 168
    :pswitch_d
    const-string v0, "SELECT_ALL"

    return-object v0

    .line 174
    :pswitch_e
    const-string v0, "SELECTION_MODIFIED"

    return-object v0

    .line 172
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

.method public static getTokenIterator(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 234
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public writeEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 74
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x44c

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 76
    invoke-static {p1}, Landroid/view/textclassifier/SelectionSessionLogger;->getLogType(Landroid/view/textclassifier/SelectionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 77
    invoke-static {p1}, Landroid/view/textclassifier/SelectionSessionLogger;->getLogSubType(Landroid/view/textclassifier/SelectionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getDurationSinceSessionStart()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x45d

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getDurationSincePreviousEvent()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x45e

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x460

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getWidgetType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e7

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getWidgetVersion()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4ee

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->getModelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e8

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEntityType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e6

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getSmartStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4e4

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getSmartEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4e5

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4e2

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4e3

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 90
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    const/16 v1, 0x45f

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationSessionId;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 93
    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/SelectionSessionLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 94
    invoke-static {v0}, Landroid/view/textclassifier/SelectionSessionLogger;->debugLog(Landroid/metrics/LogMaker;)V

    .line 95
    return-void
.end method
