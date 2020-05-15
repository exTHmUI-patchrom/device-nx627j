.class final Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionEventHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/view/textclassifier/TextClassificationContext;

.field private mInvocationMethod:I

.field private mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

.field private mStartEvent:Landroid/view/textclassifier/SelectionEvent;


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "context"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    .line 121
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 122
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 123
    return-void
.end method

.method private static isPlatformLocalTextClassifierSmartSelection(Ljava/lang/String;)Z
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;

    .line 224
    const-string v0, "androidtc"

    .line 225
    invoke-static {p0}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->getClassifierId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private modifyAutoSelectionEventType(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 204
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->isPlatformLocalTextClassifierSmartSelection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 210
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    goto :goto_0

    .line 212
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    .line 217
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateInvocationMethod(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 195
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    .line 201
    :goto_0
    return-void
.end method


# virtual methods
.method endSession()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 190
    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 191
    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 192
    return-void
.end method

.method sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 131
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->updateInvocationMethod(Landroid/view/textclassifier/SelectionEvent;)V

    .line 132
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->modifyAutoSelectionEventType(Landroid/view/textclassifier/SelectionEvent;)V

    .line 134
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "TextClassificationSession"

    const-string v2, "Selection session not yet started. Ignoring event"

    invoke-static {v0, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return v1

    .line 142
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 143
    .local v3, "now":J
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 152
    :pswitch_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 153
    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 157
    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 158
    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 160
    return v1

    .line 145
    :pswitch_2
    nop

    .line 146
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    add-int/2addr v5, v2

    if-ne v0, v5, :cond_1

    .line 145
    move v1, v2

    goto :goto_0

    .line 146
    :cond_1
    nop

    .line 145
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 147
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    .line 148
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 149
    nop

    .line 167
    :cond_2
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/view/textclassifier/SelectionEvent;->setEventTime(J)Landroid/view/textclassifier/SelectionEvent;

    .line 168
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 170
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getEventTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/textclassifier/SelectionEvent;->setDurationSinceSessionStart(J)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 174
    :cond_3
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 177
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 178
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 180
    :cond_4
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getEventTime()J

    move-result-wide v0

    sub-long v0, v3, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setDurationSincePreviousEvent(J)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 182
    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getEventIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    .line 184
    :cond_5
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    .line 185
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
