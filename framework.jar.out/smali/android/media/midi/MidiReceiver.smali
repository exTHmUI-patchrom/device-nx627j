.class public abstract Landroid/media/midi/MidiReceiver;
.super Ljava/lang/Object;
.source "MidiReceiver.java"


# instance fields
.field private final mMaxMessageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxMessageSize"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->onFlush()V

    .line 70
    return-void
.end method

.method public final getMaxMessageSize()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return v0
.end method

.method public onFlush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public abstract onSend([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send([BII)V
    .locals 6
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 106
    return-void
.end method

.method public send([BIIJ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->getMaxMessageSize()I

    move-result v0

    .line 126
    .local v0, "messageSize":I
    :goto_0
    if-lez p3, :cond_1

    .line 127
    if-le p3, v0, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, p3

    :goto_1
    move v7, v1

    .line 128
    .local v7, "length":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->onSend([BIIJ)V

    .line 129
    add-int/2addr p2, v7

    .line 130
    sub-int/2addr p3, v7

    .line 131
    .end local v7    # "length":I
    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method
