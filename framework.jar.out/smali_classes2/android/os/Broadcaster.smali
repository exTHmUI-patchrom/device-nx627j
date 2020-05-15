.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 179
    .local v0, "senderWhat":I
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 180
    .local v1, "start":Landroid/os/Broadcaster$Registration;
    move-object v2, v1

    .line 182
    .local v2, "r":Landroid/os/Broadcaster$Registration;
    :cond_1
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v3, v0, :cond_2

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    iget-object v3, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v2, v3

    .line 186
    if-ne v2, v1, :cond_1

    .line 187
    :goto_0
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v3, v0, :cond_3

    .line 188
    iget-object v3, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 189
    .local v3, "targets":[Landroid/os/Handler;
    iget-object v4, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 190
    .local v4, "whats":[I
    array-length v5, v3

    .line 191
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 192
    aget-object v7, v3, v6

    .line 193
    .local v7, "target":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 194
    .local v8, "m":Landroid/os/Message;
    invoke-virtual {v8, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 195
    aget v9, v4, v6

    iput v9, v8, Landroid/os/Message;->what:I

    .line 196
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    .end local v7    # "target":Landroid/os/Handler;
    .end local v8    # "m":Landroid/os/Message;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "senderWhat":I
    .end local v1    # "start":Landroid/os/Broadcaster$Registration;
    .end local v2    # "r":Landroid/os/Broadcaster$Registration;
    .end local v3    # "targets":[Landroid/os/Handler;
    .end local v4    # "whats":[I
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_3
    monitor-exit p0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .locals 9
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 103
    .local v0, "start":Landroid/os/Broadcaster$Registration;
    move-object v1, v0

    .line 105
    .local v1, "r":Landroid/os/Broadcaster$Registration;
    if-nez v1, :cond_0

    .line 106
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v2, p1, :cond_1

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v1, v2

    .line 114
    if-ne v1, v0, :cond_0

    .line 116
    :goto_0
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v2, p1, :cond_4

    .line 117
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 118
    .local v2, "targets":[Landroid/os/Handler;
    iget-object v3, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 119
    .local v3, "whats":[I
    array-length v4, v2

    .line 120
    .local v4, "oldLen":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 121
    aget-object v7, v2, v6

    if-ne v7, p2, :cond_3

    aget v7, v3, v6

    if-ne v7, p3, :cond_3

    .line 122
    add-int/lit8 v7, v4, -0x1

    new-array v7, v7, [Landroid/os/Handler;

    iput-object v7, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 123
    add-int/lit8 v7, v4, -0x1

    new-array v7, v7, [I

    iput-object v7, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 124
    if-lez v6, :cond_2

    .line 125
    iget-object v7, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v2, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v7, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v3, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :cond_2
    sub-int v5, v4, v6

    add-int/lit8 v5, v5, -0x1

    .line 130
    .local v5, "remainingLen":I
    if-eqz v5, :cond_4

    .line 131
    add-int/lit8 v7, v6, 0x1

    iget-object v8, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v2, v7, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    add-int/lit8 v7, v6, 0x1

    iget-object v8, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v3, v7, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 120
    .end local v5    # "remainingLen":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "start":Landroid/os/Broadcaster$Registration;
    .end local v1    # "r":Landroid/os/Broadcaster$Registration;
    .end local v2    # "targets":[Landroid/os/Handler;
    .end local v3    # "whats":[I
    .end local v4    # "oldLen":I
    .end local v6    # "i":I
    :cond_4
    :goto_2
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpRegistrations()V
    .locals 7

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 150
    .local v0, "start":Landroid/os/Broadcaster$Registration;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcaster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    if-eqz v0, :cond_2

    .line 152
    move-object v1, v0

    .line 154
    .local v1, "r":Landroid/os/Broadcaster$Registration;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    senderWhat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    .line 156
    .local v2, "n":I
    const/4 v3, 0x0

    .line 156
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 157
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    :cond_1
    iget-object v3, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v1, v3

    .line 161
    .end local v2    # "n":I
    if-ne v1, v0, :cond_0

    .line 163
    .end local v1    # "r":Landroid/os/Broadcaster$Registration;
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    .end local v0    # "start":Landroid/os/Broadcaster$Registration;
    monitor-exit p0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public request(ILandroid/os/Handler;I)V
    .locals 8
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    .line 34
    monitor-enter p0

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "r":Landroid/os/Broadcaster$Registration;
    :try_start_0
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/os/Broadcaster$Registration;

    invoke-direct {v1, p0, v2}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    move-object v0, v1

    .line 38
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 39
    new-array v1, v4, [Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 40
    new-array v1, v4, [I

    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 41
    iget-object v1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v1, v3

    .line 42
    iget-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v1, v3

    .line 43
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 44
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 45
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    goto/16 :goto_3

    .line 48
    :cond_0
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 49
    .local v1, "start":Landroid/os/Broadcaster$Registration;
    move-object v0, v1

    .line 51
    :cond_1
    iget v5, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v5, p1, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    iget-object v5, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v0, v5

    .line 55
    if-ne v0, v1, :cond_1

    .line 57
    :goto_0
    iget v5, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v5, p1, :cond_4

    .line 60
    new-instance v3, Landroid/os/Broadcaster$Registration;

    invoke-direct {v3, p0, v2}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    move-object v2, v3

    .line 61
    .local v2, "reg":Landroid/os/Broadcaster$Registration;
    iput p1, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 62
    new-array v3, v4, [Landroid/os/Handler;

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 63
    new-array v3, v4, [I

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 64
    iput-object v0, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 65
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 66
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v2, v3, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 67
    iput-object v2, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 69
    iget-object v3, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v0, v3, :cond_3

    iget v3, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v4, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le v3, v4, :cond_3

    .line 70
    iput-object v2, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 73
    :cond_3
    move-object v0, v2

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "n":I
    goto :goto_2

    .line 76
    .end local v2    # "n":I
    :cond_4
    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    .line 77
    .restart local v2    # "n":I
    iget-object v4, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 78
    .local v4, "oldTargets":[Landroid/os/Handler;
    iget-object v5, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 80
    .local v5, "oldWhats":[I
    move v6, v3

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_6

    .line 81
    aget-object v7, v4, v6

    if-ne v7, p2, :cond_5

    aget v7, v5, v6

    if-ne v7, p3, :cond_5

    .line 82
    monitor-exit p0

    return-void

    .line 80
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    .end local v6    # "i":I
    :cond_6
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 86
    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v4, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 88
    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v5, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .end local v4    # "oldTargets":[Landroid/os/Handler;
    .end local v5    # "oldWhats":[I
    :goto_2
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v3, v2

    .line 91
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v3, v2

    .line 93
    .end local v0    # "r":Landroid/os/Broadcaster$Registration;
    .end local v1    # "start":Landroid/os/Broadcaster$Registration;
    .end local v2    # "n":I
    :goto_3
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
