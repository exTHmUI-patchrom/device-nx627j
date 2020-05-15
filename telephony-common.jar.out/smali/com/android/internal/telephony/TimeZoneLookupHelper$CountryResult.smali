.class public final Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TimeZoneLookupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountryResult"
.end annotation


# instance fields
.field public final allZonesHaveSameOffset:Z

.field public final whenMillis:J

.field public final zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "allZonesHaveSameOffset"    # Z
    .param p3, "whenMillis"    # J

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    .line 100
    iput-boolean p2, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    .line 101
    iput-wide p3, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 106
    if-ne p0, p1, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    .line 115
    .local v1, "that":Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
    iget-boolean v2, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    iget-boolean v3, v1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    if-eq v2, v3, :cond_2

    .line 116
    return v0

    .line 118
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    iget-wide v4, v1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 119
    return v0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    .end local v1    # "that":Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 127
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    add-int/2addr v2, v3

    .line 128
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-wide v3, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    iget-wide v5, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 129
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryResult{zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", allZonesHaveSameOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whenMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
