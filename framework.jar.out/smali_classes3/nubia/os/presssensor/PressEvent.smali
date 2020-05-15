.class public Lnubia/os/presssensor/PressEvent;
.super Ljava/lang/Object;
.source "PressEvent.java"


# static fields
.field public static final ACTION_DOWN:I = 0x1

.field public static final ACTION_UP:I = 0x0

.field public static final MASK_DOWN_UP:I = 0x152

.field public static final MASK_LEFT:I = 0x0

.field public static final MASK_RIGHT:I = 0x1


# instance fields
.field private mMask:I

.field private mTimestamp:J

.field private mValue:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "value"    # I
    .param p3, "timestamp"    # J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lnubia/os/presssensor/PressEvent;->mMask:I

    .line 15
    iput p2, p0, Lnubia/os/presssensor/PressEvent;->mValue:I

    .line 16
    iput-wide p3, p0, Lnubia/os/presssensor/PressEvent;->mTimestamp:J

    .line 17
    return-void
.end method

.method public static getDescription(JII)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J
    .param p2, "value"    # I
    .param p3, "mask"    # I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PressEvent { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const/4 v1, 0x1

    const/16 v2, 0x152

    if-ne p3, v2, :cond_1

    .line 40
    const-string v2, "action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    if-ne p2, v1, :cond_0

    const-string v1, "down"

    goto :goto_0

    :cond_0
    const-string v1, "up"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 42
    :cond_1
    if-nez p3, :cond_2

    .line 43
    const-string v1, "left press:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45
    :cond_2
    if-ne p3, v1, :cond_3

    .line 46
    const-string v1, "right press:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_3
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getEventTime()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lnubia/os/presssensor/PressEvent;->mTimestamp:J

    return-wide v0
.end method

.method public getMask()I
    .locals 1

    .line 20
    iget v0, p0, Lnubia/os/presssensor/PressEvent;->mMask:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 24
    iget v0, p0, Lnubia/os/presssensor/PressEvent;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 33
    iget-wide v0, p0, Lnubia/os/presssensor/PressEvent;->mTimestamp:J

    iget v2, p0, Lnubia/os/presssensor/PressEvent;->mValue:I

    iget v3, p0, Lnubia/os/presssensor/PressEvent;->mMask:I

    invoke-static {v0, v1, v2, v3}, Lnubia/os/presssensor/PressEvent;->getDescription(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
