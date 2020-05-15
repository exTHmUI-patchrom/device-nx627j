.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$SrvccState;,
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field public mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    return-void
.end method

.method public static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p0, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;

    .line 52
    sget-object v0, Lcom/android/internal/telephony/Call$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 57
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 56
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 55
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 54
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 53
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearDisconnected()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 267
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 273
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 275
    :cond_2
    return-void
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .locals 10

    .line 192
    const-wide v0, 0x7fffffffffffffffL

    .line 193
    .local v0, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 196
    const-wide/16 v3, 0x0

    return-wide v3

    .line 199
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 200
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 203
    .local v5, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    .line 205
    .local v6, "t":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_1

    move-wide v8, v6

    goto :goto_1

    :cond_1
    move-wide v8, v0

    :goto_1
    move-wide v0, v8

    .line 199
    .end local v5    # "c":Lcom/android/internal/telephony/Connection;
    .end local v6    # "t":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_2
    return-wide v0
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .line 142
    const-wide v0, 0x7fffffffffffffffL

    .line 144
    .local v0, "time":J
    const/4 v2, 0x0

    .line 146
    .local v2, "earliest":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 148
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 149
    const/4 v4, 0x0

    return-object v4

    .line 152
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "s":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 153
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 156
    .local v6, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 158
    .local v7, "t":J
    cmp-long v9, v7, v0

    if-gez v9, :cond_1

    .line 159
    move-object v2, v6

    .line 160
    move-wide v0, v7

    .line 152
    .end local v7    # "t":J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v4    # "i":I
    .end local v5    # "s":I
    .end local v6    # "c":Lcom/android/internal/telephony/Connection;
    :cond_2
    return-object v2
.end method

.method public getEarliestCreateTime()J
    .locals 10

    .line 170
    const-wide v0, 0x7fffffffffffffffL

    .line 172
    .local v0, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 175
    const-wide/16 v3, 0x0

    return-wide v3

    .line 178
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 179
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 182
    .local v5, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 184
    .local v6, "t":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_1

    move-wide v8, v6

    goto :goto_1

    :cond_1
    move-wide v8, v0

    :goto_1
    move-wide v0, v8

    .line 178
    .end local v5    # "c":Lcom/android/internal/telephony/Connection;
    .end local v6    # "t":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_2
    return-wide v0
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    return-object v1

    .line 233
    :cond_0
    const-wide/16 v1, 0x0

    .line 234
    .local v1, "time":J
    const/4 v3, 0x0

    .line 235
    .local v3, "latest":Lcom/android/internal/telephony/Connection;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "s":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 236
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 237
    .local v6, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 239
    .local v7, "t":J
    cmp-long v9, v7, v1

    if-lez v9, :cond_1

    .line 240
    move-object v3, v6

    .line 241
    move-wide v1, v7

    .line 235
    .end local v6    # "c":Lcom/android/internal/telephony/Connection;
    .end local v7    # "t":J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_2
    return-object v3
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupIfAlive()V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    :goto_0
    return-void
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnections()Z
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return v1

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/Call$State;

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 279
    return-void
.end method
