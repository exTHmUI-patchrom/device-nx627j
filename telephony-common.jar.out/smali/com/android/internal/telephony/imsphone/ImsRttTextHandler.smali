.class public Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.super Landroid/os/Handler;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;,
        Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;
    }
.end annotation


# static fields
.field private static final APPEND_TO_NETWORK_BUFFER:I = 0x2

.field private static final ATTEMPT_SEND_TO_NETWORK:I = 0x4

.field private static final EXPIRE_SENT_CODEPOINT_COUNT:I = 0x5

.field private static final INITIALIZE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsRttTextHandler"

.field public static final MAX_BUFFERED_CHARACTER_COUNT:I = 0x5

.field public static final MAX_BUFFERING_DELAY_MILLIS:I = 0xc8

.field public static final MAX_CODEPOINTS_PER_SECOND:I = 0x1e

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final SEND_TO_INCALL:I = 0x3

.field private static final TEARDOWN:I = 0x270f


# instance fields
.field private mBufferedTextToIncall:Ljava/lang/StringBuffer;

.field private mBufferedTextToNetwork:Ljava/lang/StringBuffer;

.field private mCodepointsAvailableForTransmission:I

.field private final mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

.field private mReadNotifier:Ljava/util/concurrent/CountDownLatch;

.field private mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "networkWriter"    # Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    .line 205
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    .line 206
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReadNotifier:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public getNetworkBufferText()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x270f

    if-eq v0, v3, :cond_6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 184
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 185
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    if-lez v0, :cond_8

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 164
    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuffer;->codePointCount(II)I

    move-result v0

    .line 166
    .local v0, "numCodePointsAvailableInBuffer":I
    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 168
    .local v3, "numCodePointsSent":I
    if-nez v3, :cond_0

    .line 169
    goto/16 :goto_2

    .line 171
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuffer;->offsetByCodePoints(II)I

    move-result v5

    .line 174
    .local v5, "endSendIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "stringToSend":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 177
    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;->write(Ljava/lang/String;)V

    .line 178
    iget v8, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 179
    nop

    .line 180
    invoke-virtual {p0, v4, v3, v6}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 179
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    goto/16 :goto_2

    .line 135
    .end local v0    # "numCodePointsAvailableInBuffer":I
    .end local v3    # "numCodePointsSent":I
    .end local v5    # "endSendIndex":I
    .end local v7    # "stringToSend":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "messageToIncall":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v1, :cond_1

    .line 137
    const-string v1, "ImsRttTextHandler"

    const-string v2, "RTT text stream is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$RttTextStream;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto/16 :goto_2

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ImsRttTextHandler"

    const-string v4, "IOException encountered writing to in-call: %s"

    invoke-static {v2, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 150
    .end local v0    # "messageToIncall":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuffer;->codePointCount(II)I

    move-result v0

    .line 155
    .local v0, "numCodepointsBuffered":I
    if-lt v0, v4, :cond_2

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 158
    :cond_2
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    goto :goto_2

    .line 122
    .end local v0    # "numCodepointsBuffered":I
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Connection$RttTextStream;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_4

    .line 128
    const-string v0, "ImsRttTextHandler"

    const-string v1, "RTT text stream is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;-><init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->start()V

    .line 133
    goto :goto_2

    .line 123
    :cond_5
    :goto_0
    const-string v0, "ImsRttTextHandler"

    const-string v1, "RTT text stream already initialized. Ignoring."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 191
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->interrupt()V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :cond_7
    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    .line 198
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    .line 199
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 202
    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Landroid/telecom/Connection$RttTextStream;)V
    .locals 3
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 214
    const-string v0, "ImsRttTextHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void
.end method

.method public sendToInCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public setReadNotifier(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReadNotifier:Ljava/util/concurrent/CountDownLatch;

    .line 225
    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 219
    const/16 v0, 0x270f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method
