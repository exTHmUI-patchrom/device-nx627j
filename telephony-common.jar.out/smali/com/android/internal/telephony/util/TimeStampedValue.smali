.class public final Lcom/android/internal/telephony/util/TimeStampedValue;
.super Ljava/lang/Object;
.source "TimeStampedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mElapsedRealtime:J

.field public final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .param p2, "elapsedRealtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    .line 39
    iput-wide p2, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 45
    return v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/util/TimeStampedValue;

    .line 53
    .local v2, "that":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<*>;"
    iget-wide v3, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    iget-wide v5, v2, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 54
    return v1

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 48
    .end local v2    # "that":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<*>;"
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 61
    .local p0, "this":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<TT;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "result":I
    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-wide v2, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    iget-wide v4, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 63
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    .local p0, "this":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeStampedValue{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
