.class Lcom/android/internal/os/BinderCallsStats$UidEntry;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidEntry"
.end annotation


# instance fields
.field callCount:J

.field mCallStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;"
        }
    .end annotation
.end field

.field time:J

.field uid:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    .line 261
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    .line 262
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 278
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 279
    return v0

    .line 282
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 283
    .local v1, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidEntry{time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCallStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
