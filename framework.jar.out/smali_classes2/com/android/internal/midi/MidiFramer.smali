.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 36
    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 46
    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "text":Ljava/lang/String;
    :goto_0
    if-ge v0, p2, :cond_0

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x%02X, "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int v6, p1, v0

    aget-byte v6, p0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 62
    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v1, :cond_0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 64
    .local v1, "sysExStartOffset":I
    :goto_0
    const/4 v2, 0x0

    move/from16 v9, p2

    move v10, v1

    move v1, v2

    .end local p2    # "offset":I
    .local v1, "i":I
    .local v9, "offset":I
    .local v10, "sysExStartOffset":I
    :goto_1
    move/from16 v11, p3

    if-ge v1, v11, :cond_9

    .line 65
    aget-byte v12, p1, v9

    .line 66
    .local v12, "currentByte":B
    and-int/lit16 v13, v12, 0xff

    .line 67
    .local v13, "currentInt":I
    const/16 v3, 0x80

    const/4 v4, 0x1

    if-lt v13, v3, :cond_6

    .line 68
    const/16 v3, 0xf0

    if-ge v13, v3, :cond_1

    .line 69
    iput-byte v12, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 70
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 71
    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_3

    .line 72
    :cond_1
    const/16 v5, 0xf8

    if-ge v13, v5, :cond_4

    .line 73
    if-ne v13, v3, :cond_2

    .line 75
    iput-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 76
    move v3, v9

    .line 113
    .end local v10    # "sysExStartOffset":I
    .local v3, "sysExStartOffset":I
    :goto_2
    move v10, v3

    goto/16 :goto_3

    .line 77
    .end local v3    # "sysExStartOffset":I
    .restart local v10    # "sysExStartOffset":I
    :cond_2
    const/16 v3, 0xf7

    if-ne v13, v3, :cond_3

    .line 79
    iget-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v3, :cond_8

    .line 80
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v5, v9, v10

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v4, p1

    move v5, v10

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 82
    iput-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 83
    const/4 v3, -0x1

    goto :goto_2

    .line 86
    :cond_3
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v12, v3, v2

    .line 87
    iput-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 89
    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_3

    .line 93
    :cond_4
    iget-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v3, :cond_5

    .line 94
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v6, v9, v10

    move-object/from16 v4, p1

    move v5, v10

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 96
    add-int/lit8 v10, v9, 0x1

    .line 98
    :cond_5
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v6, 0x1

    move-object/from16 v4, p1

    move v5, v9

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    goto :goto_3

    .line 101
    :cond_6
    iget-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v3, :cond_8

    .line 102
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v12, v3, v5

    .line 103
    iget v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v3, :cond_8

    .line 104
    iget-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v3, :cond_7

    .line 105
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget-byte v5, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    aput-byte v5, v3, v2

    .line 107
    :cond_7
    iget-object v14, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/16 v16, 0x0

    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    move-object v15, v3

    move/from16 v17, v5

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v19}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 108
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 109
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 113
    :cond_8
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 64
    .end local v12    # "currentByte":B
    .end local v13    # "currentInt":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 117
    .end local v1    # "i":I
    :cond_9
    if-ltz v10, :cond_a

    if-ge v10, v9, :cond_a

    .line 118
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v6, v9, v10

    move-object/from16 v4, p1

    move v5, v10

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 121
    :cond_a
    return-void
.end method
