.class public Lcom/android/internal/midi/MidiEventScheduler;
.super Lcom/android/internal/midi/EventScheduler;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;,
        Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;
    }
.end annotation


# static fields
.field private static final POOL_EVENT_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    .line 31
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/midi/MidiEventScheduler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler;->createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-result-object v0

    return-object v0
.end method

.method private createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .line 85
    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V

    .local v0, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    goto :goto_1

    .line 88
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/midi/MidiEventScheduler;->removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 89
    .local v1, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez v1, :cond_1

    .line 90
    new-instance v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V

    move-object v0, v2

    .end local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    goto :goto_0

    .line 92
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .restart local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_1
    move-object v0, v1

    .end local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 93
    iput p3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 94
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->setTimestamp(J)V

    .line 96
    :goto_1
    return-object v0
.end method


# virtual methods
.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 107
    instance-of v0, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 109
    .local v0, "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 113
    .end local v0    # "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    return-void
.end method

.method public getReceiver()Landroid/media/midi/MidiReceiver;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-object v0
.end method
